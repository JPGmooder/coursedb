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
    required TResult Function(List<Map<String, dynamic>> user) userAdded,
    required TResult Function(List<Map<String, dynamic>> user) userUpdated,
    required TResult Function(List<String> userLogin) userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function(List<Map<String, dynamic>> user)? userAdded,
    TResult? Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult? Function(List<String> userLogin)? userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function(List<Map<String, dynamic>> user)? userAdded,
    TResult Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult Function(List<String> userLogin)? userDeleted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersUserAddedState value) userAdded,
    required TResult Function(_$UsersUserUpdatedState value) userUpdated,
    required TResult Function(_$UsersUserDeletedState value) userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersUserAddedState value)? userAdded,
    TResult? Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult? Function(_$UsersUserDeletedState value)? userDeleted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersUserAddedState value)? userAdded,
    TResult Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult Function(_$UsersUserDeletedState value)? userDeleted,
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
    required TResult Function(List<Map<String, dynamic>> user) userAdded,
    required TResult Function(List<Map<String, dynamic>> user) userUpdated,
    required TResult Function(List<String> userLogin) userDeleted,
  }) {
    return loaded(users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function(List<Map<String, dynamic>> user)? userAdded,
    TResult? Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult? Function(List<String> userLogin)? userDeleted,
  }) {
    return loaded?.call(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function(List<Map<String, dynamic>> user)? userAdded,
    TResult Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult Function(List<String> userLogin)? userDeleted,
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
    required TResult Function(_$UsersUserAddedState value) userAdded,
    required TResult Function(_$UsersUserUpdatedState value) userUpdated,
    required TResult Function(_$UsersUserDeletedState value) userDeleted,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersUserAddedState value)? userAdded,
    TResult? Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult? Function(_$UsersUserDeletedState value)? userDeleted,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersUserAddedState value)? userAdded,
    TResult Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult Function(_$UsersUserDeletedState value)? userDeleted,
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
    required TResult Function(List<Map<String, dynamic>> user) userAdded,
    required TResult Function(List<Map<String, dynamic>> user) userUpdated,
    required TResult Function(List<String> userLogin) userDeleted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function(List<Map<String, dynamic>> user)? userAdded,
    TResult? Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult? Function(List<String> userLogin)? userDeleted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function(List<Map<String, dynamic>> user)? userAdded,
    TResult Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult Function(List<String> userLogin)? userDeleted,
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
    required TResult Function(_$UsersUserAddedState value) userAdded,
    required TResult Function(_$UsersUserUpdatedState value) userUpdated,
    required TResult Function(_$UsersUserDeletedState value) userDeleted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersUserAddedState value)? userAdded,
    TResult? Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult? Function(_$UsersUserDeletedState value)? userDeleted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersUserAddedState value)? userAdded,
    TResult Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult Function(_$UsersUserDeletedState value)? userDeleted,
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
abstract class _$$_$UsersUserAddedStateCopyWith<$Res> {
  factory _$$_$UsersUserAddedStateCopyWith(_$_$UsersUserAddedState value,
          $Res Function(_$_$UsersUserAddedState) then) =
      __$$_$UsersUserAddedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> user});
}

