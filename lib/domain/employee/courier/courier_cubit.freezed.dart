// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'courier_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CourierState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> employees) loaded,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> employees)? loaded,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> employees)? loaded,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CourierLoadedState value) loaded,
    required TResult Function(_$CourierErroredState value) errored,
    required TResult Function(_$CourierLoadingState value) loading,
    required TResult Function(_$CourierUpdatedState value) updated,
    required TResult Function(_$CourierInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CourierLoadedState value)? loaded,
    TResult? Function(_$CourierErroredState value)? errored,
    TResult? Function(_$CourierLoadingState value)? loading,
    TResult? Function(_$CourierUpdatedState value)? updated,
    TResult? Function(_$CourierInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CourierLoadedState value)? loaded,
    TResult Function(_$CourierErroredState value)? errored,
    TResult Function(_$CourierLoadingState value)? loading,
    TResult Function(_$CourierUpdatedState value)? updated,
    TResult Function(_$CourierInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CourierStateCopyWith<$Res> {
  factory $CourierStateCopyWith(
          CourierState value, $Res Function(CourierState) then) =
      _$CourierStateCopyWithImpl<$Res, CourierState>;
}

/// @nodoc
class _$CourierStateCopyWithImpl<$Res, $Val extends CourierState>
    implements $CourierStateCopyWith<$Res> {
  _$CourierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$CourierLoadedStateCopyWith<$Res> {
  factory _$$_$CourierLoadedStateCopyWith(_$_$CourierLoadedState value,
          $Res Function(_$_$CourierLoadedState) then) =
      __$$_$CourierLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> employees});
}

