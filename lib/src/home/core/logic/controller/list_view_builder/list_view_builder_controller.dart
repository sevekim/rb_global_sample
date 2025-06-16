import 'package:flutter/material.dart';
import 'package:flutter_excercise/src/home/core/logic/controller/list_view_builder/list_view_builder_controller_state.dart';
import 'package:flutter_excercise/src/home/core/logic/controller/list_view/list_view_controller.dart';
import 'package:flutter_excercise/src/home/core/models/auction_record_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../list_view_indicator/list_view_builder_indicator_controller.dart';

class ListViewBuilderController extends AutoDisposeFamilyNotifier<
    ListViewBuilderControllerState, List<AuctionRecordModel>?> {
  @override
  ListViewBuilderControllerState build(List<AuctionRecordModel>? initialData) {
    return ListViewBuilderControllerState(items: initialData ?? []);
  }

  Future<void> checkOnScrollInList({
    required ScrollNotification scrollInfo,
  }) async {
    final s = state;
    if (s.isFetching ||
        !s.hasMoreListings ||
        s.listingCountsWhileInFetch == s.items.length) {
      return;
    }

    const threshold = 2500.0;
    final maxScroll = scrollInfo.metrics.maxScrollExtent;
    final currScroll = scrollInfo.metrics.pixels;
    if ((maxScroll - currScroll) > threshold) return;

    await triggerMoreListingFetch();
  }

  Future<void> triggerMoreListingFetch() async {
    // set fetching = true, record current count
    state = state.copyWith(
      isFetching: true,
      listingCountsWhileInFetch: state.items.length,
    );

    final indicator = ref.read(
      listViewBuilderIndicatorControllerProvider(IndicatorStatus.loading)
          .notifier,
    );
    try {
      final extra = await ref
          .read(listViewControllerProvider.notifier)
          .getListingExcerpts(
            from: state.items.length,
            size: 20,
          );

      final allItems = [...state.items, ...extra.cast<AuctionRecordModel>()];
      final moreLeft = extra.length >= 20;

      state = state.copyWith(
        items: allItems,
        isFetching: false,
        hasMoreListings: moreLeft,
      );

      if (!moreLeft) {
        indicator.updateIndicatorStatus(IndicatorStatus.noMore);
      }
    } catch (_) {
      state = state.copyWith(isFetching: false);
      indicator.updateIndicatorStatus(IndicatorStatus.error);
    }
  }
}

final listViewBuilderControllerProvider = AutoDisposeNotifierProvider.family<
    ListViewBuilderController,
    ListViewBuilderControllerState,
    List<AuctionRecordModel>?>(
  () => ListViewBuilderController(),
);
