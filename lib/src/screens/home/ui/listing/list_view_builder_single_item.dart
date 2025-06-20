import 'package:flutter/material.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_indicator/list_view_builder_indicator_controller.dart';
import 'package:flutter_excercise/src/screens/home/ui/listing/infinite_scroll_indicator/infinite_scroll_indicator.dart';
import 'package:flutter_excercise/src/screens/home/ui/listing/single_exerpt_view/single_exerpt_view.dart';

class SingleListView extends StatelessWidget {
  const SingleListView({
    super.key,
    required this.listingList,
    required this.initialIndicatorStatus,
    required this.index,
  });

  final List listingList;
  final IndicatorStatus initialIndicatorStatus;
  final int index;

  @override
  Widget build(BuildContext context) {
    Widget singleListing = ListViewSingleListingItem(
      listingExcerpts: listingList[index],
    );

    return index == listingList.length - 1
        ? Column(
            children: [
              Container(
                child: singleListing,
              ),
              ListViewListBuilderIndicator(
                initialStatus: initialIndicatorStatus,
              ),
            ],
          )
        : singleListing;
  }
}
