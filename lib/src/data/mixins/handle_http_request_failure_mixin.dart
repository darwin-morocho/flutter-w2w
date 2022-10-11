import 'dart:io';

import '../../core/http_client.dart';
import '../../domain/failures/http_request/http_request_failure.dart';

mixin HttpRequestFailureMixin {
  HttpRequestFailure handleHttpRequestFailure<L, R>(Result result) {
    final statusCode = result.statusCode;
    if (statusCode != null) {
      if (statusCode == 404) {
        return const NotFoundFailure();
      }
      if (statusCode == 401) {
        return const UnauthorizedFailure();
      }

      if (statusCode >= 400 && statusCode < 500) {
        return const BadRequestFailure();
      }

      if (statusCode >= 500) {
        return const ServerSideFailure();
      }

      return const NetworkFailure();
    }

    if (result.exception is SocketException) {
      return const NetworkFailure();
    }

    return const UnhandledFailure();
  }
}
