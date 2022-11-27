// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employees_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeesState {
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
    required TResult Function(_$EmployeesLoadedState value) loaded,
    required TResult Function(_$EmployeesErroredState value) errored,
    required TResult Function(_$EmployeesLoadingState value) loading,
    required TResult Function(_$EmployeesUpdatedState value) updated,
    required TResult Function(_$EmployeesInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeesLoadedState value)? loaded,
    TResult? Function(_$EmployeesErroredState value)? errored,
    TResult? Function(_$EmployeesLoadingState value)? loading,
    TResult? Function(_$EmployeesUpdatedState value)? updated,
    TResult? Function(_$EmployeesInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeesLoadedState value)? loaded,
    TResult Function(_$EmployeesErroredState value)? errored,
    TResult Function(_$EmployeesLoadingState value)? loading,
    TResult Function(_$EmployeesUpdatedState value)? updated,
    TResult Function(_$EmployeesInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeesStateCopyWith<$Res> {
  factory $EmployeesStateCopyWith(
          EmployeesState value, $Res Function(EmployeesState) then) =
      _$EmployeesStateCopyWithImpl<$Res, EmployeesState>;
}

/// @nodoc
class _$EmployeesStateCopyWithImpl<$Res, $Val extends EmployeesState>
    implements $EmployeesStateCopyWith<$Res> {
  _$EmployeesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$EmployeesLoadedStateCopyWith<$Res> {
  factory _$$_$EmployeesLoadedStateCopyWith(_$_$EmployeesLoadedState value,
          $Res Function(_$_$EmployeesLoadedState) then) =
      __$$_$EmployeesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> employees});
}

