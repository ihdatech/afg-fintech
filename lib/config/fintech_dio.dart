import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class FintechDio with DioMixin implements Dio {
  FintechDio._([BaseOptions? options]) {
    options = BaseOptions(
      baseUrl: 'https://test-api.afg-indo.com',
      contentType: 'application/json; charset=utf-8',
      connectTimeout: 60000,
      sendTimeout: 60000,
      receiveTimeout: 60000,
    );

    this.options = options;
    if (kDebugMode) {
      interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
        ),
      );
    }

    httpClientAdapter = DefaultHttpClientAdapter();
  }

  static Dio get instance => FintechDio._();
}
