// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'place_searcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PlaceSearcherEvents {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchString) search,
    required TResult Function(double lon, double lat, bool isInitial)
        searchByCoord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchString)? search,
    TResult? Function(double lon, double lat, bool isInitial)? searchByCoord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchString)? search,
    TResult Function(double lon, double lat, bool isInitial)? searchByCoord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherSearchEvent value) search,
    required TResult Function(_$PlaceSearcherSearchByCoordEvent value)
        searchByCoord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherSearchEvent value)? search,
    TResult? Function(_$PlaceSearcherSearchByCoordEvent value)? searchByCoord,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherSearchEvent value)? search,
    TResult Function(_$PlaceSearcherSearchByCoordEvent value)? searchByCoord,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceSearcherEventsCopyWith<$Res> {
  factory $PlaceSearcherEventsCopyWith(
          PlaceSearcherEvents value, $Res Function(PlaceSearcherEvents) then) =
      _$PlaceSearcherEventsCopyWithImpl<$Res, PlaceSearcherEvents>;
}

/// @nodoc
class _$PlaceSearcherEventsCopyWithImpl<$Res, $Val extends PlaceSearcherEvents>
    implements $PlaceSearcherEventsCopyWith<$Res> {
  _$PlaceSearcherEventsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$PlaceSearcherSearchEventCopyWith<$Res> {
  factory _$$_$PlaceSearcherSearchEventCopyWith(
          _$_$PlaceSearcherSearchEvent value,
          $Res Function(_$_$PlaceSearcherSearchEvent) then) =
      __$$_$PlaceSearcherSearchEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchString});
}

