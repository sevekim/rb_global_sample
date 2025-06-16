import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/exceptions/errors/error_screen/error_screen.dart';
import 'package:flutter_excercise/src/widgets/common_screen/error_screen/common_error_screen_with_warning.dart';
import 'package:flutter_excercise/src/widgets/common_widget/loading_widget/common_loading_circle.dart';
import 'package:flutter_excercise/src/widgets/common_widget/structure_widget/common_scaffold.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view/list_view_controller.dart';
import 'package:flutter_excercise/src/screens/home/core/models/auction_record_model.dart';
import 'package:flutter_excercise/src/screens/home/ui/listing/list_view_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenListingView extends ConsumerWidget {
  const HomeScreenListingView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = ref.watch(listViewControllerProvider);

    return RefreshIndicator(
      onRefresh: () async {
        ref.read(listViewControllerProvider.notifier).refreshListingFetch();
      },
      child: Container(
        child: provider.when(
          error: (error, st) {
            Map<String, dynamic> errorMessage = ErrorScreen.displayMessage(
              errorObject: error,
            );

            return CommonErrorScreenWithWarning(
              errorMessage: errorMessage,
            );
          },
          loading: () => const CommonScaffoldStructure(
            child: CommonLoadingCircle(),
          ),
          data: (List<AuctionRecordModel> listingData) {
            if (listingData.isEmpty) {
              Map<String, dynamic> errorMessage = ErrorScreen.displayMessage(
                errorCode: 'no_current_listing_data',
              );

              return CommonErrorScreenWithWarning(
                errorMessage: errorMessage,
              );
            } else {
              return ListingViewBuilder(
                listingData: listingData,
              );
            }
          },
        ),
      ),
    );
  }
}
