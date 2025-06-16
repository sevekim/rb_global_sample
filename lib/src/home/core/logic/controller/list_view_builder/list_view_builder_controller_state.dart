import 'package:flutter_excercise/src/home/core/models/auction_record_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_view_builder_controller_state.freezed.dart';

@freezed
abstract class ListViewBuilderControllerState
    with _$ListViewBuilderControllerState {
  const factory ListViewBuilderControllerState({
    @Default(<AuctionRecordModel>[]) List<AuctionRecordModel> items,
    @Default(0) int listingCountsWhileInFetch,
    @Default(false) bool isFetching,
    @Default(true) bool hasMoreListings,
  }) = _ListViewBuilderControllerState;
}
