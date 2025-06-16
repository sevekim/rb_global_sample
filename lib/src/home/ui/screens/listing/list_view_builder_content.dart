import 'package:flutter/material.dart';
import 'package:flutter_excercise/src/home/core/logic/controller/list_view_indicator/list_view_builder_indicator_controller.dart';
import 'package:flutter_excercise/src/home/ui/screens/listing/list_view_builder_single_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewListBuilderContent extends ConsumerWidget {
  const ListViewListBuilderContent({
    super.key,
    required this.listingList,
    required this.initialIndicatorStatus,
  });

  final List listingList;
  final IndicatorStatus initialIndicatorStatus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      shrinkWrap: true,
      controller: PrimaryScrollController.of(context),
      itemCount: listingList.length,
      itemBuilder: (context, index) {
        return SingleListView(
          index: index,
          listingList: listingList,
          initialIndicatorStatus: initialIndicatorStatus,
        );
      },
    );
  }
}