/// @nodoc
class __$$_$PlaceSearcherSearchEventCopyWithImpl<$Res>
    extends _$PlaceSearcherEventsCopyWithImpl<$Res,
        _$_$PlaceSearcherSearchEvent>
    implements _$$_$PlaceSearcherSearchEventCopyWith<$Res> {
  __$$_$PlaceSearcherSearchEventCopyWithImpl(
      _$_$PlaceSearcherSearchEvent _value,
      $Res Function(_$_$PlaceSearcherSearchEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchString = null,
  }) {
    return _then(_$_$PlaceSearcherSearchEvent(
      null == searchString
          ? _value.searchString
          : searchString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$PlaceSearcherSearchEvent implements _$PlaceSearcherSearchEvent {
  const _$_$PlaceSearcherSearchEvent(this.searchString);

  @override
  final String searchString;

  @override
  String toString() {
    return 'PlaceSearcherEvents.search(searchString: $searchString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$PlaceSearcherSearchEvent &&
            (identical(other.searchString, searchString) ||
                other.searchString == searchString));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchString);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$PlaceSearcherSearchEventCopyWith<_$_$PlaceSearcherSearchEvent>
      get copyWith => __$$_$PlaceSearcherSearchEventCopyWithImpl<
          _$_$PlaceSearcherSearchEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchString) search,
    required TResult Function(double lon, double lat, bool isInitial)
        searchByCoord,
  }) {
    return search(searchString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchString)? search,
    TResult? Function(double lon, double lat, bool isInitial)? searchByCoord,
  }) {
    return search?.call(searchString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchString)? search,
    TResult Function(double lon, double lat, bool isInitial)? searchByCoord,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherSearchEvent value) search,
    required TResult Function(_$PlaceSearcherSearchByCoordEvent value)
        searchByCoord,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherSearchEvent value)? search,
    TResult? Function(_$PlaceSearcherSearchByCoordEvent value)? searchByCoord,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherSearchEvent value)? search,
    TResult Function(_$PlaceSearcherSearchByCoordEvent value)? searchByCoord,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _$PlaceSearcherSearchEvent implements PlaceSearcherEvents {
  const factory _$PlaceSearcherSearchEvent(final String searchString) =
      _$_$PlaceSearcherSearchEvent;

  String get searchString;
  @JsonKey(ignore: true)
  _$$_$PlaceSearcherSearchEventCopyWith<_$_$PlaceSearcherSearchEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$PlaceSearcherSearchByCoordEventCopyWith<$Res> {
  factory _$$_$PlaceSearcherSearchByCoordEventCopyWith(
          _$_$PlaceSearcherSearchByCoordEvent value,
          $Res Function(_$_$PlaceSearcherSearchByCoordEvent) then) =
      __$$_$PlaceSearcherSearchByCoordEventCopyWithImpl<$Res>;
  @useResult
  $Res call({double lon, double lat, bool isInitial});
}

/// @nodoc
class __$$_$PlaceSearcherSearchByCoordEventCopyWithImpl<$Res>
    extends _$PlaceSearcherEventsCopyWithImpl<$Res,
        _$_$PlaceSearcherSearchByCoordEvent>
    implements _$$_$PlaceSearcherSearchByCoordEventCopyWith<$Res> {
  __$$_$PlaceSearcherSearchByCoordEventCopyWithImpl(
      _$_$PlaceSearcherSearchByCoordEvent _value,
      $Res Function(_$_$PlaceSearcherSearchByCoordEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lon = null,
    Object? lat = null,
    Object? isInitial = null,
  }) {
    return _then(_$_$PlaceSearcherSearchByCoordEvent(
      null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$PlaceSearcherSearchByCoordEvent
    implements _$PlaceSearcherSearchByCoordEvent {
  const _$_$PlaceSearcherSearchByCoordEvent(this.lon, this.lat, this.isInitial);

  @override
  final double lon;
  @override
  final double lat;
  @override
  final bool isInitial;

  @override
  String toString() {
    return 'PlaceSearcherEvents.searchByCoord(lon: $lon, lat: $lat, isInitial: $isInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$PlaceSearcherSearchByCoordEvent &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lon, lat, isInitial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$PlaceSearcherSearchByCoordEventCopyWith<
          _$_$PlaceSearcherSearchByCoordEvent>
      get copyWith => __$$_$PlaceSearcherSearchByCoordEventCopyWithImpl<
          _$_$PlaceSearcherSearchByCoordEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchString) search,
    required TResult Function(double lon, double lat, bool isInitial)
        searchByCoord,
  }) {
    return searchByCoord(lon, lat, isInitial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchString)? search,
    TResult? Function(double lon, double lat, bool isInitial)? searchByCoord,
  }) {
    return searchByCoord?.call(lon, lat, isInitial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchString)? search,
    TResult Function(double lon, double lat, bool isInitial)? searchByCoord,
    required TResult orElse(),
  }) {
    if (searchByCoord != null) {
      return searchByCoord(lon, lat, isInitial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherSearchEvent value) search,
    required TResult Function(_$PlaceSearcherSearchByCoordEvent value)
        searchByCoord,
  }) {
    return searchByCoord(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherSearchEvent value)? search,
    TResult? Function(_$PlaceSearcherSearchByCoordEvent value)? searchByCoord,
  }) {
    return searchByCoord?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherSearchEvent value)? search,
    TResult Function(_$PlaceSearcherSearchByCoordEvent value)? searchByCoord,
    required TResult orElse(),
  }) {
    if (searchByCoord != null) {
      return searchByCoord(this);
    }
    return orElse();
  }
}

abstract class _$PlaceSearcherSearchByCoordEvent
    implements PlaceSearcherEvents {
  const factory _$PlaceSearcherSearchByCoordEvent(
          final double lon, final double lat, final bool isInitial) =
      _$_$PlaceSearcherSearchByCoordEvent;

  double get lon;
  double get lat;
  bool get isInitial;
  @JsonKey(ignore: true)
  _$$_$PlaceSearcherSearchByCoordEventCopyWith<
          _$_$PlaceSearcherSearchByCoordEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PlaceSearcherStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() errored,
    required TResult Function(AddressModel place, bool isInitial)
        searchedCoords,
    required TResult Function(List<AddressModel> places) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? errored,
    TResult? Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult? Function(List<AddressModel> places)? searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? errored,
    TResult Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult Function(List<AddressModel> places)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherInitialState value) initial,
    required TResult Function(_$PlaceSearcherLoadingState value) loading,
    required TResult Function(_$PlaceSearcherErroredState value) errored,
    required TResult Function(_$PlaceSearcherSearchedCoordslState value)
        searchedCoords,
    required TResult Function(_$PlaceSearcherSearchedState value) searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherInitialState value)? initial,
    TResult? Function(_$PlaceSearcherLoadingState value)? loading,
    TResult? Function(_$PlaceSearcherErroredState value)? errored,
    TResult? Function(_$PlaceSearcherSearchedCoordslState value)?
        searchedCoords,
    TResult? Function(_$PlaceSearcherSearchedState value)? searched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherInitialState value)? initial,
    TResult Function(_$PlaceSearcherLoadingState value)? loading,
    TResult Function(_$PlaceSearcherErroredState value)? errored,
    TResult Function(_$PlaceSearcherSearchedCoordslState value)? searchedCoords,
    TResult Function(_$PlaceSearcherSearchedState value)? searched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceSearcherStatesCopyWith<$Res> {
  factory $PlaceSearcherStatesCopyWith(
          PlaceSearcherStates value, $Res Function(PlaceSearcherStates) then) =
      _$PlaceSearcherStatesCopyWithImpl<$Res, PlaceSearcherStates>;
}

