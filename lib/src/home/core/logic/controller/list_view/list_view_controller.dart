import 'dart:async';

import 'package:flutter_excercise/src/home/core/logic/service/list_view_service.dart';
import 'package:flutter_excercise/src/home/core/models/auction_record_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewController extends AsyncNotifier<List<AuctionRecordModel>> {
  @override
  Future<List<AuctionRecordModel>> build() async {
    List<AuctionRecordModel> listingList = await getListingExcerpts();

    return listingList;
  }

  Future<List<AuctionRecordModel>> getListingExcerpts({
    int? from,
    int? size,
  }) async {
    try {
      final listingData = await ref
          .read(listViewServicesProvider.notifier)
          .getListingExcerptsService(
            from: from,
            size: size,
          );

      final rawList = listingData.data?["records"];
      if (rawList == null || rawList is! List) {
        return [];
      }

      final records = rawList
          .map((e) {
            if (e is Map<String, dynamic>) {
              return AuctionRecordModel.fromJson(e);
            } else {
              return null;
            }
          })
          .whereType<AuctionRecordModel>()
          .toList();

      return records;
    } catch (error, _) {
      return [];
    }
  }

  Future<void> refreshListingFetch() async {
    state = const AsyncLoading();

    state = await AsyncValue.guard(
      () => getListingExcerpts(),
    );
  }
}

final listViewControllerProvider =
    AsyncNotifierProvider<ListViewController, List<AuctionRecordModel>>(() {
  return ListViewController();
});
