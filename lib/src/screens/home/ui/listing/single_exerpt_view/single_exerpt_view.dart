import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/style/padding_style/bottom_paddings.dart';
import 'package:flutter_excercise/core/style/padding_style/top_paddings.dart';
import 'package:flutter_excercise/src/widgets/common_widget/image_widget/common_circle_avatar_image_widget.dart';
import 'package:flutter_excercise/src/screens/home/core/models/auction_record_model.dart';
import 'package:intl/intl.dart';

class ListViewSingleListingItem extends StatelessWidget {
  const ListViewSingleListingItem({
    super.key,
    required this.listingExcerpts,
  });

  final AuctionRecordModel listingExcerpts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: commonTopPadding8,
      child: Card(
        child: ListTile(
          leading: CommonCircleAvatarImageWidget(
            imageURL: listingExcerpts.imageUrl,
          ),
          title: Padding(
            padding: commonBottomPadding8,
            child: Text(
              listingExcerpts.assetDescription ?? "",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontWeight: FontWeight.w700,
                  ),
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                listingExcerpts.formattedLocation,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                listingExcerpts.eventAdvertisedName ?? "",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                listingExcerpts.eventStartDateTime != null
                    ? DateFormat.yMMMd().add_jm().format(
                          listingExcerpts.eventStartDateTime!.toLocal(),
                        )
                    : '',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
