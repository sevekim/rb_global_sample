// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auction_record_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuctionRecordModel {
  String? get assetDescription;
  String? get imageUrl;
  String? get locationCountry;
  String? get locationState;
  String? get locationCity;
  String? get eventAdvertisedName;
  @JsonKey(fromJson: dateTimeFromEpoch)
  DateTime? get eventStartDateTime;

  /// Create a copy of AuctionRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AuctionRecordModelCopyWith<AuctionRecordModel> get copyWith =>
      _$AuctionRecordModelCopyWithImpl<AuctionRecordModel>(
          this as AuctionRecordModel, _$identity);

  /// Serializes this AuctionRecordModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AuctionRecordModel &&
            (identical(other.assetDescription, assetDescription) ||
                other.assetDescription == assetDescription) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.locationCountry, locationCountry) ||
                other.locationCountry == locationCountry) &&
            (identical(other.locationState, locationState) ||
                other.locationState == locationState) &&
            (identical(other.locationCity, locationCity) ||
                other.locationCity == locationCity) &&
            (identical(other.eventAdvertisedName, eventAdvertisedName) ||
                other.eventAdvertisedName == eventAdvertisedName) &&
            (identical(other.eventStartDateTime, eventStartDateTime) ||
                other.eventStartDateTime == eventStartDateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      assetDescription,
      imageUrl,
      locationCountry,
      locationState,
      locationCity,
      eventAdvertisedName,
      eventStartDateTime);

  @override
  String toString() {
    return 'AuctionRecordModel(assetDescription: $assetDescription, imageUrl: $imageUrl, locationCountry: $locationCountry, locationState: $locationState, locationCity: $locationCity, eventAdvertisedName: $eventAdvertisedName, eventStartDateTime: $eventStartDateTime)';
  }
}

/// @nodoc
abstract mixin class $AuctionRecordModelCopyWith<$Res> {
  factory $AuctionRecordModelCopyWith(
          AuctionRecordModel value, $Res Function(AuctionRecordModel) _then) =
      _$AuctionRecordModelCopyWithImpl;
  @useResult
  $Res call(
      {String? assetDescription,
      String? imageUrl,
      String? locationCountry,
      String? locationState,
      String? locationCity,
      String? eventAdvertisedName,
      @JsonKey(fromJson: dateTimeFromEpoch) DateTime? eventStartDateTime});
}

