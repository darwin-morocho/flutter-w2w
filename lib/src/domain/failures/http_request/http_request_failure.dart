import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_request_failure.freezed.dart';

@freezed
class HttpRequestFailure with _$HttpRequestFailure {
  const factory HttpRequestFailure.network() = NetworkFailure;
  const factory HttpRequestFailure.notFound() = NotFoundFailure;
  const factory HttpRequestFailure.badRequest() = BadRequestFailure;
  const factory HttpRequestFailure.unauthorized() = UnauthorizedFailure;
  const factory HttpRequestFailure.serverSide() = ServerSideFailure;
  const factory HttpRequestFailure.unhandled() = UnhandledFailure;
}
