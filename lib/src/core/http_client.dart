import 'dart:convert';

import 'package:http/http.dart';
import 'package:what_to_watch/src/core/env.dart';

class HttpClient {
  final String baseUrl;
  late final Client _client;

  HttpClient({
    this.baseUrl = '',
    Client? client,
  }) : _client = client ?? Client();

  Future<Result<T>> request<T>(
    String path, {
    String method = 'GET',
    bool useApiKey = true,
    String contentType = 'application/json',
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
    T Function(int satusCode, dynamic data)? parser,
  }) async {
    late Uri uri;
    late final Request request;
    int? statusCode;
    try {
      if (path.startsWith('http://') || path.startsWith('https://')) {
        uri = Uri.parse(path);
      } else {
        if (!path.startsWith('/')) {
          path = '/$path';
        }
        uri = Uri.parse('$baseUrl$path');
      }

      if (useApiKey) {
        uri.queryParameters['api_key'] = Env.apiKey;
      }

      if (queryParameters.isNotEmpty) {
        uri.queryParameters.addAll(queryParameters);
      }

      request = Request(method, uri);
      request.headers['Content-type'] = contentType;
      request.headers['charset'] = 'utf-8';
      request.headers.addAll(headers);
      request.body = jsonEncode(body);

      final streamedResponse = await _client.send(request);
      statusCode = streamedResponse.statusCode;

      final response = Response.bytes(
        await streamedResponse.stream.toBytes(),
        streamedResponse.statusCode,
      );

      final decodedBytes = decodeBytes(response.body);

      if (parser != null) {
        return Result<T>(
          statusCode: statusCode,
          data: parser(statusCode, decodedBytes),
        );
      }
      return Result<T>(
        statusCode: statusCode,
        data: decodedBytes,
      );
    } catch (e) {
      return Result(
        statusCode: statusCode,
        exception: e,
      );
    }
  }
}

dynamic decodeBytes(String body) {
  try {
    return json.decode(body);
  } catch (_) {
    return body;
  }
}

class Result<T> {
  final int? statusCode;
  final T? data;
  final Object? exception;

  Result({
    required this.statusCode,
    this.data,
    this.exception,
  });
}