/// @nodoc
class _$AuctionRecordModelCopyWithImpl<$Res>
    implements $AuctionRecordModelCopyWith<$Res> {
  _$AuctionRecordModelCopyWithImpl(this._self, this._then);

  final AuctionRecordModel _self;
  final $Res Function(AuctionRecordModel) _then;

  /// Create a copy of AuctionRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assetDescription = freezed,
    Object? imageUrl = freezed,
    Object? locationCountry = freezed,
    Object? locationState = freezed,
    Object? locationCity = freezed,
    Object? eventAdvertisedName = freezed,
    Object? eventStartDateTime = freezed,
  }) {
    return _then(_self.copyWith(
      assetDescription: freezed == assetDescription
          ? _self.assetDescription
          : assetDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locationCountry: freezed == locationCountry
          ? _self.locationCountry
          : locationCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      locationState: freezed == locationState
          ? _self.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as String?,
      locationCity: freezed == locationCity
          ? _self.locationCity
          : locationCity // ignore: cast_nullable_to_non_nullable
              as String?,
      eventAdvertisedName: freezed == eventAdvertisedName
          ? _self.eventAdvertisedName
          : eventAdvertisedName // ignore: cast_nullable_to_non_nullable
              as String?,
      eventStartDateTime: freezed == eventStartDateTime
          ? _self.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AuctionRecordModel implements AuctionRecordModel {
  const _AuctionRecordModel(
      {this.assetDescription,
      this.imageUrl,
      this.locationCountry,
      this.locationState,
      this.locationCity,
      this.eventAdvertisedName,
      @JsonKey(fromJson: dateTimeFromEpoch) this.eventStartDateTime});
  factory _AuctionRecordModel.fromJson(Map<String, dynamic> json) =>
      _$AuctionRecordModelFromJson(json);

  @override
  final String? assetDescription;
  @override
  final String? imageUrl;
  @override
  final String? locationCountry;
  @override
  final String? locationState;
  @override
  final String? locationCity;
  @override
  final String? eventAdvertisedName;
  @override
  @JsonKey(fromJson: dateTimeFromEpoch)
  final DateTime? eventStartDateTime;

  /// Create a copy of AuctionRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AuctionRecordModelCopyWith<_AuctionRecordModel> get copyWith =>
      __$AuctionRecordModelCopyWithImpl<_AuctionRecordModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AuctionRecordModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AuctionRecordModel &&
            (identical(other.assetDescription, assetDescription) ||
                other.assetDescription == assetDescription) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.locationCountry, locationCountry) ||
                other.locationCountry == locationCountry) &&
            (identical(other.locationState, locationState) ||
                other.locationState == locationState) &&
            (identical(other.locationCity, locationCity) ||
                other.locationCity == locationCity) &&
            (identical(other.eventAdvertisedName, eventAdvertisedName) ||
                other.eventAdvertisedName == eventAdvertisedName) &&
            (identical(other.eventStartDateTime, eventStartDateTime) ||
                other.eventStartDateTime == eventStartDateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      assetDescription,
      imageUrl,
      locationCountry,
      locationState,
      locationCity,
      eventAdvertisedName,
      eventStartDateTime);

  @override
  String toString() {
    return 'AuctionRecordModel(assetDescription: $assetDescription, imageUrl: $imageUrl, locationCountry: $locationCountry, locationState: $locationState, locationCity: $locationCity, eventAdvertisedName: $eventAdvertisedName, eventStartDateTime: $eventStartDateTime)';
  }
}

/// @nodoc
abstract mixin class _$AuctionRecordModelCopyWith<$Res>
    implements $AuctionRecordModelCopyWith<$Res> {
  factory _$AuctionRecordModelCopyWith(
          _AuctionRecordModel value, $Res Function(_AuctionRecordModel) _then) =
      __$AuctionRecordModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String? assetDescription,
      String? imageUrl,
      String? locationCountry,
      String? locationState,
      String? locationCity,
      String? eventAdvertisedName,
      @JsonKey(fromJson: dateTimeFromEpoch) DateTime? eventStartDateTime});
}

/// @nodoc
class __$AuctionRecordModelCopyWithImpl<$Res>
    implements _$AuctionRecordModelCopyWith<$Res> {
  __$AuctionRecordModelCopyWithImpl(this._self, this._then);

  final _AuctionRecordModel _self;
  final $Res Function(_AuctionRecordModel) _then;

  /// Create a copy of AuctionRecordModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? assetDescription = freezed,
    Object? imageUrl = freezed,
    Object? locationCountry = freezed,
    Object? locationState = freezed,
    Object? locationCity = freezed,
    Object? eventAdvertisedName = freezed,
    Object? eventStartDateTime = freezed,
  }) {
    return _then(_AuctionRecordModel(
      assetDescription: freezed == assetDescription
          ? _self.assetDescription
          : assetDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _self.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      locationCountry: freezed == locationCountry
          ? _self.locationCountry
          : locationCountry // ignore: cast_nullable_to_non_nullable
              as String?,
      locationState: freezed == locationState
          ? _self.locationState
          : locationState // ignore: cast_nullable_to_non_nullable
              as String?,
      locationCity: freezed == locationCity
          ? _self.locationCity
          : locationCity // ignore: cast_nullable_to_non_nullable
              as String?,
      eventAdvertisedName: freezed == eventAdvertisedName
          ? _self.eventAdvertisedName
          : eventAdvertisedName // ignore: cast_nullable_to_non_nullable
              as String?,
      eventStartDateTime: freezed == eventStartDateTime
          ? _self.eventStartDateTime
          : eventStartDateTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

// dart format on