/// @nodoc
class _$PlaceSearcherStatesCopyWithImpl<$Res, $Val extends PlaceSearcherStates>
    implements $PlaceSearcherStatesCopyWith<$Res> {
  _$PlaceSearcherStatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$PlaceSearcherInitialStateCopyWith<$Res> {
  factory _$$_$PlaceSearcherInitialStateCopyWith(
          _$_$PlaceSearcherInitialState value,
          $Res Function(_$_$PlaceSearcherInitialState) then) =
      __$$_$PlaceSearcherInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$PlaceSearcherInitialStateCopyWithImpl<$Res>
    extends _$PlaceSearcherStatesCopyWithImpl<$Res,
        _$_$PlaceSearcherInitialState>
    implements _$$_$PlaceSearcherInitialStateCopyWith<$Res> {
  __$$_$PlaceSearcherInitialStateCopyWithImpl(
      _$_$PlaceSearcherInitialState _value,
      $Res Function(_$_$PlaceSearcherInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$PlaceSearcherInitialState implements _$PlaceSearcherInitialState {
  const _$_$PlaceSearcherInitialState();

  @override
  String toString() {
    return 'PlaceSearcherStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$PlaceSearcherInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() errored,
    required TResult Function(AddressModel place, bool isInitial)
        searchedCoords,
    required TResult Function(List<AddressModel> places) searched,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? errored,
    TResult? Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult? Function(List<AddressModel> places)? searched,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? errored,
    TResult Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult Function(List<AddressModel> places)? searched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherInitialState value) initial,
    required TResult Function(_$PlaceSearcherLoadingState value) loading,
    required TResult Function(_$PlaceSearcherErroredState value) errored,
    required TResult Function(_$PlaceSearcherSearchedCoordslState value)
        searchedCoords,
    required TResult Function(_$PlaceSearcherSearchedState value) searched,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherInitialState value)? initial,
    TResult? Function(_$PlaceSearcherLoadingState value)? loading,
    TResult? Function(_$PlaceSearcherErroredState value)? errored,
    TResult? Function(_$PlaceSearcherSearchedCoordslState value)?
        searchedCoords,
    TResult? Function(_$PlaceSearcherSearchedState value)? searched,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherInitialState value)? initial,
    TResult Function(_$PlaceSearcherLoadingState value)? loading,
    TResult Function(_$PlaceSearcherErroredState value)? errored,
    TResult Function(_$PlaceSearcherSearchedCoordslState value)? searchedCoords,
    TResult Function(_$PlaceSearcherSearchedState value)? searched,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$PlaceSearcherInitialState implements PlaceSearcherStates {
  const factory _$PlaceSearcherInitialState() = _$_$PlaceSearcherInitialState;
}

/// @nodoc
abstract class _$$_$PlaceSearcherLoadingStateCopyWith<$Res> {
  factory _$$_$PlaceSearcherLoadingStateCopyWith(
          _$_$PlaceSearcherLoadingState value,
          $Res Function(_$_$PlaceSearcherLoadingState) then) =
      __$$_$PlaceSearcherLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$PlaceSearcherLoadingStateCopyWithImpl<$Res>
    extends _$PlaceSearcherStatesCopyWithImpl<$Res,
        _$_$PlaceSearcherLoadingState>
    implements _$$_$PlaceSearcherLoadingStateCopyWith<$Res> {
  __$$_$PlaceSearcherLoadingStateCopyWithImpl(
      _$_$PlaceSearcherLoadingState _value,
      $Res Function(_$_$PlaceSearcherLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$PlaceSearcherLoadingState implements _$PlaceSearcherLoadingState {
  const _$_$PlaceSearcherLoadingState();

  @override
  String toString() {
    return 'PlaceSearcherStates.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$PlaceSearcherLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() errored,
    required TResult Function(AddressModel place, bool isInitial)
        searchedCoords,
    required TResult Function(List<AddressModel> places) searched,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? errored,
    TResult? Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult? Function(List<AddressModel> places)? searched,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? errored,
    TResult Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult Function(List<AddressModel> places)? searched,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherInitialState value) initial,
    required TResult Function(_$PlaceSearcherLoadingState value) loading,
    required TResult Function(_$PlaceSearcherErroredState value) errored,
    required TResult Function(_$PlaceSearcherSearchedCoordslState value)
        searchedCoords,
    required TResult Function(_$PlaceSearcherSearchedState value) searched,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherInitialState value)? initial,
    TResult? Function(_$PlaceSearcherLoadingState value)? loading,
    TResult? Function(_$PlaceSearcherErroredState value)? errored,
    TResult? Function(_$PlaceSearcherSearchedCoordslState value)?
        searchedCoords,
    TResult? Function(_$PlaceSearcherSearchedState value)? searched,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherInitialState value)? initial,
    TResult Function(_$PlaceSearcherLoadingState value)? loading,
    TResult Function(_$PlaceSearcherErroredState value)? errored,
    TResult Function(_$PlaceSearcherSearchedCoordslState value)? searchedCoords,
    TResult Function(_$PlaceSearcherSearchedState value)? searched,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$PlaceSearcherLoadingState implements PlaceSearcherStates {
  const factory _$PlaceSearcherLoadingState() = _$_$PlaceSearcherLoadingState;
}

/// @nodoc
abstract class _$$_$PlaceSearcherErroredStateCopyWith<$Res> {
  factory _$$_$PlaceSearcherErroredStateCopyWith(
          _$_$PlaceSearcherErroredState value,
          $Res Function(_$_$PlaceSearcherErroredState) then) =
      __$$_$PlaceSearcherErroredStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$PlaceSearcherErroredStateCopyWithImpl<$Res>
    extends _$PlaceSearcherStatesCopyWithImpl<$Res,
        _$_$PlaceSearcherErroredState>
    implements _$$_$PlaceSearcherErroredStateCopyWith<$Res> {
  __$$_$PlaceSearcherErroredStateCopyWithImpl(
      _$_$PlaceSearcherErroredState _value,
      $Res Function(_$_$PlaceSearcherErroredState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$PlaceSearcherErroredState implements _$PlaceSearcherErroredState {
  const _$_$PlaceSearcherErroredState();

  @override
  String toString() {
    return 'PlaceSearcherStates.errored()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$PlaceSearcherErroredState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() errored,
    required TResult Function(AddressModel place, bool isInitial)
        searchedCoords,
    required TResult Function(List<AddressModel> places) searched,
  }) {
    return errored();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? errored,
    TResult? Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult? Function(List<AddressModel> places)? searched,
  }) {
    return errored?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? errored,
    TResult Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult Function(List<AddressModel> places)? searched,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherInitialState value) initial,
    required TResult Function(_$PlaceSearcherLoadingState value) loading,
    required TResult Function(_$PlaceSearcherErroredState value) errored,
    required TResult Function(_$PlaceSearcherSearchedCoordslState value)
        searchedCoords,
    required TResult Function(_$PlaceSearcherSearchedState value) searched,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherInitialState value)? initial,
    TResult? Function(_$PlaceSearcherLoadingState value)? loading,
    TResult? Function(_$PlaceSearcherErroredState value)? errored,
    TResult? Function(_$PlaceSearcherSearchedCoordslState value)?
        searchedCoords,
    TResult? Function(_$PlaceSearcherSearchedState value)? searched,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherInitialState value)? initial,
    TResult Function(_$PlaceSearcherLoadingState value)? loading,
    TResult Function(_$PlaceSearcherErroredState value)? errored,
    TResult Function(_$PlaceSearcherSearchedCoordslState value)? searchedCoords,
    TResult Function(_$PlaceSearcherSearchedState value)? searched,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$PlaceSearcherErroredState implements PlaceSearcherStates {
  const factory _$PlaceSearcherErroredState() = _$_$PlaceSearcherErroredState;
}

/// @nodoc
abstract class _$$_$PlaceSearcherSearchedCoordslStateCopyWith<$Res> {
  factory _$$_$PlaceSearcherSearchedCoordslStateCopyWith(
          _$_$PlaceSearcherSearchedCoordslState value,
          $Res Function(_$_$PlaceSearcherSearchedCoordslState) then) =
      __$$_$PlaceSearcherSearchedCoordslStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressModel place, bool isInitial});
}

/// @nodoc
class __$$_$PlaceSearcherSearchedCoordslStateCopyWithImpl<$Res>
    extends _$PlaceSearcherStatesCopyWithImpl<$Res,
        _$_$PlaceSearcherSearchedCoordslState>
    implements _$$_$PlaceSearcherSearchedCoordslStateCopyWith<$Res> {
  __$$_$PlaceSearcherSearchedCoordslStateCopyWithImpl(
      _$_$PlaceSearcherSearchedCoordslState _value,
      $Res Function(_$_$PlaceSearcherSearchedCoordslState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? place = null,
    Object? isInitial = null,
  }) {
    return _then(_$_$PlaceSearcherSearchedCoordslState(
      null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      null == isInitial
          ? _value.isInitial
          : isInitial // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$PlaceSearcherSearchedCoordslState
    implements _$PlaceSearcherSearchedCoordslState {
  const _$_$PlaceSearcherSearchedCoordslState(this.place, this.isInitial);

  @override
  final AddressModel place;
  @override
  final bool isInitial;

  @override
  String toString() {
    return 'PlaceSearcherStates.searchedCoords(place: $place, isInitial: $isInitial)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$PlaceSearcherSearchedCoordslState &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.isInitial, isInitial) ||
                other.isInitial == isInitial));
  }

  @override
  int get hashCode => Object.hash(runtimeType, place, isInitial);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$PlaceSearcherSearchedCoordslStateCopyWith<
          _$_$PlaceSearcherSearchedCoordslState>
      get copyWith => __$$_$PlaceSearcherSearchedCoordslStateCopyWithImpl<
          _$_$PlaceSearcherSearchedCoordslState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() errored,
    required TResult Function(AddressModel place, bool isInitial)
        searchedCoords,
    required TResult Function(List<AddressModel> places) searched,
  }) {
    return searchedCoords(place, isInitial);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? errored,
    TResult? Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult? Function(List<AddressModel> places)? searched,
  }) {
    return searchedCoords?.call(place, isInitial);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? errored,
    TResult Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult Function(List<AddressModel> places)? searched,
    required TResult orElse(),
  }) {
    if (searchedCoords != null) {
      return searchedCoords(place, isInitial);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherInitialState value) initial,
    required TResult Function(_$PlaceSearcherLoadingState value) loading,
    required TResult Function(_$PlaceSearcherErroredState value) errored,
    required TResult Function(_$PlaceSearcherSearchedCoordslState value)
        searchedCoords,
    required TResult Function(_$PlaceSearcherSearchedState value) searched,
  }) {
    return searchedCoords(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherInitialState value)? initial,
    TResult? Function(_$PlaceSearcherLoadingState value)? loading,
    TResult? Function(_$PlaceSearcherErroredState value)? errored,
    TResult? Function(_$PlaceSearcherSearchedCoordslState value)?
        searchedCoords,
    TResult? Function(_$PlaceSearcherSearchedState value)? searched,
  }) {
    return searchedCoords?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherInitialState value)? initial,
    TResult Function(_$PlaceSearcherLoadingState value)? loading,
    TResult Function(_$PlaceSearcherErroredState value)? errored,
    TResult Function(_$PlaceSearcherSearchedCoordslState value)? searchedCoords,
    TResult Function(_$PlaceSearcherSearchedState value)? searched,
    required TResult orElse(),
  }) {
    if (searchedCoords != null) {
      return searchedCoords(this);
    }
    return orElse();
  }
}

