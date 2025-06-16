import 'dart:io';
import 'package:dio/dio.dart';

class DioSetting {
  static Dio dioInstance() {
    BaseOptions options = BaseOptions(
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 100),
      baseUrl: 'https://api.marketplace.ritchiebros.com/',
    );

    return Dio(options);
  }

  Options httpHeader() {
    return Options(
      headers: {
        HttpHeaders.acceptHeader: 'application/json',
      },
    );
  }
}
