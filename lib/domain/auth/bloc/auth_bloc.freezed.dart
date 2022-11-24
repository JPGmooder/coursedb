// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  bool get isRemember => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password, bool isRemember)
        logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password, bool isRemember)? logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password, bool isRemember)? logIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthEventCopyWith<AuthEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
  @useResult
  $Res call({String login, String password, bool isRemember});
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? isRemember = null,
  }) {
    return _then(_value.copyWith(
      login: null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      isRemember: null == isRemember
          ? _value.isRemember
          : isRemember // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_$AuthLogInEventCopyWith<$Res>
    implements $AuthEventCopyWith<$Res> {
  factory _$$_$AuthLogInEventCopyWith(
          _$_$AuthLogInEvent value, $Res Function(_$_$AuthLogInEvent) then) =
      __$$_$AuthLogInEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String login, String password, bool isRemember});
}

/// @nodoc
class __$$_$AuthLogInEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_$AuthLogInEvent>
    implements _$$_$AuthLogInEventCopyWith<$Res> {
  __$$_$AuthLogInEventCopyWithImpl(
      _$_$AuthLogInEvent _value, $Res Function(_$_$AuthLogInEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? isRemember = null,
  }) {
    return _then(_$_$AuthLogInEvent(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == isRemember
          ? _value.isRemember
          : isRemember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$AuthLogInEvent implements _$AuthLogInEvent {
  const _$_$AuthLogInEvent(this.login, this.password, this.isRemember);

  @override
  final String login;
  @override
  final String password;
  @override
  final bool isRemember;

  @override
  String toString() {
    return 'AuthEvent.logIn(login: $login, password: $password, isRemember: $isRemember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthLogInEvent &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isRemember, isRemember) ||
                other.isRemember == isRemember));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password, isRemember);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthLogInEventCopyWith<_$_$AuthLogInEvent> get copyWith =>
      __$$_$AuthLogInEventCopyWithImpl<_$_$AuthLogInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password, bool isRemember)
        logIn,
  }) {
    return logIn(login, password, isRemember);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password, bool isRemember)? logIn,
  }) {
    return logIn?.call(login, password, isRemember);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password, bool isRemember)? logIn,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(login, password, isRemember);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _$AuthLogInEvent implements AuthEvent {
  const factory _$AuthLogInEvent(
          final String login, final String password, final bool isRemember) =
      _$_$AuthLogInEvent;

  @override
  String get login;
  @override
  String get password;
  @override
  bool get isRemember;
  @override
  @JsonKey(ignore: true)
  _$$_$AuthLogInEventCopyWith<_$_$AuthLogInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)
        logedIn,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogedOutState value) logedOut,
    required TResult Function(_$AuthErroredState value) errored,
    required TResult Function(_$AuthLoadingState value) loading,
    required TResult Function(_$AuthLogedInState value) logedIn,
    required TResult Function(_$AuthInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$AuthLogedOutStateCopyWith<$Res> {
  factory _$$_$AuthLogedOutStateCopyWith(_$_$AuthLogedOutState value,
          $Res Function(_$_$AuthLogedOutState) then) =
      __$$_$AuthLogedOutStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthLogedOutStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthLogedOutState>
    implements _$$_$AuthLogedOutStateCopyWith<$Res> {
  __$$_$AuthLogedOutStateCopyWithImpl(
      _$_$AuthLogedOutState _value, $Res Function(_$_$AuthLogedOutState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$AuthLogedOutState implements _$AuthLogedOutState {
  const _$_$AuthLogedOutState();

  @override
  String toString() {
    return 'AuthState.logedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$AuthLogedOutState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)
        logedIn,
    required TResult Function() initial,
  }) {
    return logedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult? Function()? initial,
  }) {
    return logedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (logedOut != null) {
      return logedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogedOutState value) logedOut,
    required TResult Function(_$AuthErroredState value) errored,
    required TResult Function(_$AuthLoadingState value) loading,
    required TResult Function(_$AuthLogedInState value) logedIn,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return logedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return logedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (logedOut != null) {
      return logedOut(this);
    }
    return orElse();
  }
}

abstract class _$AuthLogedOutState implements AuthState {
  const factory _$AuthLogedOutState() = _$_$AuthLogedOutState;
}

/// @nodoc
abstract class _$$_$AuthErroredStateCopyWith<$Res> {
  factory _$$_$AuthErroredStateCopyWith(_$_$AuthErroredState value,
          $Res Function(_$_$AuthErroredState) then) =
      __$$_$AuthErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$AuthErroredStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthErroredState>
    implements _$$_$AuthErroredStateCopyWith<$Res> {
  __$$_$AuthErroredStateCopyWithImpl(
      _$_$AuthErroredState _value, $Res Function(_$_$AuthErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$AuthErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$AuthErroredState implements _$AuthErroredState {
  const _$_$AuthErroredState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'AuthState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthErroredStateCopyWith<_$_$AuthErroredState> get copyWith =>
      __$$_$AuthErroredStateCopyWithImpl<_$_$AuthErroredState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)
        logedIn,
    required TResult Function() initial,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult? Function()? initial,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
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
    required TResult Function(_$AuthLogedOutState value) logedOut,
    required TResult Function(_$AuthErroredState value) errored,
    required TResult Function(_$AuthLoadingState value) loading,
    required TResult Function(_$AuthLogedInState value) logedIn,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$AuthErroredState implements AuthState {
  const factory _$AuthErroredState(final String error) = _$_$AuthErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$AuthErroredStateCopyWith<_$_$AuthErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthLoadingStateCopyWith<$Res> {
  factory _$$_$AuthLoadingStateCopyWith(_$_$AuthLoadingState value,
          $Res Function(_$_$AuthLoadingState) then) =
      __$$_$AuthLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthLoadingStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthLoadingState>
    implements _$$_$AuthLoadingStateCopyWith<$Res> {
  __$$_$AuthLoadingStateCopyWithImpl(
      _$_$AuthLoadingState _value, $Res Function(_$_$AuthLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$AuthLoadingState implements _$AuthLoadingState {
  const _$_$AuthLoadingState();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$AuthLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)
        logedIn,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
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
    required TResult Function(_$AuthLogedOutState value) logedOut,
    required TResult Function(_$AuthErroredState value) errored,
    required TResult Function(_$AuthLoadingState value) loading,
    required TResult Function(_$AuthLogedInState value) logedIn,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$AuthLoadingState implements AuthState {
  const factory _$AuthLoadingState() = _$_$AuthLoadingState;
}

/// @nodoc
abstract class _$$_$AuthLogedInStateCopyWith<$Res> {
  factory _$$_$AuthLogedInStateCopyWith(_$_$AuthLogedInState value,
          $Res Function(_$_$AuthLogedInState) then) =
      __$$_$AuthLogedInStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String login,
      String password,
      String email,
      UserPersonalDataModel? data,
      String post});
}

/// @nodoc
class __$$_$AuthLogedInStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthLogedInState>
    implements _$$_$AuthLogedInStateCopyWith<$Res> {
  __$$_$AuthLogedInStateCopyWithImpl(
      _$_$AuthLogedInState _value, $Res Function(_$_$AuthLogedInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? email = null,
    Object? data = freezed,
    Object? post = null,
  }) {
    return _then(_$_$AuthLogedInState(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserPersonalDataModel?,
      null == post
          ? _value.post
          : post // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$AuthLogedInState implements _$AuthLogedInState {
  const _$_$AuthLogedInState(
      this.login, this.password, this.email, this.data, this.post);

  @override
  final String login;
  @override
  final String password;
  @override
  final String email;
  @override
  final UserPersonalDataModel? data;
  @override
  final String post;

  @override
  String toString() {
    return 'AuthState.logedIn(login: $login, password: $password, email: $email, data: $data, post: $post)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthLogedInState &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, login, password, email, data, post);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthLogedInStateCopyWith<_$_$AuthLogedInState> get copyWith =>
      __$$_$AuthLogedInStateCopyWithImpl<_$_$AuthLogedInState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)
        logedIn,
    required TResult Function() initial,
  }) {
    return logedIn(login, password, email, data, post);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult? Function()? initial,
  }) {
    return logedIn?.call(login, password, email, data, post);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(login, password, email, data, post);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogedOutState value) logedOut,
    required TResult Function(_$AuthErroredState value) errored,
    required TResult Function(_$AuthLoadingState value) loading,
    required TResult Function(_$AuthLogedInState value) logedIn,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return logedIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return logedIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(this);
    }
    return orElse();
  }
}

abstract class _$AuthLogedInState implements AuthState {
  const factory _$AuthLogedInState(
      final String login,
      final String password,
      final String email,
      final UserPersonalDataModel? data,
      final String post) = _$_$AuthLogedInState;

  String get login;
  String get password;
  String get email;
  UserPersonalDataModel? get data;
  String get post;
  @JsonKey(ignore: true)
  _$$_$AuthLogedInStateCopyWith<_$_$AuthLogedInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthInitialStateCopyWith<$Res> {
  factory _$$_$AuthInitialStateCopyWith(_$_$AuthInitialState value,
          $Res Function(_$_$AuthInitialState) then) =
      __$$_$AuthInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AuthInitialStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthInitialState>
    implements _$$_$AuthInitialStateCopyWith<$Res> {
  __$$_$AuthInitialStateCopyWithImpl(
      _$_$AuthInitialState _value, $Res Function(_$_$AuthInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$AuthInitialState implements _$AuthInitialState {
  const _$_$AuthInitialState();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$AuthInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error) errored,
    required TResult Function() loading,
    required TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)
        logedIn,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error)? errored,
    TResult? Function()? loading,
    TResult? Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error)? errored,
    TResult Function()? loading,
    TResult Function(String login, String password, String email,
            UserPersonalDataModel? data, String post)?
        logedIn,
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
    required TResult Function(_$AuthLogedOutState value) logedOut,
    required TResult Function(_$AuthErroredState value) errored,
    required TResult Function(_$AuthLoadingState value) loading,
    required TResult Function(_$AuthLogedInState value) logedIn,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$AuthInitialState implements AuthState {
  const factory _$AuthInitialState() = _$_$AuthInitialState;
}