abstract class _$PlaceSearcherSearchedCoordslState
    implements PlaceSearcherStates {
  const factory _$PlaceSearcherSearchedCoordslState(
          final AddressModel place, final bool isInitial) =
      _$_$PlaceSearcherSearchedCoordslState;

  AddressModel get place;
  bool get isInitial;
  @JsonKey(ignore: true)
  _$$_$PlaceSearcherSearchedCoordslStateCopyWith<
          _$_$PlaceSearcherSearchedCoordslState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$PlaceSearcherSearchedStateCopyWith<$Res> {
  factory _$$_$PlaceSearcherSearchedStateCopyWith(
          _$_$PlaceSearcherSearchedState value,
          $Res Function(_$_$PlaceSearcherSearchedState) then) =
      __$$_$PlaceSearcherSearchedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AddressModel> places});
}

/// @nodoc
class __$$_$PlaceSearcherSearchedStateCopyWithImpl<$Res>
    extends _$PlaceSearcherStatesCopyWithImpl<$Res,
        _$_$PlaceSearcherSearchedState>
    implements _$$_$PlaceSearcherSearchedStateCopyWith<$Res> {
  __$$_$PlaceSearcherSearchedStateCopyWithImpl(
      _$_$PlaceSearcherSearchedState _value,
      $Res Function(_$_$PlaceSearcherSearchedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$_$PlaceSearcherSearchedState(
      null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ));
  }
}

