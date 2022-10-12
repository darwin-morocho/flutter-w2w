import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

import 'env.dart';

class HttpClient {
  HttpClient({
    this.baseUrl = '',
    Client? client,
  }) : _client = client ?? Client();
  final String baseUrl;
  late final Client _client;

  Future<HttpResult<T>> request<T>(
    String path, {
    String method = 'GET',
    bool useApiKey = true,
    String contentType = 'application/json',
    String? language,
    Map<String, String> headers = const {},
    Map<String, String> queryParameters = const {},
    Map<String, dynamic> body = const {},
    T Function(int satusCode, dynamic data)? parser,
  }) async {
    late Uri uri;
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

      uri = uri.replace(
        queryParameters: {
          if (useApiKey) 'api_key': Env.apiKey,
          if (language != null) 'language': language,
          ...uri.queryParameters,
          if (queryParameters.isNotEmpty) ...queryParameters,
        },
      );

      late final Response response;
      switch (method) {
        case 'GET':
        case 'get':
          response = await _client.get(uri, headers: headers);
          break;
        case 'POST':
        case 'post':
          response = await _client.post(
            uri,
            headers: headers,
            body: jsonEncode(body),
          );
          break;
        case 'PUT':
        case 'put':
          response = await _client.put(
            uri,
            headers: headers,
            body: jsonEncode(body),
          );
          break;
        case 'PATCH':
        case 'patch':
          response = await _client.patch(
            uri,
            headers: headers,
            body: jsonEncode(body),
          );
          break;
        case 'DELETE':
        case 'delete':
          response = await _client.delete(
            uri,
            headers: headers,
            body: jsonEncode(body),
          );
          break;
      }

      statusCode = response.statusCode;

      if (statusCode >= 200 && statusCode <= 300) {
        final decodedBytes = decodeBytes(response.body);

        if (kDebugMode) {
          print(uri);
        }

        if (parser != null) {
          return HttpResult(
            statusCode: statusCode,
            data: parser(statusCode, decodedBytes),
          );
        }
        return HttpResult(
          statusCode: statusCode,
          data: decodedBytes,
        );
      }

      throw Exception(response.body);
    } catch (e, s) {
      if (kDebugMode) {
        print(e);
        print(s);
        print(statusCode);
      }
      return HttpResult(
        statusCode: statusCode,
        failure: HttpFailure(
          exception: e,
          stackTrace: s,
        ),
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

class HttpResult<T> {
  HttpResult({
    required this.statusCode,
    this.data,
    this.failure,
  });

  final int? statusCode;
  T? data;
  HttpFailure? failure;
}

class HttpFailure {
  HttpFailure({
    this.data,
    this.exception,
    required this.stackTrace,
  });

  final Object? data;
  final Object? exception;
  final StackTrace stackTrace;
}