/// @nodoc
class __$$_$CourierLoadedStateCopyWithImpl<$Res>
    extends _$CourierStateCopyWithImpl<$Res, _$_$CourierLoadedState>
    implements _$$_$CourierLoadedStateCopyWith<$Res> {
  __$$_$CourierLoadedStateCopyWithImpl(_$_$CourierLoadedState _value,
      $Res Function(_$_$CourierLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$_$CourierLoadedState(
      null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_$CourierLoadedState implements _$CourierLoadedState {
  const _$_$CourierLoadedState(final List<Map<String, dynamic>> employees)
      : _employees = employees;

  final List<Map<String, dynamic>> _employees;
  @override
  List<Map<String, dynamic>> get employees {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'CourierState.loaded(employees: $employees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$CourierLoadedState &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$CourierLoadedStateCopyWith<_$_$CourierLoadedState> get copyWith =>
      __$$_$CourierLoadedStateCopyWithImpl<_$_$CourierLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> employees) loaded,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function() updated,
    required TResult Function() initial,
  }) {
    return loaded(employees);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> employees)? loaded,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function()? updated,
    TResult? Function()? initial,
  }) {
    return loaded?.call(employees);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> employees)? loaded,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function()? updated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(employees);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CourierLoadedState value) loaded,
    required TResult Function(_$CourierErroredState value) errored,
    required TResult Function(_$CourierLoadingState value) loading,
    required TResult Function(_$CourierUpdatedState value) updated,
    required TResult Function(_$CourierInitialState value) initial,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CourierLoadedState value)? loaded,
    TResult? Function(_$CourierErroredState value)? errored,
    TResult? Function(_$CourierLoadingState value)? loading,
    TResult? Function(_$CourierUpdatedState value)? updated,
    TResult? Function(_$CourierInitialState value)? initial,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CourierLoadedState value)? loaded,
    TResult Function(_$CourierErroredState value)? errored,
    TResult Function(_$CourierLoadingState value)? loading,
    TResult Function(_$CourierUpdatedState value)? updated,
    TResult Function(_$CourierInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$CourierLoadedState implements CourierState {
  const factory _$CourierLoadedState(
      final List<Map<String, dynamic>> employees) = _$_$CourierLoadedState;

  List<Map<String, dynamic>> get employees;
  @JsonKey(ignore: true)
  _$$_$CourierLoadedStateCopyWith<_$_$CourierLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$CourierErroredStateCopyWith<$Res> {
  factory _$$_$CourierErroredStateCopyWith(_$_$CourierErroredState value,
          $Res Function(_$_$CourierErroredState) then) =
      __$$_$CourierErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$CourierErroredStateCopyWithImpl<$Res>
    extends _$CourierStateCopyWithImpl<$Res, _$_$CourierErroredState>
    implements _$$_$CourierErroredStateCopyWith<$Res> {
  __$$_$CourierErroredStateCopyWithImpl(_$_$CourierErroredState _value,
      $Res Function(_$_$CourierErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$CourierErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$CourierErroredState implements _$CourierErroredState {
  const _$_$CourierErroredState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CourierState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$CourierErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$CourierErroredStateCopyWith<_$_$CourierErroredState> get copyWith =>
      __$$_$CourierErroredStateCopyWithImpl<_$_$CourierErroredState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> employees) loaded,
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
    TResult? Function(List<Map<String, dynamic>> employees)? loaded,
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
    TResult Function(List<Map<String, dynamic>> employees)? loaded,
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
    required TResult Function(_$CourierLoadedState value) loaded,
    required TResult Function(_$CourierErroredState value) errored,
    required TResult Function(_$CourierLoadingState value) loading,
    required TResult Function(_$CourierUpdatedState value) updated,
    required TResult Function(_$CourierInitialState value) initial,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CourierLoadedState value)? loaded,
    TResult? Function(_$CourierErroredState value)? errored,
    TResult? Function(_$CourierLoadingState value)? loading,
    TResult? Function(_$CourierUpdatedState value)? updated,
    TResult? Function(_$CourierInitialState value)? initial,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CourierLoadedState value)? loaded,
    TResult Function(_$CourierErroredState value)? errored,
    TResult Function(_$CourierLoadingState value)? loading,
    TResult Function(_$CourierUpdatedState value)? updated,
    TResult Function(_$CourierInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$CourierErroredState implements CourierState {
  const factory _$CourierErroredState(final String error) =
      _$_$CourierErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$CourierErroredStateCopyWith<_$_$CourierErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$CourierLoadingStateCopyWith<$Res> {
  factory _$$_$CourierLoadingStateCopyWith(_$_$CourierLoadingState value,
          $Res Function(_$_$CourierLoadingState) then) =
      __$$_$CourierLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$CourierLoadingStateCopyWithImpl<$Res>
    extends _$CourierStateCopyWithImpl<$Res, _$_$CourierLoadingState>
    implements _$$_$CourierLoadingStateCopyWith<$Res> {
  __$$_$CourierLoadingStateCopyWithImpl(_$_$CourierLoadingState _value,
      $Res Function(_$_$CourierLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$CourierLoadingState implements _$CourierLoadingState {
  const _$_$CourierLoadingState();

  @override
  String toString() {
    return 'CourierState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$CourierLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> employees) loaded,
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
    TResult? Function(List<Map<String, dynamic>> employees)? loaded,
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
    TResult Function(List<Map<String, dynamic>> employees)? loaded,
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
    required TResult Function(_$CourierLoadedState value) loaded,
    required TResult Function(_$CourierErroredState value) errored,
    required TResult Function(_$CourierLoadingState value) loading,
    required TResult Function(_$CourierUpdatedState value) updated,
    required TResult Function(_$CourierInitialState value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CourierLoadedState value)? loaded,
    TResult? Function(_$CourierErroredState value)? errored,
    TResult? Function(_$CourierLoadingState value)? loading,
    TResult? Function(_$CourierUpdatedState value)? updated,
    TResult? Function(_$CourierInitialState value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CourierLoadedState value)? loaded,
    TResult Function(_$CourierErroredState value)? errored,
    TResult Function(_$CourierLoadingState value)? loading,
    TResult Function(_$CourierUpdatedState value)? updated,
    TResult Function(_$CourierInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$CourierLoadingState implements CourierState {
  const factory _$CourierLoadingState() = _$_$CourierLoadingState;
}

/// @nodoc
abstract class _$$_$CourierUpdatedStateCopyWith<$Res> {
  factory _$$_$CourierUpdatedStateCopyWith(_$_$CourierUpdatedState value,
          $Res Function(_$_$CourierUpdatedState) then) =
      __$$_$CourierUpdatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$CourierUpdatedStateCopyWithImpl<$Res>
    extends _$CourierStateCopyWithImpl<$Res, _$_$CourierUpdatedState>
    implements _$$_$CourierUpdatedStateCopyWith<$Res> {
  __$$_$CourierUpdatedStateCopyWithImpl(_$_$CourierUpdatedState _value,
      $Res Function(_$_$CourierUpdatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$CourierUpdatedState implements _$CourierUpdatedState {
  const _$_$CourierUpdatedState();

  @override
  String toString() {
    return 'CourierState.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$CourierUpdatedState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> employees) loaded,
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
    TResult? Function(List<Map<String, dynamic>> employees)? loaded,
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
    TResult Function(List<Map<String, dynamic>> employees)? loaded,
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
    required TResult Function(_$CourierLoadedState value) loaded,
    required TResult Function(_$CourierErroredState value) errored,
    required TResult Function(_$CourierLoadingState value) loading,
    required TResult Function(_$CourierUpdatedState value) updated,
    required TResult Function(_$CourierInitialState value) initial,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CourierLoadedState value)? loaded,
    TResult? Function(_$CourierErroredState value)? errored,
    TResult? Function(_$CourierLoadingState value)? loading,
    TResult? Function(_$CourierUpdatedState value)? updated,
    TResult? Function(_$CourierInitialState value)? initial,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CourierLoadedState value)? loaded,
    TResult Function(_$CourierErroredState value)? errored,
    TResult Function(_$CourierLoadingState value)? loading,
    TResult Function(_$CourierUpdatedState value)? updated,
    TResult Function(_$CourierInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _$CourierUpdatedState implements CourierState {
  const factory _$CourierUpdatedState() = _$_$CourierUpdatedState;
}

/// @nodoc
abstract class _$$_$CourierInitialStateCopyWith<$Res> {
  factory _$$_$CourierInitialStateCopyWith(_$_$CourierInitialState value,
          $Res Function(_$_$CourierInitialState) then) =
      __$$_$CourierInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$CourierInitialStateCopyWithImpl<$Res>
    extends _$CourierStateCopyWithImpl<$Res, _$_$CourierInitialState>
    implements _$$_$CourierInitialStateCopyWith<$Res> {
  __$$_$CourierInitialStateCopyWithImpl(_$_$CourierInitialState _value,
      $Res Function(_$_$CourierInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$CourierInitialState implements _$CourierInitialState {
  const _$_$CourierInitialState();

  @override
  String toString() {
    return 'CourierState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$CourierInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> employees) loaded,
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
    TResult? Function(List<Map<String, dynamic>> employees)? loaded,
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
    TResult Function(List<Map<String, dynamic>> employees)? loaded,
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
    required TResult Function(_$CourierLoadedState value) loaded,
    required TResult Function(_$CourierErroredState value) errored,
    required TResult Function(_$CourierLoadingState value) loading,
    required TResult Function(_$CourierUpdatedState value) updated,
    required TResult Function(_$CourierInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CourierLoadedState value)? loaded,
    TResult? Function(_$CourierErroredState value)? errored,
    TResult? Function(_$CourierLoadingState value)? loading,
    TResult? Function(_$CourierUpdatedState value)? updated,
    TResult? Function(_$CourierInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CourierLoadedState value)? loaded,
    TResult Function(_$CourierErroredState value)? errored,
    TResult Function(_$CourierLoadingState value)? loading,
    TResult Function(_$CourierUpdatedState value)? updated,
    TResult Function(_$CourierInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$CourierInitialState implements CourierState {
  const factory _$CourierInitialState() = _$_$CourierInitialState;
}