/// @nodoc
class __$$_$UsersUserAddedStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_$UsersUserAddedState>
    implements _$$_$UsersUserAddedStateCopyWith<$Res> {
  __$$_$UsersUserAddedStateCopyWithImpl(_$_$UsersUserAddedState _value,
      $Res Function(_$_$UsersUserAddedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_$UsersUserAddedState(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_$UsersUserAddedState implements _$UsersUserAddedState {
  const _$_$UsersUserAddedState(final List<Map<String, dynamic>> user)
      : _user = user;

  final List<Map<String, dynamic>> _user;
  @override
  List<Map<String, dynamic>> get user {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'UsersState.userAdded(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$UsersUserAddedState &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$UsersUserAddedStateCopyWith<_$_$UsersUserAddedState> get copyWith =>
      __$$_$UsersUserAddedStateCopyWithImpl<_$_$UsersUserAddedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) loaded,
    required TResult Function() initial,
    required TResult Function(List<Map<String, dynamic>> user) userAdded,
    required TResult Function(List<Map<String, dynamic>> user) userUpdated,
    required TResult Function(List<String> userLogin) userDeleted,
  }) {
    return userAdded(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function(List<Map<String, dynamic>> user)? userAdded,
    TResult? Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult? Function(List<String> userLogin)? userDeleted,
  }) {
    return userAdded?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function(List<Map<String, dynamic>> user)? userAdded,
    TResult Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult Function(List<String> userLogin)? userDeleted,
    required TResult orElse(),
  }) {
    if (userAdded != null) {
      return userAdded(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersUserAddedState value) userAdded,
    required TResult Function(_$UsersUserUpdatedState value) userUpdated,
    required TResult Function(_$UsersUserDeletedState value) userDeleted,
  }) {
    return userAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersUserAddedState value)? userAdded,
    TResult? Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult? Function(_$UsersUserDeletedState value)? userDeleted,
  }) {
    return userAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersUserAddedState value)? userAdded,
    TResult Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult Function(_$UsersUserDeletedState value)? userDeleted,
    required TResult orElse(),
  }) {
    if (userAdded != null) {
      return userAdded(this);
    }
    return orElse();
  }
}

abstract class _$UsersUserAddedState implements UsersState {
  const factory _$UsersUserAddedState(final List<Map<String, dynamic>> user) =
      _$_$UsersUserAddedState;

  List<Map<String, dynamic>> get user;
  @JsonKey(ignore: true)
  _$$_$UsersUserAddedStateCopyWith<_$_$UsersUserAddedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$UsersUserUpdatedStateCopyWith<$Res> {
  factory _$$_$UsersUserUpdatedStateCopyWith(_$_$UsersUserUpdatedState value,
          $Res Function(_$_$UsersUserUpdatedState) then) =
      __$$_$UsersUserUpdatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> user});
}

/// @nodoc
class __$$_$UsersUserUpdatedStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_$UsersUserUpdatedState>
    implements _$$_$UsersUserUpdatedStateCopyWith<$Res> {
  __$$_$UsersUserUpdatedStateCopyWithImpl(_$_$UsersUserUpdatedState _value,
      $Res Function(_$_$UsersUserUpdatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_$UsersUserUpdatedState(
      null == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_$UsersUserUpdatedState implements _$UsersUserUpdatedState {
  const _$_$UsersUserUpdatedState(final List<Map<String, dynamic>> user)
      : _user = user;

  final List<Map<String, dynamic>> _user;
  @override
  List<Map<String, dynamic>> get user {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_user);
  }

  @override
  String toString() {
    return 'UsersState.userUpdated(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$UsersUserUpdatedState &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$UsersUserUpdatedStateCopyWith<_$_$UsersUserUpdatedState> get copyWith =>
      __$$_$UsersUserUpdatedStateCopyWithImpl<_$_$UsersUserUpdatedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) loaded,
    required TResult Function() initial,
    required TResult Function(List<Map<String, dynamic>> user) userAdded,
    required TResult Function(List<Map<String, dynamic>> user) userUpdated,
    required TResult Function(List<String> userLogin) userDeleted,
  }) {
    return userUpdated(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function(List<Map<String, dynamic>> user)? userAdded,
    TResult? Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult? Function(List<String> userLogin)? userDeleted,
  }) {
    return userUpdated?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function(List<Map<String, dynamic>> user)? userAdded,
    TResult Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult Function(List<String> userLogin)? userDeleted,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersUserAddedState value) userAdded,
    required TResult Function(_$UsersUserUpdatedState value) userUpdated,
    required TResult Function(_$UsersUserDeletedState value) userDeleted,
  }) {
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersUserAddedState value)? userAdded,
    TResult? Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult? Function(_$UsersUserDeletedState value)? userDeleted,
  }) {
    return userUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersUserAddedState value)? userAdded,
    TResult Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult Function(_$UsersUserDeletedState value)? userDeleted,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class _$UsersUserUpdatedState implements UsersState {
  const factory _$UsersUserUpdatedState(final List<Map<String, dynamic>> user) =
      _$_$UsersUserUpdatedState;

  List<Map<String, dynamic>> get user;
  @JsonKey(ignore: true)
  _$$_$UsersUserUpdatedStateCopyWith<_$_$UsersUserUpdatedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$UsersUserDeletedStateCopyWith<$Res> {
  factory _$$_$UsersUserDeletedStateCopyWith(_$_$UsersUserDeletedState value,
          $Res Function(_$_$UsersUserDeletedState) then) =
      __$$_$UsersUserDeletedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> userLogin});
}

