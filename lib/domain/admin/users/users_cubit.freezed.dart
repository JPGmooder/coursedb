// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> users) usersManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> users)? usersManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> users)? usersManaged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersLoadingState value) loading,
    required TResult Function(_$UsersManagedState value) usersManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersLoadingState value)? loading,
    TResult? Function(_$UsersManagedState value)? usersManaged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersLoadingState value)? loading,
    TResult Function(_$UsersManagedState value)? usersManaged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res, UsersState>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res, $Val extends UsersState>
    implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$UsersLoadedStateCopyWith<$Res> {
  factory _$$_$UsersLoadedStateCopyWith(_$_$UsersLoadedState value,
          $Res Function(_$_$UsersLoadedState) then) =
      __$$_$UsersLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> users});
}

/// @nodoc
class __$$_$UsersLoadedStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_$UsersLoadedState>
    implements _$$_$UsersLoadedStateCopyWith<$Res> {
  __$$_$UsersLoadedStateCopyWithImpl(
      _$_$UsersLoadedState _value, $Res Function(_$_$UsersLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_$UsersLoadedState(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_$UsersLoadedState implements _$UsersLoadedState {
  const _$_$UsersLoadedState(final List<Map<String, dynamic>> users)
      : _users = users;

  final List<Map<String, dynamic>> _users;
  @override
  List<Map<String, dynamic>> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'UsersState.loaded(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$UsersLoadedState &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$UsersLoadedStateCopyWith<_$_$UsersLoadedState> get copyWith =>
      __$$_$UsersLoadedStateCopyWithImpl<_$_$UsersLoadedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> users) usersManaged,
  }) {
    return loaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> users)? usersManaged,
  }) {
    return loaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> users)? usersManaged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersLoadingState value) loading,
    required TResult Function(_$UsersManagedState value) usersManaged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersLoadingState value)? loading,
    TResult? Function(_$UsersManagedState value)? usersManaged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersLoadingState value)? loading,
    TResult Function(_$UsersManagedState value)? usersManaged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$UsersLoadedState implements UsersState {
  const factory _$UsersLoadedState(final List<Map<String, dynamic>> users) =
      _$_$UsersLoadedState;

  List<Map<String, dynamic>> get users;
  @JsonKey(ignore: true)
  _$$_$UsersLoadedStateCopyWith<_$_$UsersLoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$UsersInitialStateCopyWith<$Res> {
  factory _$$_$UsersInitialStateCopyWith(_$_$UsersInitialState value,
          $Res Function(_$_$UsersInitialState) then) =
      __$$_$UsersInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$UsersInitialStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_$UsersInitialState>
    implements _$$_$UsersInitialStateCopyWith<$Res> {
  __$$_$UsersInitialStateCopyWithImpl(
      _$_$UsersInitialState _value, $Res Function(_$_$UsersInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$UsersInitialState implements _$UsersInitialState {
  const _$_$UsersInitialState();

  @override
  String toString() {
    return 'UsersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$UsersInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> users) usersManaged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> users)? usersManaged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> users)? usersManaged,
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
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersLoadingState value) loading,
    required TResult Function(_$UsersManagedState value) usersManaged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersLoadingState value)? loading,
    TResult? Function(_$UsersManagedState value)? usersManaged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersLoadingState value)? loading,
    TResult Function(_$UsersManagedState value)? usersManaged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$UsersInitialState implements UsersState {
  const factory _$UsersInitialState() = _$_$UsersInitialState;
}

/// @nodoc
abstract class _$$_$UsersLoadingStateCopyWith<$Res> {
  factory _$$_$UsersLoadingStateCopyWith(_$_$UsersLoadingState value,
          $Res Function(_$_$UsersLoadingState) then) =
      __$$_$UsersLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$UsersLoadingStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_$UsersLoadingState>
    implements _$$_$UsersLoadingStateCopyWith<$Res> {
  __$$_$UsersLoadingStateCopyWithImpl(
      _$_$UsersLoadingState _value, $Res Function(_$_$UsersLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$UsersLoadingState implements _$UsersLoadingState {
  const _$_$UsersLoadingState();

  @override
  String toString() {
    return 'UsersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$UsersLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> users) usersManaged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> users)? usersManaged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> users)? usersManaged,
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
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersLoadingState value) loading,
    required TResult Function(_$UsersManagedState value) usersManaged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersLoadingState value)? loading,
    TResult? Function(_$UsersManagedState value)? usersManaged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersLoadingState value)? loading,
    TResult Function(_$UsersManagedState value)? usersManaged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$UsersLoadingState implements UsersState {
  const factory _$UsersLoadingState() = _$_$UsersLoadingState;
}

/// @nodoc
abstract class _$$_$UsersManagedStateCopyWith<$Res> {
  factory _$$_$UsersManagedStateCopyWith(_$_$UsersManagedState value,
          $Res Function(_$_$UsersManagedState) then) =
      __$$_$UsersManagedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, dynamic> users});
}

/// @nodoc
class __$$_$UsersManagedStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_$UsersManagedState>
    implements _$$_$UsersManagedStateCopyWith<$Res> {
  __$$_$UsersManagedStateCopyWithImpl(
      _$_$UsersManagedState _value, $Res Function(_$_$UsersManagedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
  }) {
    return _then(_$_$UsersManagedState(
      null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_$UsersManagedState implements _$UsersManagedState {
  const _$_$UsersManagedState(final Map<String, dynamic> users)
      : _users = users;

  final Map<String, dynamic> _users;
  @override
  Map<String, dynamic> get users {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_users);
  }

  @override
  String toString() {
    return 'UsersState.usersManaged(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$UsersManagedState &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$UsersManagedStateCopyWith<_$_$UsersManagedState> get copyWith =>
      __$$_$UsersManagedStateCopyWithImpl<_$_$UsersManagedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) loaded,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Map<String, dynamic> users) usersManaged,
  }) {
    return usersManaged(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Map<String, dynamic> users)? usersManaged,
  }) {
    return usersManaged?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Map<String, dynamic> users)? usersManaged,
    required TResult orElse(),
  }) {
    if (usersManaged != null) {
      return usersManaged(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersLoadingState value) loading,
    required TResult Function(_$UsersManagedState value) usersManaged,
  }) {
    return usersManaged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersLoadingState value)? loading,
    TResult? Function(_$UsersManagedState value)? usersManaged,
  }) {
    return usersManaged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersLoadingState value)? loading,
    TResult Function(_$UsersManagedState value)? usersManaged,
    required TResult orElse(),
  }) {
    if (usersManaged != null) {
      return usersManaged(this);
    }
    return orElse();
  }
}

abstract class _$UsersManagedState implements UsersState {
  const factory _$UsersManagedState(final Map<String, dynamic> users) =
      _$_$UsersManagedState;

  Map<String, dynamic> get users;
  @JsonKey(ignore: true)
  _$$_$UsersManagedStateCopyWith<_$_$UsersManagedState> get copyWith =>
      throw _privateConstructorUsedError;
}
