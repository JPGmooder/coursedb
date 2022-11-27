// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'organization_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrganizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> organizations) loaded,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationStateLoadedState value) loaded,
    required TResult Function(_$OrganizationStateErroredState value) errored,
    required TResult Function(_$OrganizationStateLoadingState value) loading,
    required TResult Function(_$OrganizationStateUpdatedState value) updated,
    required TResult Function(_$OrganizationStateInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationStateLoadedState value)? loaded,
    TResult? Function(_$OrganizationStateErroredState value)? errored,
    TResult? Function(_$OrganizationStateLoadingState value)? loading,
    TResult? Function(_$OrganizationStateUpdatedState value)? updated,
    TResult? Function(_$OrganizationStateInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationStateLoadedState value)? loaded,
    TResult Function(_$OrganizationStateErroredState value)? errored,
    TResult Function(_$OrganizationStateLoadingState value)? loading,
    TResult Function(_$OrganizationStateUpdatedState value)? updated,
    TResult Function(_$OrganizationStateInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationStateCopyWith<$Res> {
  factory $OrganizationStateCopyWith(
          OrganizationState value, $Res Function(OrganizationState) then) =
      _$OrganizationStateCopyWithImpl<$Res, OrganizationState>;
}

/// @nodoc
class _$OrganizationStateCopyWithImpl<$Res, $Val extends OrganizationState>
    implements $OrganizationStateCopyWith<$Res> {
  _$OrganizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$OrganizationStateLoadedStateCopyWith<$Res> {
  factory _$$_$OrganizationStateLoadedStateCopyWith(
          _$_$OrganizationStateLoadedState value,
          $Res Function(_$_$OrganizationStateLoadedState) then) =
      __$$_$OrganizationStateLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> organizations});
}

