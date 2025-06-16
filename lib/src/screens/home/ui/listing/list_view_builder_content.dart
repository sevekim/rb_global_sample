import 'package:flutter/material.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_builder/list_view_builder_controller.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_indicator/list_view_builder_indicator_controller.dart';
import 'package:flutter_excercise/src/screens/home/ui/listing/list_view_builder_single_item.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewListBuilderContent extends ConsumerWidget {
  const ListViewListBuilderContent({
    super.key,
    required this.initialIndicatorStatus,
  });

  final IndicatorStatus initialIndicatorStatus;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final listingList = ref.read(listingViewBuilderControllerProvider).items;

    return ListView.builder(
      shrinkWrap: true,
      controller: PrimaryScrollController.of(context),
      itemCount: listingList.length,
      itemBuilder: (context, index) {
        return SingleListView(
          index: index,
          initialIndicatorStatus: initialIndicatorStatus,
        );
      },
    );
  }
}
