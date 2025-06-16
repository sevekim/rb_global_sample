import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_excercise/core/utils/dio_setting.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewRepository extends AutoDisposeNotifier<void> {
  final Dio _dio;

  ListViewRepository(this._dio);

  DioSetting dioSetting = DioSetting();

  @override
  FutureOr build() {
    return null;
  }

  Future<Response> getListings({
    Map<String, dynamic>? params,
  }) async {
    try {
      Response response = await _dio.post(
        'marketplace-listings-service/v1/api/search?',
        options: dioSetting.httpHeader(),
        data: params,
      );

      return response;
    } catch (e) {
      throw Exception();
    }
  }
}

final listViewRepositoryProvider =
    AutoDisposeNotifierProvider<ListViewRepository, void>(() {
  Dio dio = DioSetting.dioInstance();

  return ListViewRepository(dio);
});