/// @nodoc
class __$$_$OrganizationStateLoadedStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res,
        _$_$OrganizationStateLoadedState>
    implements _$$_$OrganizationStateLoadedStateCopyWith<$Res> {
  __$$_$OrganizationStateLoadedStateCopyWithImpl(
      _$_$OrganizationStateLoadedState _value,
      $Res Function(_$_$OrganizationStateLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizations = null,
  }) {
    return _then(_$_$OrganizationStateLoadedState(
      null == organizations
          ? _value._organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_$OrganizationStateLoadedState
    implements _$OrganizationStateLoadedState {
  const _$_$OrganizationStateLoadedState(
      final List<Map<String, dynamic>> organizations)
      : _organizations = organizations;

  final List<Map<String, dynamic>> _organizations;
  @override
  List<Map<String, dynamic>> get organizations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizations);
  }

  @override
  String toString() {
    return 'OrganizationState.loaded(organizations: $organizations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationStateLoadedState &&
            const DeepCollectionEquality()
                .equals(other._organizations, _organizations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_organizations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationStateLoadedStateCopyWith<_$_$OrganizationStateLoadedState>
      get copyWith => __$$_$OrganizationStateLoadedStateCopyWithImpl<
          _$_$OrganizationStateLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> organizations) loaded,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function() initial,
  }) {
    return loaded(organizations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function()? initial,
  }) {
    return loaded?.call(organizations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(organizations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationStateLoadedState value) loaded,
    required TResult Function(_$OrganizationStateErroredState value) errored,
    required TResult Function(_$OrganizationStateLoadingState value) loading,
    required TResult Function(_$OrganizationStateUpdatedState value) updated,
    required TResult Function(_$OrganizationStateInitialState value) initial,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationStateLoadedState value)? loaded,
    TResult? Function(_$OrganizationStateErroredState value)? errored,
    TResult? Function(_$OrganizationStateLoadingState value)? loading,
    TResult? Function(_$OrganizationStateUpdatedState value)? updated,
    TResult? Function(_$OrganizationStateInitialState value)? initial,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationStateLoadedState value)? loaded,
    TResult Function(_$OrganizationStateErroredState value)? errored,
    TResult Function(_$OrganizationStateLoadingState value)? loading,
    TResult Function(_$OrganizationStateUpdatedState value)? updated,
    TResult Function(_$OrganizationStateInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationStateLoadedState implements OrganizationState {
  const factory _$OrganizationStateLoadedState(
          final List<Map<String, dynamic>> organizations) =
      _$_$OrganizationStateLoadedState;

  List<Map<String, dynamic>> get organizations;
  @JsonKey(ignore: true)
  _$$_$OrganizationStateLoadedStateCopyWith<_$_$OrganizationStateLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrganizationStateErroredStateCopyWith<$Res> {
  factory _$$_$OrganizationStateErroredStateCopyWith(
          _$_$OrganizationStateErroredState value,
          $Res Function(_$_$OrganizationStateErroredState) then) =
      __$$_$OrganizationStateErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$OrganizationStateErroredStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res,
        _$_$OrganizationStateErroredState>
    implements _$$_$OrganizationStateErroredStateCopyWith<$Res> {
  __$$_$OrganizationStateErroredStateCopyWithImpl(
      _$_$OrganizationStateErroredState _value,
      $Res Function(_$_$OrganizationStateErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$OrganizationStateErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$OrganizationStateErroredState
    implements _$OrganizationStateErroredState {
  const _$_$OrganizationStateErroredState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'OrganizationState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationStateErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationStateErroredStateCopyWith<_$_$OrganizationStateErroredState>
      get copyWith => __$$_$OrganizationStateErroredStateCopyWithImpl<
          _$_$OrganizationStateErroredState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> organizations) loaded,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function() initial,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function()? initial,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationStateLoadedState value) loaded,
    required TResult Function(_$OrganizationStateErroredState value) errored,
    required TResult Function(_$OrganizationStateLoadingState value) loading,
    required TResult Function(_$OrganizationStateUpdatedState value) updated,
    required TResult Function(_$OrganizationStateInitialState value) initial,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationStateLoadedState value)? loaded,
    TResult? Function(_$OrganizationStateErroredState value)? errored,
    TResult? Function(_$OrganizationStateLoadingState value)? loading,
    TResult? Function(_$OrganizationStateUpdatedState value)? updated,
    TResult? Function(_$OrganizationStateInitialState value)? initial,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationStateLoadedState value)? loaded,
    TResult Function(_$OrganizationStateErroredState value)? errored,
    TResult Function(_$OrganizationStateLoadingState value)? loading,
    TResult Function(_$OrganizationStateUpdatedState value)? updated,
    TResult Function(_$OrganizationStateInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationStateErroredState implements OrganizationState {
  const factory _$OrganizationStateErroredState(final String error) =
      _$_$OrganizationStateErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$OrganizationStateErroredStateCopyWith<_$_$OrganizationStateErroredState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrganizationStateLoadingStateCopyWith<$Res> {
  factory _$$_$OrganizationStateLoadingStateCopyWith(
          _$_$OrganizationStateLoadingState value,
          $Res Function(_$_$OrganizationStateLoadingState) then) =
      __$$_$OrganizationStateLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$OrganizationStateLoadingStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res,
        _$_$OrganizationStateLoadingState>
    implements _$$_$OrganizationStateLoadingStateCopyWith<$Res> {
  __$$_$OrganizationStateLoadingStateCopyWithImpl(
      _$_$OrganizationStateLoadingState _value,
      $Res Function(_$_$OrganizationStateLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$OrganizationStateLoadingState
    implements _$OrganizationStateLoadingState {
  const _$_$OrganizationStateLoadingState();

  @override
  String toString() {
    return 'OrganizationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationStateLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> organizations) loaded,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function()? initial,
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
    required TResult Function(_$OrganizationStateLoadedState value) loaded,
    required TResult Function(_$OrganizationStateErroredState value) errored,
    required TResult Function(_$OrganizationStateLoadingState value) loading,
    required TResult Function(_$OrganizationStateUpdatedState value) updated,
    required TResult Function(_$OrganizationStateInitialState value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationStateLoadedState value)? loaded,
    TResult? Function(_$OrganizationStateErroredState value)? errored,
    TResult? Function(_$OrganizationStateLoadingState value)? loading,
    TResult? Function(_$OrganizationStateUpdatedState value)? updated,
    TResult? Function(_$OrganizationStateInitialState value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationStateLoadedState value)? loaded,
    TResult Function(_$OrganizationStateErroredState value)? errored,
    TResult Function(_$OrganizationStateLoadingState value)? loading,
    TResult Function(_$OrganizationStateUpdatedState value)? updated,
    TResult Function(_$OrganizationStateInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationStateLoadingState implements OrganizationState {
  const factory _$OrganizationStateLoadingState() =
      _$_$OrganizationStateLoadingState;
}

/// @nodoc
abstract class _$$_$OrganizationStateUpdatedStateCopyWith<$Res> {
  factory _$$_$OrganizationStateUpdatedStateCopyWith(
          _$_$OrganizationStateUpdatedState value,
          $Res Function(_$_$OrganizationStateUpdatedState) then) =
      __$$_$OrganizationStateUpdatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$OrganizationStateUpdatedStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res,
        _$_$OrganizationStateUpdatedState>
    implements _$$_$OrganizationStateUpdatedStateCopyWith<$Res> {
  __$$_$OrganizationStateUpdatedStateCopyWithImpl(
      _$_$OrganizationStateUpdatedState _value,
      $Res Function(_$_$OrganizationStateUpdatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$OrganizationStateUpdatedState
    implements _$OrganizationStateUpdatedState {
  const _$_$OrganizationStateUpdatedState();

  @override
  String toString() {
    return 'OrganizationState.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationStateUpdatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> organizations) loaded,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function() initial,
  }) {
    return updated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function()? initial,
  }) {
    return updated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationStateLoadedState value) loaded,
    required TResult Function(_$OrganizationStateErroredState value) errored,
    required TResult Function(_$OrganizationStateLoadingState value) loading,
    required TResult Function(_$OrganizationStateUpdatedState value) updated,
    required TResult Function(_$OrganizationStateInitialState value) initial,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationStateLoadedState value)? loaded,
    TResult? Function(_$OrganizationStateErroredState value)? errored,
    TResult? Function(_$OrganizationStateLoadingState value)? loading,
    TResult? Function(_$OrganizationStateUpdatedState value)? updated,
    TResult? Function(_$OrganizationStateInitialState value)? initial,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationStateLoadedState value)? loaded,
    TResult Function(_$OrganizationStateErroredState value)? errored,
    TResult Function(_$OrganizationStateLoadingState value)? loading,
    TResult Function(_$OrganizationStateUpdatedState value)? updated,
    TResult Function(_$OrganizationStateInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationStateUpdatedState implements OrganizationState {
  const factory _$OrganizationStateUpdatedState() =
      _$_$OrganizationStateUpdatedState;
}

/// @nodoc
abstract class _$$_$OrganizationStateInitialStateCopyWith<$Res> {
  factory _$$_$OrganizationStateInitialStateCopyWith(
          _$_$OrganizationStateInitialState value,
          $Res Function(_$_$OrganizationStateInitialState) then) =
      __$$_$OrganizationStateInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$OrganizationStateInitialStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res,
        _$_$OrganizationStateInitialState>
    implements _$$_$OrganizationStateInitialStateCopyWith<$Res> {
  __$$_$OrganizationStateInitialStateCopyWithImpl(
      _$_$OrganizationStateInitialState _value,
      $Res Function(_$_$OrganizationStateInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$OrganizationStateInitialState
    implements _$OrganizationStateInitialState {
  const _$_$OrganizationStateInitialState();

  @override
  String toString() {
    return 'OrganizationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationStateInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> organizations) loaded,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> organizations)? loaded,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function()? initial,
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
    required TResult Function(_$OrganizationStateLoadedState value) loaded,
    required TResult Function(_$OrganizationStateErroredState value) errored,
    required TResult Function(_$OrganizationStateLoadingState value) loading,
    required TResult Function(_$OrganizationStateUpdatedState value) updated,
    required TResult Function(_$OrganizationStateInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationStateLoadedState value)? loaded,
    TResult? Function(_$OrganizationStateErroredState value)? errored,
    TResult? Function(_$OrganizationStateLoadingState value)? loading,
    TResult? Function(_$OrganizationStateUpdatedState value)? updated,
    TResult? Function(_$OrganizationStateInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationStateLoadedState value)? loaded,
    TResult Function(_$OrganizationStateErroredState value)? errored,
    TResult Function(_$OrganizationStateLoadingState value)? loading,
    TResult Function(_$OrganizationStateUpdatedState value)? updated,
    TResult Function(_$OrganizationStateInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationStateInitialState implements OrganizationState {
  const factory _$OrganizationStateInitialState() =
      _$_$OrganizationStateInitialState;
}
