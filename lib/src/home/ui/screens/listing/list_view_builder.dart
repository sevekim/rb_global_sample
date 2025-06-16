import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/constants/style/padding_style/horizontal_padding.dart';
import 'package:flutter_excercise/src/home/core/logic/controller/list_view_builder/list_view_builder_controller.dart';
import 'package:flutter_excercise/src/home/core/logic/controller/list_view_indicator/list_view_builder_indicator_controller.dart';
import 'package:flutter_excercise/src/home/core/models/auction_record_model.dart';
import 'package:flutter_excercise/src/home/ui/screens/listing/list_view_builder_content.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListingViewBuilder extends ConsumerWidget {
  final List<AuctionRecordModel> listingData;
  const ListingViewBuilder({
    super.key,
    required this.listingData,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingList = ref.watch(
      listViewBuilderControllerProvider(listingData),
    );

    IndicatorStatus initialIndicatorStatus = IndicatorStatus.loading;

    //No more listing available
    if (listingData.length < 20) {
      initialIndicatorStatus = IndicatorStatus.noMore;
    }

    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (listingData.length > 19) {
          ref
              .read(listViewBuilderControllerProvider(listingData).notifier)
              .checkOnScrollInList(scrollInfo: scrollInfo);
        }

        return false;
      },
      child: Container(
        padding: commonHorizontalPadding16,
        child: ListViewListBuilderContent(
          listingList: listingList.items,
          initialIndicatorStatus: initialIndicatorStatus,
        ),
      ),
    );
  }
}
