import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/constants/style/padding_style/horizontal_padding.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_builder/list_view_builder_controller.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_indicator/list_view_builder_indicator_controller.dart';
import 'package:flutter_excercise/src/screens/home/ui/listing/list_view_builder_content.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListingViewBuilder extends ConsumerWidget {
  const ListingViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingData = ref.read(listingViewBuilderControllerProvider).items;

    IndicatorStatus initialIndicatorStatus = IndicatorStatus.loading;

    //No more listing available
    if (listingData.length < 20) {
      initialIndicatorStatus = IndicatorStatus.noMore;
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (listingData.length > 19) {
          ref
              .read(listingViewBuilderControllerProvider.notifier)
              .checkOnScrollInList(scrollInfo: scrollInfo);
        }

        return false;
      },
      child: Container(
        padding: commonHorizontalPadding16,
        child: ListViewListBuilderContent(
          initialIndicatorStatus: initialIndicatorStatus,
        ),
      ),
    );
  }
}
