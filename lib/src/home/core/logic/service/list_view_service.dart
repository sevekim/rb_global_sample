import 'package:dio/dio.dart';
import 'package:flutter_excercise/src/home/core/logic/respository/list_view_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewServices extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<Response> getListingExcerptsService({
    int? from,
    int? size,
  }) async {
    final listViewProvider = ref.read(listViewRepositoryProvider.notifier);

    Map<String, dynamic> parameter = {
      "from": from ?? 0,
      "size": size ?? 20,
    };

    Response listings = await listViewProvider.getListings(
      params: parameter,
    );

    return listings;
  }
}

final listViewServicesProvider =
    AsyncNotifierProvider<ListViewServices, void>(() {
  return ListViewServices();
});