/// @nodoc
class __$$_$UsersUserDeletedStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res, _$_$UsersUserDeletedState>
    implements _$$_$UsersUserDeletedStateCopyWith<$Res> {
  __$$_$UsersUserDeletedStateCopyWithImpl(_$_$UsersUserDeletedState _value,
      $Res Function(_$_$UsersUserDeletedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
  }) {
    return _then(_$_$UsersUserDeletedState(
      null == userLogin
          ? _value._userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_$UsersUserDeletedState implements _$UsersUserDeletedState {
  const _$_$UsersUserDeletedState(final List<String> userLogin)
      : _userLogin = userLogin;

  final List<String> _userLogin;
  @override
  List<String> get userLogin {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userLogin);
  }

  @override
  String toString() {
    return 'UsersState.userDeleted(userLogin: $userLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$UsersUserDeletedState &&
            const DeepCollectionEquality()
                .equals(other._userLogin, _userLogin));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_userLogin));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$UsersUserDeletedStateCopyWith<_$_$UsersUserDeletedState> get copyWith =>
      __$$_$UsersUserDeletedStateCopyWithImpl<_$_$UsersUserDeletedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Map<String, dynamic>> users) loaded,
    required TResult Function() initial,
    required TResult Function(List<Map<String, dynamic>> user) userAdded,
    required TResult Function(List<Map<String, dynamic>> user) userUpdated,
    required TResult Function(List<String> userLogin) userDeleted,
  }) {
    return userDeleted(userLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Map<String, dynamic>> users)? loaded,
    TResult? Function()? initial,
    TResult? Function(List<Map<String, dynamic>> user)? userAdded,
    TResult? Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult? Function(List<String> userLogin)? userDeleted,
  }) {
    return userDeleted?.call(userLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Map<String, dynamic>> users)? loaded,
    TResult Function()? initial,
    TResult Function(List<Map<String, dynamic>> user)? userAdded,
    TResult Function(List<Map<String, dynamic>> user)? userUpdated,
    TResult Function(List<String> userLogin)? userDeleted,
    required TResult orElse(),
  }) {
    if (userDeleted != null) {
      return userDeleted(userLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$UsersLoadedState value) loaded,
    required TResult Function(_$UsersInitialState value) initial,
    required TResult Function(_$UsersUserAddedState value) userAdded,
    required TResult Function(_$UsersUserUpdatedState value) userUpdated,
    required TResult Function(_$UsersUserDeletedState value) userDeleted,
  }) {
    return userDeleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$UsersLoadedState value)? loaded,
    TResult? Function(_$UsersInitialState value)? initial,
    TResult? Function(_$UsersUserAddedState value)? userAdded,
    TResult? Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult? Function(_$UsersUserDeletedState value)? userDeleted,
  }) {
    return userDeleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$UsersLoadedState value)? loaded,
    TResult Function(_$UsersInitialState value)? initial,
    TResult Function(_$UsersUserAddedState value)? userAdded,
    TResult Function(_$UsersUserUpdatedState value)? userUpdated,
    TResult Function(_$UsersUserDeletedState value)? userDeleted,
    required TResult orElse(),
  }) {
    if (userDeleted != null) {
      return userDeleted(this);
    }
    return orElse();
  }
}

abstract class _$UsersUserDeletedState implements UsersState {
  const factory _$UsersUserDeletedState(final List<String> userLogin) =
      _$_$UsersUserDeletedState;

  List<String> get userLogin;
  @JsonKey(ignore: true)
  _$$_$UsersUserDeletedStateCopyWith<_$_$UsersUserDeletedState> get copyWith =>
      throw _privateConstructorUsedError;
}