/// @nodoc
class __$$_$EmployeesLoadedStateCopyWithImpl<$Res>
    extends _$EmployeesStateCopyWithImpl<$Res, _$_$EmployeesLoadedState>
    implements _$$_$EmployeesLoadedStateCopyWith<$Res> {
  __$$_$EmployeesLoadedStateCopyWithImpl(_$_$EmployeesLoadedState _value,
      $Res Function(_$_$EmployeesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? employees = null,
  }) {
    return _then(_$_$EmployeesLoadedState(
      null == employees
          ? _value._employees
          : employees // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_$EmployeesLoadedState implements _$EmployeesLoadedState {
  const _$_$EmployeesLoadedState(final List<Map<String, dynamic>> employees)
      : _employees = employees;

  final List<Map<String, dynamic>> _employees;
  @override
  List<Map<String, dynamic>> get employees {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_employees);
  }

  @override
  String toString() {
    return 'EmployeesState.loaded(employees: $employees)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeesLoadedState &&
            const DeepCollectionEquality()
                .equals(other._employees, _employees));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_employees));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeesLoadedStateCopyWith<_$_$EmployeesLoadedState> get copyWith =>
      __$$_$EmployeesLoadedStateCopyWithImpl<_$_$EmployeesLoadedState>(
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
    required TResult Function(_$EmployeesLoadedState value) loaded,
    required TResult Function(_$EmployeesErroredState value) errored,
    required TResult Function(_$EmployeesLoadingState value) loading,
    required TResult Function(_$EmployeesUpdatedState value) updated,
    required TResult Function(_$EmployeesInitialState value) initial,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeesLoadedState value)? loaded,
    TResult? Function(_$EmployeesErroredState value)? errored,
    TResult? Function(_$EmployeesLoadingState value)? loading,
    TResult? Function(_$EmployeesUpdatedState value)? updated,
    TResult? Function(_$EmployeesInitialState value)? initial,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeesLoadedState value)? loaded,
    TResult Function(_$EmployeesErroredState value)? errored,
    TResult Function(_$EmployeesLoadingState value)? loading,
    TResult Function(_$EmployeesUpdatedState value)? updated,
    TResult Function(_$EmployeesInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$EmployeesLoadedState implements EmployeesState {
  const factory _$EmployeesLoadedState(
      final List<Map<String, dynamic>> employees) = _$_$EmployeesLoadedState;

  List<Map<String, dynamic>> get employees;
  @JsonKey(ignore: true)
  _$$_$EmployeesLoadedStateCopyWith<_$_$EmployeesLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeesErroredStateCopyWith<$Res> {
  factory _$$_$EmployeesErroredStateCopyWith(_$_$EmployeesErroredState value,
          $Res Function(_$_$EmployeesErroredState) then) =
      __$$_$EmployeesErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$EmployeesErroredStateCopyWithImpl<$Res>
    extends _$EmployeesStateCopyWithImpl<$Res, _$_$EmployeesErroredState>
    implements _$$_$EmployeesErroredStateCopyWith<$Res> {
  __$$_$EmployeesErroredStateCopyWithImpl(_$_$EmployeesErroredState _value,
      $Res Function(_$_$EmployeesErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$EmployeesErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$EmployeesErroredState implements _$EmployeesErroredState {
  const _$_$EmployeesErroredState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'EmployeesState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeesErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeesErroredStateCopyWith<_$_$EmployeesErroredState> get copyWith =>
      __$$_$EmployeesErroredStateCopyWithImpl<_$_$EmployeesErroredState>(
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
    required TResult Function(_$EmployeesLoadedState value) loaded,
    required TResult Function(_$EmployeesErroredState value) errored,
    required TResult Function(_$EmployeesLoadingState value) loading,
    required TResult Function(_$EmployeesUpdatedState value) updated,
    required TResult Function(_$EmployeesInitialState value) initial,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeesLoadedState value)? loaded,
    TResult? Function(_$EmployeesErroredState value)? errored,
    TResult? Function(_$EmployeesLoadingState value)? loading,
    TResult? Function(_$EmployeesUpdatedState value)? updated,
    TResult? Function(_$EmployeesInitialState value)? initial,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeesLoadedState value)? loaded,
    TResult Function(_$EmployeesErroredState value)? errored,
    TResult Function(_$EmployeesLoadingState value)? loading,
    TResult Function(_$EmployeesUpdatedState value)? updated,
    TResult Function(_$EmployeesInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$EmployeesErroredState implements EmployeesState {
  const factory _$EmployeesErroredState(final String error) =
      _$_$EmployeesErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$EmployeesErroredStateCopyWith<_$_$EmployeesErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeesLoadingStateCopyWith<$Res> {
  factory _$$_$EmployeesLoadingStateCopyWith(_$_$EmployeesLoadingState value,
          $Res Function(_$_$EmployeesLoadingState) then) =
      __$$_$EmployeesLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$EmployeesLoadingStateCopyWithImpl<$Res>
    extends _$EmployeesStateCopyWithImpl<$Res, _$_$EmployeesLoadingState>
    implements _$$_$EmployeesLoadingStateCopyWith<$Res> {
  __$$_$EmployeesLoadingStateCopyWithImpl(_$_$EmployeesLoadingState _value,
      $Res Function(_$_$EmployeesLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$EmployeesLoadingState implements _$EmployeesLoadingState {
  const _$_$EmployeesLoadingState();

  @override
  String toString() {
    return 'EmployeesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeesLoadingState);
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
    required TResult Function(_$EmployeesLoadedState value) loaded,
    required TResult Function(_$EmployeesErroredState value) errored,
    required TResult Function(_$EmployeesLoadingState value) loading,
    required TResult Function(_$EmployeesUpdatedState value) updated,
    required TResult Function(_$EmployeesInitialState value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeesLoadedState value)? loaded,
    TResult? Function(_$EmployeesErroredState value)? errored,
    TResult? Function(_$EmployeesLoadingState value)? loading,
    TResult? Function(_$EmployeesUpdatedState value)? updated,
    TResult? Function(_$EmployeesInitialState value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeesLoadedState value)? loaded,
    TResult Function(_$EmployeesErroredState value)? errored,
    TResult Function(_$EmployeesLoadingState value)? loading,
    TResult Function(_$EmployeesUpdatedState value)? updated,
    TResult Function(_$EmployeesInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$EmployeesLoadingState implements EmployeesState {
  const factory _$EmployeesLoadingState() = _$_$EmployeesLoadingState;
}

/// @nodoc
abstract class _$$_$EmployeesUpdatedStateCopyWith<$Res> {
  factory _$$_$EmployeesUpdatedStateCopyWith(_$_$EmployeesUpdatedState value,
          $Res Function(_$_$EmployeesUpdatedState) then) =
      __$$_$EmployeesUpdatedStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$EmployeesUpdatedStateCopyWithImpl<$Res>
    extends _$EmployeesStateCopyWithImpl<$Res, _$_$EmployeesUpdatedState>
    implements _$$_$EmployeesUpdatedStateCopyWith<$Res> {
  __$$_$EmployeesUpdatedStateCopyWithImpl(_$_$EmployeesUpdatedState _value,
      $Res Function(_$_$EmployeesUpdatedState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$EmployeesUpdatedState implements _$EmployeesUpdatedState {
  const _$_$EmployeesUpdatedState();

  @override
  String toString() {
    return 'EmployeesState.updated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeesUpdatedState);
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
    required TResult Function(_$EmployeesLoadedState value) loaded,
    required TResult Function(_$EmployeesErroredState value) errored,
    required TResult Function(_$EmployeesLoadingState value) loading,
    required TResult Function(_$EmployeesUpdatedState value) updated,
    required TResult Function(_$EmployeesInitialState value) initial,
  }) {
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeesLoadedState value)? loaded,
    TResult? Function(_$EmployeesErroredState value)? errored,
    TResult? Function(_$EmployeesLoadingState value)? loading,
    TResult? Function(_$EmployeesUpdatedState value)? updated,
    TResult? Function(_$EmployeesInitialState value)? initial,
  }) {
    return updated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeesLoadedState value)? loaded,
    TResult Function(_$EmployeesErroredState value)? errored,
    TResult Function(_$EmployeesLoadingState value)? loading,
    TResult Function(_$EmployeesUpdatedState value)? updated,
    TResult Function(_$EmployeesInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _$EmployeesUpdatedState implements EmployeesState {
  const factory _$EmployeesUpdatedState() = _$_$EmployeesUpdatedState;
}

/// @nodoc
abstract class _$$_$EmployeesInitialStateCopyWith<$Res> {
  factory _$$_$EmployeesInitialStateCopyWith(_$_$EmployeesInitialState value,
          $Res Function(_$_$EmployeesInitialState) then) =
      __$$_$EmployeesInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$EmployeesInitialStateCopyWithImpl<$Res>
    extends _$EmployeesStateCopyWithImpl<$Res, _$_$EmployeesInitialState>
    implements _$$_$EmployeesInitialStateCopyWith<$Res> {
  __$$_$EmployeesInitialStateCopyWithImpl(_$_$EmployeesInitialState _value,
      $Res Function(_$_$EmployeesInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$EmployeesInitialState implements _$EmployeesInitialState {
  const _$_$EmployeesInitialState();

  @override
  String toString() {
    return 'EmployeesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeesInitialState);
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
    required TResult Function(_$EmployeesLoadedState value) loaded,
    required TResult Function(_$EmployeesErroredState value) errored,
    required TResult Function(_$EmployeesLoadingState value) loading,
    required TResult Function(_$EmployeesUpdatedState value) updated,
    required TResult Function(_$EmployeesInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeesLoadedState value)? loaded,
    TResult? Function(_$EmployeesErroredState value)? errored,
    TResult? Function(_$EmployeesLoadingState value)? loading,
    TResult? Function(_$EmployeesUpdatedState value)? updated,
    TResult? Function(_$EmployeesInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeesLoadedState value)? loaded,
    TResult Function(_$EmployeesErroredState value)? errored,
    TResult Function(_$EmployeesLoadingState value)? loading,
    TResult Function(_$EmployeesUpdatedState value)? updated,
    TResult Function(_$EmployeesInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$EmployeesInitialState implements EmployeesState {
  const factory _$EmployeesInitialState() = _$_$EmployeesInitialState;
}
