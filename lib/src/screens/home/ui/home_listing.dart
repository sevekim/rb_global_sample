import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/exceptions/errors/error_screen/error_screen.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_builder/list_view_builder_controller.dart';
import 'package:flutter_excercise/src/widgets/common_screen/error_screen/common_error_screen_with_warning.dart';
import 'package:flutter_excercise/src/widgets/common_widget/loading_widget/common_loading_circle.dart';
import 'package:flutter_excercise/src/widgets/common_widget/structure_widget/common_scaffold.dart';
import 'package:flutter_excercise/src/screens/home/ui/listing/list_view_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreenListingView extends ConsumerWidget {
  const HomeScreenListingView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(listingViewBuilderControllerProvider);

    return RefreshIndicator(
      onRefresh: () async {
        ref.read(listingViewBuilderControllerProvider.notifier).refresh();
      },
      child: Builder(
        builder: (_) {
          if (state.errorMessage != null) {
            final errorMessage = ErrorScreen.displayMessage(
              errorObject: state.errorMessage,
            );
            return CommonErrorScreenWithWarning(
              errorMessage: errorMessage,
            );
          }

          if (state.items.isEmpty && state.isFetching) {
            return const CommonScaffoldStructure(
              child: CommonLoadingCircle(),
            );
          }

          if (state.items.isEmpty) {
            final errorMessage = ErrorScreen.displayMessage(
              errorCode: 'no_current_listing_data',
            );
            return CommonErrorScreenWithWarning(
              errorMessage: errorMessage,
            );
          }

          return ListingViewBuilder();
        },
      ),
    );
  }
}
