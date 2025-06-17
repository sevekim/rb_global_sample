import 'package:flutter/material.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_builder/list_view_builder_controller_state.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_indicator/list_view_builder_indicator_controller.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/service/list_view_service.dart';
import 'package:flutter_excercise/src/screens/home/core/models/auction_record_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListingViewBuilderController
    extends AutoDisposeNotifier<ListViewBuilderControllerState> {
  @override
  ListViewBuilderControllerState build() {
    Future.microtask(_loadInitial);
    return const ListViewBuilderControllerState();
  }

  Future<void> _loadInitial() async {
    state = state.copyWith(
      isFetching: true,
      errorMessage: null,
      items: [],
    );
    try {
      final list = await _fetchRecords(from: 0, size: 20);
      final moreLeft = list.length >= 20;
      state = state.copyWith(
        items: list,
        isFetching: false,
        hasMore: moreLeft,
        listingCountsWhileInFetch: 0,
      );
      if (!moreLeft) {
        ref
            .read(
              listViewBuilderIndicatorControllerProvider(
                IndicatorStatus.noMore,
              ).notifier,
            )
            .updateIndicatorStatus(IndicatorStatus.noMore);
      }
    } catch (e) {
      state = state.copyWith(
        isFetching: false,
        errorMessage: e.toString(),
      );
      ref
          .read(listViewBuilderIndicatorControllerProvider(
            IndicatorStatus.error,
          ).notifier)
          .updateIndicatorStatus(IndicatorStatus.error);
    }
  }

  Future<void> refresh() => _loadInitial();

  Future<void> checkOnScrollInList({
    required ScrollNotification scrollInfo,
  }) async {
    final s = state;
    if (s.isFetching ||
        !s.hasMore ||
        s.listingCountsWhileInFetch == s.items.length) {
      return;
    }

    const threshold = 2500.0;
    final maxScroll = scrollInfo.metrics.maxScrollExtent;
    final currScroll = scrollInfo.metrics.pixels;
    if ((maxScroll - currScroll) > threshold) return;

    await loadMore();
  }

  Future<void> loadMore() async {
    if (state.isFetching || !state.hasMore) return;
    state = state.copyWith(
      isFetching: true,
      listingCountsWhileInFetch: state.items.length,
    );
    final indicator = ref.read(
      listViewBuilderIndicatorControllerProvider(
        IndicatorStatus.noMore,
      ).notifier,
    );
    try {
      final extra = await _fetchRecords(
        from: state.items.length,
        size: 20,
      );

      final all = [...state.items, ...extra];

      final moreLeft = extra.length >= 20;

      state = state.copyWith(
        items: all,
        isFetching: false,
        hasMore: moreLeft,
      );

      if (!moreLeft) {
        indicator.updateIndicatorStatus(IndicatorStatus.noMore);
      }
    } catch (_) {
      state = state.copyWith(isFetching: false);
      indicator.updateIndicatorStatus(IndicatorStatus.error);
    }
  }

  Future<List<AuctionRecordModel>> _fetchRecords({
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
      final raw = listingData.data?['records'];

      if (raw is! List) return [];

      return raw
          .map((e) =>
              e is Map<String, dynamic> ? AuctionRecordModel.fromJson(e) : null)
          .whereType<AuctionRecordModel>()
          .toList();
    } catch (_) {
      return [];
    }
  }
}

final listingViewBuilderControllerProvider = AutoDisposeNotifierProvider<
    ListingViewBuilderController, ListViewBuilderControllerState>(
  () => ListingViewBuilderController(),
);
