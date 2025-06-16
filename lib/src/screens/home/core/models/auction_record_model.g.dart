// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auction_record_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuctionRecordModel _$AuctionRecordModelFromJson(Map<String, dynamic> json) =>
    _AuctionRecordModel(
      assetDescription: json['assetDescription'] as String?,
      imageUrl: json['imageUrl'] as String?,
      locationCountry: json['locationCountry'] as String?,
      locationState: json['locationState'] as String?,
      locationCity: json['locationCity'] as String?,
      eventAdvertisedName: json['eventAdvertisedName'] as String?,
      eventStartDateTime: dateTimeFromEpoch(json['eventStartDateTime']),
    );

Map<String, dynamic> _$AuctionRecordModelToJson(_AuctionRecordModel instance) =>
    <String, dynamic>{
      'assetDescription': instance.assetDescription,
      'imageUrl': instance.imageUrl,
      'locationCountry': instance.locationCountry,
      'locationState': instance.locationState,
      'locationCity': instance.locationCity,
      'eventAdvertisedName': instance.eventAdvertisedName,
      'eventStartDateTime': instance.eventStartDateTime?.toIso8601String(),
    };
