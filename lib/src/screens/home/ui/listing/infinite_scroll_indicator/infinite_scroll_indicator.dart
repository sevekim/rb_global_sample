import 'package:flutter/material.dart';
import 'package:flutter_excercise/core/style/padding_style/bottom_paddings.dart';
import 'package:flutter_excercise/core/exceptions/errors/error_screen/error_screen.dart';
import 'package:flutter_excercise/src/widgets/common_screen/error_screen/common_error_screen_with_warning.dart';
import 'package:flutter_excercise/src/screens/home/core/logic/controller/list_view_indicator/list_view_builder_indicator_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ListViewListBuilderIndicator extends ConsumerWidget {
  final IndicatorStatus initialStatus;
  const ListViewListBuilderIndicator({
    super.key,
    required this.initialStatus,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indicator = ref.watch(
      listViewBuilderIndicatorControllerProvider(initialStatus),
    );

    return Container(
      padding: commonBottomPadding35,
      child: indicator == IndicatorStatus.loading
          ? const Padding(
              padding: EdgeInsets.all(16.0),
              child: CircularProgressIndicator(),
            )
          : indicator == IndicatorStatus.error
              //Error
              ? CommonErrorScreenWithWarning(
                  errorMessage: ErrorScreen.displayMessage(
                    errorObject: "general_error",
                  ),
                )
              //No more listings
              : indicator == IndicatorStatus.noMore
                  ? CommonErrorScreenWithWarning(
                      errorMessage: ErrorScreen.displayMessage(
                        errorObject: "no_current_listing_data",
                      ),
                    )
                  //No indicator
                  : Container(),
    );
  }
}
