// ignore_for_file: invalid_annotation_target

import 'package:flutter_excercise/core/utils/date_time.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auction_record_model.freezed.dart';
part 'auction_record_model.g.dart';

@freezed
abstract class AuctionRecordModel with _$AuctionRecordModel {
  const factory AuctionRecordModel({
    String? assetDescription,
    String? imageUrl,
    String? locationCountry,
    String? locationState,
    String? locationCity,
    String? eventAdvertisedName,
    @JsonKey(
      fromJson: dateTimeFromEpoch,
    )
    DateTime? eventStartDateTime,
  }) = _AuctionRecordModel;

  factory AuctionRecordModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionRecordModelFromJson(json);
}

extension AuctionRecordFormatting on AuctionRecordModel {
  String get formattedLocation {
    final city = locationCity ?? '';
    final state = locationState ?? '';
    final country = locationCountry ?? '';

    if (country.toUpperCase() == 'USA' ||
        country.toUpperCase() == 'UNITED STATES') {
      return [city, state, country].where((s) => s.isNotEmpty).join(', ');
    }

    return [city, country].where((s) => s.isNotEmpty).join(', ');
  }
}