/// @nodoc

class _$_$PlaceSearcherSearchedState implements _$PlaceSearcherSearchedState {
  const _$_$PlaceSearcherSearchedState(final List<AddressModel> places)
      : _places = places;

  final List<AddressModel> _places;
  @override
  List<AddressModel> get places {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlaceSearcherStates.searched(places: $places)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$PlaceSearcherSearchedState &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$PlaceSearcherSearchedStateCopyWith<_$_$PlaceSearcherSearchedState>
      get copyWith => __$$_$PlaceSearcherSearchedStateCopyWithImpl<
          _$_$PlaceSearcherSearchedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() errored,
    required TResult Function(AddressModel place, bool isInitial)
        searchedCoords,
    required TResult Function(List<AddressModel> places) searched,
  }) {
    return searched(places);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? errored,
    TResult? Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult? Function(List<AddressModel> places)? searched,
  }) {
    return searched?.call(places);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? errored,
    TResult Function(AddressModel place, bool isInitial)? searchedCoords,
    TResult Function(List<AddressModel> places)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(places);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$PlaceSearcherInitialState value) initial,
    required TResult Function(_$PlaceSearcherLoadingState value) loading,
    required TResult Function(_$PlaceSearcherErroredState value) errored,
    required TResult Function(_$PlaceSearcherSearchedCoordslState value)
        searchedCoords,
    required TResult Function(_$PlaceSearcherSearchedState value) searched,
  }) {
    return searched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$PlaceSearcherInitialState value)? initial,
    TResult? Function(_$PlaceSearcherLoadingState value)? loading,
    TResult? Function(_$PlaceSearcherErroredState value)? errored,
    TResult? Function(_$PlaceSearcherSearchedCoordslState value)?
        searchedCoords,
    TResult? Function(_$PlaceSearcherSearchedState value)? searched,
  }) {
    return searched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$PlaceSearcherInitialState value)? initial,
    TResult Function(_$PlaceSearcherLoadingState value)? loading,
    TResult Function(_$PlaceSearcherErroredState value)? errored,
    TResult Function(_$PlaceSearcherSearchedCoordslState value)? searchedCoords,
    TResult Function(_$PlaceSearcherSearchedState value)? searched,
    required TResult orElse(),
  }) {
    if (searched != null) {
      return searched(this);
    }
    return orElse();
  }
}

abstract class _$PlaceSearcherSearchedState implements PlaceSearcherStates {
  const factory _$PlaceSearcherSearchedState(final List<AddressModel> places) =
      _$_$PlaceSearcherSearchedState;

  List<AddressModel> get places;
  @JsonKey(ignore: true)
  _$$_$PlaceSearcherSearchedStateCopyWith<_$_$PlaceSearcherSearchedState>
      get copyWith => throw _privateConstructorUsedError;
}
