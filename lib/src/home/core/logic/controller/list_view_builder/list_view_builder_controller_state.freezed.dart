// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_view_builder_controller_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ListViewBuilderControllerState {
  List<AuctionRecordModel> get items;
  int get listingCountsWhileInFetch;
  bool get isFetching;
  bool get hasMoreListings;

  /// Create a copy of ListViewBuilderControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ListViewBuilderControllerStateCopyWith<ListViewBuilderControllerState>
      get copyWith => _$ListViewBuilderControllerStateCopyWithImpl<
              ListViewBuilderControllerState>(
          this as ListViewBuilderControllerState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ListViewBuilderControllerState &&
            const DeepCollectionEquality().equals(other.items, items) &&
            (identical(other.listingCountsWhileInFetch,
                    listingCountsWhileInFetch) ||
                other.listingCountsWhileInFetch == listingCountsWhileInFetch) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.hasMoreListings, hasMoreListings) ||
                other.hasMoreListings == hasMoreListings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(items),
      listingCountsWhileInFetch,
      isFetching,
      hasMoreListings);

  @override
  String toString() {
    return 'ListViewBuilderControllerState(items: $items, listingCountsWhileInFetch: $listingCountsWhileInFetch, isFetching: $isFetching, hasMoreListings: $hasMoreListings)';
  }
}

/// @nodoc
abstract mixin class $ListViewBuilderControllerStateCopyWith<$Res> {
  factory $ListViewBuilderControllerStateCopyWith(
          ListViewBuilderControllerState value,
          $Res Function(ListViewBuilderControllerState) _then) =
      _$ListViewBuilderControllerStateCopyWithImpl;
  @useResult
  $Res call(
      {List<AuctionRecordModel> items,
      int listingCountsWhileInFetch,
      bool isFetching,
      bool hasMoreListings});
}

/// @nodoc
class _$ListViewBuilderControllerStateCopyWithImpl<$Res>
    implements $ListViewBuilderControllerStateCopyWith<$Res> {
  _$ListViewBuilderControllerStateCopyWithImpl(this._self, this._then);

  final ListViewBuilderControllerState _self;
  final $Res Function(ListViewBuilderControllerState) _then;

  /// Create a copy of ListViewBuilderControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
    Object? listingCountsWhileInFetch = null,
    Object? isFetching = null,
    Object? hasMoreListings = null,
  }) {
    return _then(_self.copyWith(
      items: null == items
          ? _self.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AuctionRecordModel>,
      listingCountsWhileInFetch: null == listingCountsWhileInFetch
          ? _self.listingCountsWhileInFetch
          : listingCountsWhileInFetch // ignore: cast_nullable_to_non_nullable
              as int,
      isFetching: null == isFetching
          ? _self.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreListings: null == hasMoreListings
          ? _self.hasMoreListings
          : hasMoreListings // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _ListViewBuilderControllerState
    implements ListViewBuilderControllerState {
  const _ListViewBuilderControllerState(
      {final List<AuctionRecordModel> items = const <AuctionRecordModel>[],
      this.listingCountsWhileInFetch = 0,
      this.isFetching = false,
      this.hasMoreListings = true})
      : _items = items;

  final List<AuctionRecordModel> _items;
  @override
  @JsonKey()
  List<AuctionRecordModel> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  @JsonKey()
  final int listingCountsWhileInFetch;
  @override
  @JsonKey()
  final bool isFetching;
  @override
  @JsonKey()
  final bool hasMoreListings;

  /// Create a copy of ListViewBuilderControllerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ListViewBuilderControllerStateCopyWith<_ListViewBuilderControllerState>
      get copyWith => __$ListViewBuilderControllerStateCopyWithImpl<
          _ListViewBuilderControllerState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListViewBuilderControllerState &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.listingCountsWhileInFetch,
                    listingCountsWhileInFetch) ||
                other.listingCountsWhileInFetch == listingCountsWhileInFetch) &&
            (identical(other.isFetching, isFetching) ||
                other.isFetching == isFetching) &&
            (identical(other.hasMoreListings, hasMoreListings) ||
                other.hasMoreListings == hasMoreListings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      listingCountsWhileInFetch,
      isFetching,
      hasMoreListings);

  @override
  String toString() {
    return 'ListViewBuilderControllerState(items: $items, listingCountsWhileInFetch: $listingCountsWhileInFetch, isFetching: $isFetching, hasMoreListings: $hasMoreListings)';
  }
}

/// @nodoc
abstract mixin class _$ListViewBuilderControllerStateCopyWith<$Res>
    implements $ListViewBuilderControllerStateCopyWith<$Res> {
  factory _$ListViewBuilderControllerStateCopyWith(
          _ListViewBuilderControllerState value,
          $Res Function(_ListViewBuilderControllerState) _then) =
      __$ListViewBuilderControllerStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {List<AuctionRecordModel> items,
      int listingCountsWhileInFetch,
      bool isFetching,
      bool hasMoreListings});
}

/// @nodoc
class __$ListViewBuilderControllerStateCopyWithImpl<$Res>
    implements _$ListViewBuilderControllerStateCopyWith<$Res> {
  __$ListViewBuilderControllerStateCopyWithImpl(this._self, this._then);

  final _ListViewBuilderControllerState _self;
  final $Res Function(_ListViewBuilderControllerState) _then;

  /// Create a copy of ListViewBuilderControllerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? items = null,
    Object? listingCountsWhileInFetch = null,
    Object? isFetching = null,
    Object? hasMoreListings = null,
  }) {
    return _then(_ListViewBuilderControllerState(
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<AuctionRecordModel>,
      listingCountsWhileInFetch: null == listingCountsWhileInFetch
          ? _self.listingCountsWhileInFetch
          : listingCountsWhileInFetch // ignore: cast_nullable_to_non_nullable
              as int,
      isFetching: null == isFetching
          ? _self.isFetching
          : isFetching // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMoreListings: null == hasMoreListings
          ? _self.hasMoreListings
          : hasMoreListings // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
