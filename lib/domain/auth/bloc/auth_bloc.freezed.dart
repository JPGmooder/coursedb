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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function(String login) findAddressUser,
    required TResult Function(AddressModel addressModel) addAddress,
    required TResult Function(String login, String password, String email)
        regNew,
    required TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)
        addPersonalData,
    required TResult Function(UserPersonalDataModel data, String userLogin)
        updatePersonalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function(String login)? findAddressUser,
    TResult? Function(AddressModel addressModel)? addAddress,
    TResult? Function(String login, String password, String email)? regNew,
    TResult? Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult? Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function(String login)? findAddressUser,
    TResult Function(AddressModel addressModel)? addAddress,
    TResult Function(String login, String password, String email)? regNew,
    TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
    required TResult Function(_$AuthFindAddressByUserEvent value)
        findAddressUser,
    required TResult Function(_$AuthAddAddressEvent value) addAddress,
    required TResult Function(_$AuthRegNewEvent value) regNew,
    required TResult Function(_$AutAddPersonalDataEvent value) addPersonalData,
    required TResult Function(_$AutUpdatePersonalDataEvent value)
        updatePersonalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
    TResult? Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult? Function(_$AuthAddAddressEvent value)? addAddress,
    TResult? Function(_$AuthRegNewEvent value)? regNew,
    TResult? Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult? Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    TResult Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult Function(_$AuthAddAddressEvent value)? addAddress,
    TResult Function(_$AuthRegNewEvent value)? regNew,
    TResult Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$AuthLogInEventCopyWith<$Res> {
  factory _$$_$AuthLogInEventCopyWith(
          _$_$AuthLogInEvent value, $Res Function(_$_$AuthLogInEvent) then) =
      __$$_$AuthLogInEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password});
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
    ));
  }
}

/// @nodoc

class _$_$AuthLogInEvent implements _$AuthLogInEvent {
  const _$_$AuthLogInEvent(this.login, this.password);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.logIn(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthLogInEvent &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthLogInEventCopyWith<_$_$AuthLogInEvent> get copyWith =>
      __$$_$AuthLogInEventCopyWithImpl<_$_$AuthLogInEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function(String login) findAddressUser,
    required TResult Function(AddressModel addressModel) addAddress,
    required TResult Function(String login, String password, String email)
        regNew,
    required TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)
        addPersonalData,
    required TResult Function(UserPersonalDataModel data, String userLogin)
        updatePersonalData,
  }) {
    return logIn(login, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function(String login)? findAddressUser,
    TResult? Function(AddressModel addressModel)? addAddress,
    TResult? Function(String login, String password, String email)? regNew,
    TResult? Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult? Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
  }) {
    return logIn?.call(login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function(String login)? findAddressUser,
    TResult Function(AddressModel addressModel)? addAddress,
    TResult Function(String login, String password, String email)? regNew,
    TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
    required TResult Function(_$AuthFindAddressByUserEvent value)
        findAddressUser,
    required TResult Function(_$AuthAddAddressEvent value) addAddress,
    required TResult Function(_$AuthRegNewEvent value) regNew,
    required TResult Function(_$AutAddPersonalDataEvent value) addPersonalData,
    required TResult Function(_$AutUpdatePersonalDataEvent value)
        updatePersonalData,
  }) {
    return logIn(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
    TResult? Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult? Function(_$AuthAddAddressEvent value)? addAddress,
    TResult? Function(_$AuthRegNewEvent value)? regNew,
    TResult? Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult? Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
  }) {
    return logIn?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    TResult Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult Function(_$AuthAddAddressEvent value)? addAddress,
    TResult Function(_$AuthRegNewEvent value)? regNew,
    TResult Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
    required TResult orElse(),
  }) {
    if (logIn != null) {
      return logIn(this);
    }
    return orElse();
  }
}

abstract class _$AuthLogInEvent implements AuthEvent {
  const factory _$AuthLogInEvent(final String login, final String password) =
      _$_$AuthLogInEvent;

  String get login;
  String get password;
  @JsonKey(ignore: true)
  _$$_$AuthLogInEventCopyWith<_$_$AuthLogInEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthFindAddressByUserEventCopyWith<$Res> {
  factory _$$_$AuthFindAddressByUserEventCopyWith(
          _$_$AuthFindAddressByUserEvent value,
          $Res Function(_$_$AuthFindAddressByUserEvent) then) =
      __$$_$AuthFindAddressByUserEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String login});
}

/// @nodoc
class __$$_$AuthFindAddressByUserEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_$AuthFindAddressByUserEvent>
    implements _$$_$AuthFindAddressByUserEventCopyWith<$Res> {
  __$$_$AuthFindAddressByUserEventCopyWithImpl(
      _$_$AuthFindAddressByUserEvent _value,
      $Res Function(_$_$AuthFindAddressByUserEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$_$AuthFindAddressByUserEvent(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$AuthFindAddressByUserEvent implements _$AuthFindAddressByUserEvent {
  const _$_$AuthFindAddressByUserEvent(this.login);

  @override
  final String login;

  @override
  String toString() {
    return 'AuthEvent.findAddressUser(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthFindAddressByUserEvent &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthFindAddressByUserEventCopyWith<_$_$AuthFindAddressByUserEvent>
      get copyWith => __$$_$AuthFindAddressByUserEventCopyWithImpl<
          _$_$AuthFindAddressByUserEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function(String login) findAddressUser,
    required TResult Function(AddressModel addressModel) addAddress,
    required TResult Function(String login, String password, String email)
        regNew,
    required TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)
        addPersonalData,
    required TResult Function(UserPersonalDataModel data, String userLogin)
        updatePersonalData,
  }) {
    return findAddressUser(login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function(String login)? findAddressUser,
    TResult? Function(AddressModel addressModel)? addAddress,
    TResult? Function(String login, String password, String email)? regNew,
    TResult? Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult? Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
  }) {
    return findAddressUser?.call(login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function(String login)? findAddressUser,
    TResult Function(AddressModel addressModel)? addAddress,
    TResult Function(String login, String password, String email)? regNew,
    TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
    required TResult orElse(),
  }) {
    if (findAddressUser != null) {
      return findAddressUser(login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
    required TResult Function(_$AuthFindAddressByUserEvent value)
        findAddressUser,
    required TResult Function(_$AuthAddAddressEvent value) addAddress,
    required TResult Function(_$AuthRegNewEvent value) regNew,
    required TResult Function(_$AutAddPersonalDataEvent value) addPersonalData,
    required TResult Function(_$AutUpdatePersonalDataEvent value)
        updatePersonalData,
  }) {
    return findAddressUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
    TResult? Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult? Function(_$AuthAddAddressEvent value)? addAddress,
    TResult? Function(_$AuthRegNewEvent value)? regNew,
    TResult? Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult? Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
  }) {
    return findAddressUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    TResult Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult Function(_$AuthAddAddressEvent value)? addAddress,
    TResult Function(_$AuthRegNewEvent value)? regNew,
    TResult Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
    required TResult orElse(),
  }) {
    if (findAddressUser != null) {
      return findAddressUser(this);
    }
    return orElse();
  }
}

abstract class _$AuthFindAddressByUserEvent implements AuthEvent {
  const factory _$AuthFindAddressByUserEvent(final String login) =
      _$_$AuthFindAddressByUserEvent;

  String get login;
  @JsonKey(ignore: true)
  _$$_$AuthFindAddressByUserEventCopyWith<_$_$AuthFindAddressByUserEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthAddAddressEventCopyWith<$Res> {
  factory _$$_$AuthAddAddressEventCopyWith(_$_$AuthAddAddressEvent value,
          $Res Function(_$_$AuthAddAddressEvent) then) =
      __$$_$AuthAddAddressEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressModel addressModel});
}

/// @nodoc
class __$$_$AuthAddAddressEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_$AuthAddAddressEvent>
    implements _$$_$AuthAddAddressEventCopyWith<$Res> {
  __$$_$AuthAddAddressEventCopyWithImpl(_$_$AuthAddAddressEvent _value,
      $Res Function(_$_$AuthAddAddressEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
  }) {
    return _then(_$_$AuthAddAddressEvent(
      null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

class _$_$AuthAddAddressEvent implements _$AuthAddAddressEvent {
  const _$_$AuthAddAddressEvent(this.addressModel);

  @override
  final AddressModel addressModel;

  @override
  String toString() {
    return 'AuthEvent.addAddress(addressModel: $addressModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthAddAddressEvent &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthAddAddressEventCopyWith<_$_$AuthAddAddressEvent> get copyWith =>
      __$$_$AuthAddAddressEventCopyWithImpl<_$_$AuthAddAddressEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function(String login) findAddressUser,
    required TResult Function(AddressModel addressModel) addAddress,
    required TResult Function(String login, String password, String email)
        regNew,
    required TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)
        addPersonalData,
    required TResult Function(UserPersonalDataModel data, String userLogin)
        updatePersonalData,
  }) {
    return addAddress(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function(String login)? findAddressUser,
    TResult? Function(AddressModel addressModel)? addAddress,
    TResult? Function(String login, String password, String email)? regNew,
    TResult? Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult? Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
  }) {
    return addAddress?.call(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function(String login)? findAddressUser,
    TResult Function(AddressModel addressModel)? addAddress,
    TResult Function(String login, String password, String email)? regNew,
    TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(addressModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
    required TResult Function(_$AuthFindAddressByUserEvent value)
        findAddressUser,
    required TResult Function(_$AuthAddAddressEvent value) addAddress,
    required TResult Function(_$AuthRegNewEvent value) regNew,
    required TResult Function(_$AutAddPersonalDataEvent value) addPersonalData,
    required TResult Function(_$AutUpdatePersonalDataEvent value)
        updatePersonalData,
  }) {
    return addAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
    TResult? Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult? Function(_$AuthAddAddressEvent value)? addAddress,
    TResult? Function(_$AuthRegNewEvent value)? regNew,
    TResult? Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult? Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
  }) {
    return addAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    TResult Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult Function(_$AuthAddAddressEvent value)? addAddress,
    TResult Function(_$AuthRegNewEvent value)? regNew,
    TResult Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
    required TResult orElse(),
  }) {
    if (addAddress != null) {
      return addAddress(this);
    }
    return orElse();
  }
}

abstract class _$AuthAddAddressEvent implements AuthEvent {
  const factory _$AuthAddAddressEvent(final AddressModel addressModel) =
      _$_$AuthAddAddressEvent;

  AddressModel get addressModel;
  @JsonKey(ignore: true)
  _$$_$AuthAddAddressEventCopyWith<_$_$AuthAddAddressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthRegNewEventCopyWith<$Res> {
  factory _$$_$AuthRegNewEventCopyWith(
          _$_$AuthRegNewEvent value, $Res Function(_$_$AuthRegNewEvent) then) =
      __$$_$AuthRegNewEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password, String email});
}

/// @nodoc
class __$$_$AuthRegNewEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_$AuthRegNewEvent>
    implements _$$_$AuthRegNewEventCopyWith<$Res> {
  __$$_$AuthRegNewEventCopyWithImpl(
      _$_$AuthRegNewEvent _value, $Res Function(_$_$AuthRegNewEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$_$AuthRegNewEvent(
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
    ));
  }
}

/// @nodoc

class _$_$AuthRegNewEvent implements _$AuthRegNewEvent {
  const _$_$AuthRegNewEvent(this.login, this.password, this.email);

  @override
  final String login;
  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.regNew(login: $login, password: $password, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthRegNewEvent &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthRegNewEventCopyWith<_$_$AuthRegNewEvent> get copyWith =>
      __$$_$AuthRegNewEventCopyWithImpl<_$_$AuthRegNewEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function(String login) findAddressUser,
    required TResult Function(AddressModel addressModel) addAddress,
    required TResult Function(String login, String password, String email)
        regNew,
    required TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)
        addPersonalData,
    required TResult Function(UserPersonalDataModel data, String userLogin)
        updatePersonalData,
  }) {
    return regNew(login, password, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function(String login)? findAddressUser,
    TResult? Function(AddressModel addressModel)? addAddress,
    TResult? Function(String login, String password, String email)? regNew,
    TResult? Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult? Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
  }) {
    return regNew?.call(login, password, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function(String login)? findAddressUser,
    TResult Function(AddressModel addressModel)? addAddress,
    TResult Function(String login, String password, String email)? regNew,
    TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
    required TResult orElse(),
  }) {
    if (regNew != null) {
      return regNew(login, password, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
    required TResult Function(_$AuthFindAddressByUserEvent value)
        findAddressUser,
    required TResult Function(_$AuthAddAddressEvent value) addAddress,
    required TResult Function(_$AuthRegNewEvent value) regNew,
    required TResult Function(_$AutAddPersonalDataEvent value) addPersonalData,
    required TResult Function(_$AutUpdatePersonalDataEvent value)
        updatePersonalData,
  }) {
    return regNew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
    TResult? Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult? Function(_$AuthAddAddressEvent value)? addAddress,
    TResult? Function(_$AuthRegNewEvent value)? regNew,
    TResult? Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult? Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
  }) {
    return regNew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    TResult Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult Function(_$AuthAddAddressEvent value)? addAddress,
    TResult Function(_$AuthRegNewEvent value)? regNew,
    TResult Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
    required TResult orElse(),
  }) {
    if (regNew != null) {
      return regNew(this);
    }
    return orElse();
  }
}

abstract class _$AuthRegNewEvent implements AuthEvent {
  const factory _$AuthRegNewEvent(
          final String login, final String password, final String email) =
      _$_$AuthRegNewEvent;

  String get login;
  String get password;
  String get email;
  @JsonKey(ignore: true)
  _$$_$AuthRegNewEventCopyWith<_$_$AuthRegNewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AutAddPersonalDataEventCopyWith<$Res> {
  factory _$$_$AutAddPersonalDataEventCopyWith(
          _$_$AutAddPersonalDataEvent value,
          $Res Function(_$_$AutAddPersonalDataEvent) then) =
      __$$_$AutAddPersonalDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String lname,
      String? patronymic,
      DateTime birthday,
      String mobileNumber});
}

/// @nodoc
class __$$_$AutAddPersonalDataEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_$AutAddPersonalDataEvent>
    implements _$$_$AutAddPersonalDataEventCopyWith<$Res> {
  __$$_$AutAddPersonalDataEventCopyWithImpl(_$_$AutAddPersonalDataEvent _value,
      $Res Function(_$_$AutAddPersonalDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lname = null,
    Object? patronymic = freezed,
    Object? birthday = null,
    Object? mobileNumber = null,
  }) {
    return _then(_$_$AutAddPersonalDataEvent(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lname: null == lname
          ? _value.lname
          : lname // ignore: cast_nullable_to_non_nullable
              as String,
      patronymic: freezed == patronymic
          ? _value.patronymic
          : patronymic // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime,
      mobileNumber: null == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$AutAddPersonalDataEvent implements _$AutAddPersonalDataEvent {
  const _$_$AutAddPersonalDataEvent(
      {required this.name,
      required this.lname,
      this.patronymic,
      required this.birthday,
      required this.mobileNumber});

  @override
  final String name;
  @override
  final String lname;
  @override
  final String? patronymic;
  @override
  final DateTime birthday;
  @override
  final String mobileNumber;

  @override
  String toString() {
    return 'AuthEvent.addPersonalData(name: $name, lname: $lname, patronymic: $patronymic, birthday: $birthday, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AutAddPersonalDataEvent &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lname, lname) || other.lname == lname) &&
            (identical(other.patronymic, patronymic) ||
                other.patronymic == patronymic) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, lname, patronymic, birthday, mobileNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AutAddPersonalDataEventCopyWith<_$_$AutAddPersonalDataEvent>
      get copyWith => __$$_$AutAddPersonalDataEventCopyWithImpl<
          _$_$AutAddPersonalDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function(String login) findAddressUser,
    required TResult Function(AddressModel addressModel) addAddress,
    required TResult Function(String login, String password, String email)
        regNew,
    required TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)
        addPersonalData,
    required TResult Function(UserPersonalDataModel data, String userLogin)
        updatePersonalData,
  }) {
    return addPersonalData(name, lname, patronymic, birthday, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function(String login)? findAddressUser,
    TResult? Function(AddressModel addressModel)? addAddress,
    TResult? Function(String login, String password, String email)? regNew,
    TResult? Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult? Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
  }) {
    return addPersonalData?.call(
        name, lname, patronymic, birthday, mobileNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function(String login)? findAddressUser,
    TResult Function(AddressModel addressModel)? addAddress,
    TResult Function(String login, String password, String email)? regNew,
    TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
    required TResult orElse(),
  }) {
    if (addPersonalData != null) {
      return addPersonalData(name, lname, patronymic, birthday, mobileNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
    required TResult Function(_$AuthFindAddressByUserEvent value)
        findAddressUser,
    required TResult Function(_$AuthAddAddressEvent value) addAddress,
    required TResult Function(_$AuthRegNewEvent value) regNew,
    required TResult Function(_$AutAddPersonalDataEvent value) addPersonalData,
    required TResult Function(_$AutUpdatePersonalDataEvent value)
        updatePersonalData,
  }) {
    return addPersonalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
    TResult? Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult? Function(_$AuthAddAddressEvent value)? addAddress,
    TResult? Function(_$AuthRegNewEvent value)? regNew,
    TResult? Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult? Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
  }) {
    return addPersonalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    TResult Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult Function(_$AuthAddAddressEvent value)? addAddress,
    TResult Function(_$AuthRegNewEvent value)? regNew,
    TResult Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
    required TResult orElse(),
  }) {
    if (addPersonalData != null) {
      return addPersonalData(this);
    }
    return orElse();
  }
}

abstract class _$AutAddPersonalDataEvent implements AuthEvent {
  const factory _$AutAddPersonalDataEvent(
      {required final String name,
      required final String lname,
      final String? patronymic,
      required final DateTime birthday,
      required final String mobileNumber}) = _$_$AutAddPersonalDataEvent;

  String get name;
  String get lname;
  String? get patronymic;
  DateTime get birthday;
  String get mobileNumber;
  @JsonKey(ignore: true)
  _$$_$AutAddPersonalDataEventCopyWith<_$_$AutAddPersonalDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AutUpdatePersonalDataEventCopyWith<$Res> {
  factory _$$_$AutUpdatePersonalDataEventCopyWith(
          _$_$AutUpdatePersonalDataEvent value,
          $Res Function(_$_$AutUpdatePersonalDataEvent) then) =
      __$$_$AutUpdatePersonalDataEventCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPersonalDataModel data, String userLogin});
}

/// @nodoc
class __$$_$AutUpdatePersonalDataEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_$AutUpdatePersonalDataEvent>
    implements _$$_$AutUpdatePersonalDataEventCopyWith<$Res> {
  __$$_$AutUpdatePersonalDataEventCopyWithImpl(
      _$_$AutUpdatePersonalDataEvent _value,
      $Res Function(_$_$AutUpdatePersonalDataEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? userLogin = null,
  }) {
    return _then(_$_$AutUpdatePersonalDataEvent(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserPersonalDataModel,
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$AutUpdatePersonalDataEvent implements _$AutUpdatePersonalDataEvent {
  const _$_$AutUpdatePersonalDataEvent(
      {required this.data, required this.userLogin});

  @override
  final UserPersonalDataModel data;
  @override
  final String userLogin;

  @override
  String toString() {
    return 'AuthEvent.updatePersonalData(data: $data, userLogin: $userLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AutUpdatePersonalDataEvent &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data, userLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AutUpdatePersonalDataEventCopyWith<_$_$AutUpdatePersonalDataEvent>
      get copyWith => __$$_$AutUpdatePersonalDataEventCopyWithImpl<
          _$_$AutUpdatePersonalDataEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String login, String password) logIn,
    required TResult Function(String login) findAddressUser,
    required TResult Function(AddressModel addressModel) addAddress,
    required TResult Function(String login, String password, String email)
        regNew,
    required TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)
        addPersonalData,
    required TResult Function(UserPersonalDataModel data, String userLogin)
        updatePersonalData,
  }) {
    return updatePersonalData(data, userLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String login, String password)? logIn,
    TResult? Function(String login)? findAddressUser,
    TResult? Function(AddressModel addressModel)? addAddress,
    TResult? Function(String login, String password, String email)? regNew,
    TResult? Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult? Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
  }) {
    return updatePersonalData?.call(data, userLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String login, String password)? logIn,
    TResult Function(String login)? findAddressUser,
    TResult Function(AddressModel addressModel)? addAddress,
    TResult Function(String login, String password, String email)? regNew,
    TResult Function(String name, String lname, String? patronymic,
            DateTime birthday, String mobileNumber)?
        addPersonalData,
    TResult Function(UserPersonalDataModel data, String userLogin)?
        updatePersonalData,
    required TResult orElse(),
  }) {
    if (updatePersonalData != null) {
      return updatePersonalData(data, userLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$AuthLogInEvent value) logIn,
    required TResult Function(_$AuthFindAddressByUserEvent value)
        findAddressUser,
    required TResult Function(_$AuthAddAddressEvent value) addAddress,
    required TResult Function(_$AuthRegNewEvent value) regNew,
    required TResult Function(_$AutAddPersonalDataEvent value) addPersonalData,
    required TResult Function(_$AutUpdatePersonalDataEvent value)
        updatePersonalData,
  }) {
    return updatePersonalData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogInEvent value)? logIn,
    TResult? Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult? Function(_$AuthAddAddressEvent value)? addAddress,
    TResult? Function(_$AuthRegNewEvent value)? regNew,
    TResult? Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult? Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
  }) {
    return updatePersonalData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogInEvent value)? logIn,
    TResult Function(_$AuthFindAddressByUserEvent value)? findAddressUser,
    TResult Function(_$AuthAddAddressEvent value)? addAddress,
    TResult Function(_$AuthRegNewEvent value)? regNew,
    TResult Function(_$AutAddPersonalDataEvent value)? addPersonalData,
    TResult Function(_$AutUpdatePersonalDataEvent value)? updatePersonalData,
    required TResult orElse(),
  }) {
    if (updatePersonalData != null) {
      return updatePersonalData(this);
    }
    return orElse();
  }
}

abstract class _$AutUpdatePersonalDataEvent implements AuthEvent {
  const factory _$AutUpdatePersonalDataEvent(
      {required final UserPersonalDataModel data,
      required final String userLogin}) = _$_$AutUpdatePersonalDataEvent;

  UserPersonalDataModel get data;
  String get userLogin;
  @JsonKey(ignore: true)
  _$$_$AutUpdatePersonalDataEventCopyWith<_$_$AutUpdatePersonalDataEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
    required TResult Function(_$AuthInitialState value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult? Function(_$AuthInitialState value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return logedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return logedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
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
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
  $Res call({String error, String? hint});
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
    Object? hint = freezed,
  }) {
    return _then(_$_$AuthErroredState(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      hint: freezed == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_$AuthErroredState implements _$AuthErroredState {
  const _$_$AuthErroredState({required this.error, this.hint});

  @override
  final String error;
  @override
  final String? hint;

  @override
  String toString() {
    return 'AuthState.errored(error: $error, hint: $hint)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthErroredState &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.hint, hint) || other.hint == hint));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error, hint);

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
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return errored(error, hint);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return errored?.call(error, hint);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(error, hint);
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
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
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
  const factory _$AuthErroredState(
      {required final String error, final String? hint}) = _$_$AuthErroredState;

  String get error;
  String? get hint;
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
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
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
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
      List<AddressModel>? addresses,
      OrganizationModel? company,
      CourierModel? courier,
      List<CartModel> carts});
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
    Object? addresses = freezed,
    Object? company = freezed,
    Object? courier = freezed,
    Object? carts = null,
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
      freezed == addresses
          ? _value._addresses
          : addresses // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>?,
      freezed == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as OrganizationModel?,
      freezed == courier
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as CourierModel?,
      null == carts
          ? _value._carts
          : carts // ignore: cast_nullable_to_non_nullable
              as List<CartModel>,
    ));
  }
}

/// @nodoc

class _$_$AuthLogedInState implements _$AuthLogedInState {
  const _$_$AuthLogedInState(
      this.login,
      this.password,
      this.email,
      this.data,
      final List<AddressModel>? addresses,
      this.company,
      this.courier,
      final List<CartModel> carts)
      : _addresses = addresses,
        _carts = carts;

  @override
  final String login;
  @override
  final String password;
  @override
  final String email;
  @override
  final UserPersonalDataModel? data;
  final List<AddressModel>? _addresses;
  @override
  List<AddressModel>? get addresses {
    final value = _addresses;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final OrganizationModel? company;
  @override
  final CourierModel? courier;
  final List<CartModel> _carts;
  @override
  List<CartModel> get carts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_carts);
  }

  @override
  String toString() {
    return 'AuthState.logedIn(login: $login, password: $password, email: $email, data: $data, addresses: $addresses, company: $company, courier: $courier, carts: $carts)';
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
            const DeepCollectionEquality()
                .equals(other._addresses, _addresses) &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.courier, courier) || other.courier == courier) &&
            const DeepCollectionEquality().equals(other._carts, _carts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      login,
      password,
      email,
      data,
      const DeepCollectionEquality().hash(_addresses),
      company,
      courier,
      const DeepCollectionEquality().hash(_carts));

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
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return logedIn(
        login, password, email, data, addresses, company, courier, carts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return logedIn?.call(
        login, password, email, data, addresses, company, courier, carts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (logedIn != null) {
      return logedIn(
          login, password, email, data, addresses, company, courier, carts);
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
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
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
      final List<AddressModel>? addresses,
      final OrganizationModel? company,
      final CourierModel? courier,
      final List<CartModel> carts) = _$_$AuthLogedInState;

  String get login;
  String get password;
  String get email;
  UserPersonalDataModel? get data;
  List<AddressModel>? get addresses;
  OrganizationModel? get company;
  CourierModel? get courier;
  List<CartModel> get carts;
  @JsonKey(ignore: true)
  _$$_$AuthLogedInStateCopyWith<_$_$AuthLogedInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthSignedUpStateCopyWith<$Res> {
  factory _$$_$AuthSignedUpStateCopyWith(_$_$AuthSignedUpState value,
          $Res Function(_$_$AuthSignedUpState) then) =
      __$$_$AuthSignedUpStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String login, String password, String email});
}

/// @nodoc
class __$$_$AuthSignedUpStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthSignedUpState>
    implements _$$_$AuthSignedUpStateCopyWith<$Res> {
  __$$_$AuthSignedUpStateCopyWithImpl(
      _$_$AuthSignedUpState _value, $Res Function(_$_$AuthSignedUpState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
    Object? password = null,
    Object? email = null,
  }) {
    return _then(_$_$AuthSignedUpState(
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
    ));
  }
}

/// @nodoc

class _$_$AuthSignedUpState implements _$AuthSignedUpState {
  const _$_$AuthSignedUpState(this.login, this.password, this.email);

  @override
  final String login;
  @override
  final String password;
  @override
  final String email;

  @override
  String toString() {
    return 'AuthState.signedUp(login: $login, password: $password, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthSignedUpState &&
            (identical(other.login, login) || other.login == login) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login, password, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthSignedUpStateCopyWith<_$_$AuthSignedUpState> get copyWith =>
      __$$_$AuthSignedUpStateCopyWithImpl<_$_$AuthSignedUpState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return signedUp(login, password, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return signedUp?.call(login, password, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp(login, password, email);
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return signedUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return signedUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (signedUp != null) {
      return signedUp(this);
    }
    return orElse();
  }
}

abstract class _$AuthSignedUpState implements AuthState {
  const factory _$AuthSignedUpState(
          final String login, final String password, final String email) =
      _$_$AuthSignedUpState;

  String get login;
  String get password;
  String get email;
  @JsonKey(ignore: true)
  _$$_$AuthSignedUpStateCopyWith<_$_$AuthSignedUpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthAddressAddedStateCopyWith<$Res> {
  factory _$$_$AuthAddressAddedStateCopyWith(_$_$AuthAddressAddedState value,
          $Res Function(_$_$AuthAddressAddedState) then) =
      __$$_$AuthAddressAddedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressModel addressModel});
}

/// @nodoc
class __$$_$AuthAddressAddedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthAddressAddedState>
    implements _$$_$AuthAddressAddedStateCopyWith<$Res> {
  __$$_$AuthAddressAddedStateCopyWithImpl(_$_$AuthAddressAddedState _value,
      $Res Function(_$_$AuthAddressAddedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
  }) {
    return _then(_$_$AuthAddressAddedState(
      null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
    ));
  }
}

/// @nodoc

class _$_$AuthAddressAddedState implements _$AuthAddressAddedState {
  const _$_$AuthAddressAddedState(this.addressModel);

  @override
  final AddressModel addressModel;

  @override
  String toString() {
    return 'AuthState.addressAdded(addressModel: $addressModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthAddressAddedState &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressModel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthAddressAddedStateCopyWith<_$_$AuthAddressAddedState> get copyWith =>
      __$$_$AuthAddressAddedStateCopyWithImpl<_$_$AuthAddressAddedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return addressAdded(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return addressAdded?.call(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (addressAdded != null) {
      return addressAdded(addressModel);
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return addressAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return addressAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (addressAdded != null) {
      return addressAdded(this);
    }
    return orElse();
  }
}

abstract class _$AuthAddressAddedState implements AuthState {
  const factory _$AuthAddressAddedState(final AddressModel addressModel) =
      _$_$AuthAddressAddedState;

  AddressModel get addressModel;
  @JsonKey(ignore: true)
  _$$_$AuthAddressAddedStateCopyWith<_$_$AuthAddressAddedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthAddressesFindedStateCopyWith<$Res> {
  factory _$$_$AuthAddressesFindedStateCopyWith(
          _$_$AuthAddressesFindedState value,
          $Res Function(_$_$AuthAddressesFindedState) then) =
      __$$_$AuthAddressesFindedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AddressModel> addressModel});
}

/// @nodoc
class __$$_$AuthAddressesFindedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthAddressesFindedState>
    implements _$$_$AuthAddressesFindedStateCopyWith<$Res> {
  __$$_$AuthAddressesFindedStateCopyWithImpl(
      _$_$AuthAddressesFindedState _value,
      $Res Function(_$_$AuthAddressesFindedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
  }) {
    return _then(_$_$AuthAddressesFindedState(
      null == addressModel
          ? _value._addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as List<AddressModel>,
    ));
  }
}

/// @nodoc

class _$_$AuthAddressesFindedState implements _$AuthAddressesFindedState {
  const _$_$AuthAddressesFindedState(final List<AddressModel> addressModel)
      : _addressModel = addressModel;

  final List<AddressModel> _addressModel;
  @override
  List<AddressModel> get addressModel {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_addressModel);
  }

  @override
  String toString() {
    return 'AuthState.addressesFinded(addressModel: $addressModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthAddressesFindedState &&
            const DeepCollectionEquality()
                .equals(other._addressModel, _addressModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_addressModel));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthAddressesFindedStateCopyWith<_$_$AuthAddressesFindedState>
      get copyWith => __$$_$AuthAddressesFindedStateCopyWithImpl<
          _$_$AuthAddressesFindedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return addressesFinded(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return addressesFinded?.call(addressModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (addressesFinded != null) {
      return addressesFinded(addressModel);
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return addressesFinded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return addressesFinded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (addressesFinded != null) {
      return addressesFinded(this);
    }
    return orElse();
  }
}

abstract class _$AuthAddressesFindedState implements AuthState {
  const factory _$AuthAddressesFindedState(
      final List<AddressModel> addressModel) = _$_$AuthAddressesFindedState;

  List<AddressModel> get addressModel;
  @JsonKey(ignore: true)
  _$$_$AuthAddressesFindedStateCopyWith<_$_$AuthAddressesFindedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$AuthUserPDUpdatedStateCopyWith<$Res> {
  factory _$$_$AuthUserPDUpdatedStateCopyWith(_$_$AuthUserPDUpdatedState value,
          $Res Function(_$_$AuthUserPDUpdatedState) then) =
      __$$_$AuthUserPDUpdatedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPersonalDataModel personalData});
}

/// @nodoc
class __$$_$AuthUserPDUpdatedStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_$AuthUserPDUpdatedState>
    implements _$$_$AuthUserPDUpdatedStateCopyWith<$Res> {
  __$$_$AuthUserPDUpdatedStateCopyWithImpl(_$_$AuthUserPDUpdatedState _value,
      $Res Function(_$_$AuthUserPDUpdatedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalData = null,
  }) {
    return _then(_$_$AuthUserPDUpdatedState(
      null == personalData
          ? _value.personalData
          : personalData // ignore: cast_nullable_to_non_nullable
              as UserPersonalDataModel,
    ));
  }
}

/// @nodoc

class _$_$AuthUserPDUpdatedState implements _$AuthUserPDUpdatedState {
  const _$_$AuthUserPDUpdatedState(this.personalData);

  @override
  final UserPersonalDataModel personalData;

  @override
  String toString() {
    return 'AuthState.pdUpdated(personalData: $personalData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$AuthUserPDUpdatedState &&
            (identical(other.personalData, personalData) ||
                other.personalData == personalData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personalData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$AuthUserPDUpdatedStateCopyWith<_$_$AuthUserPDUpdatedState>
      get copyWith =>
          __$$_$AuthUserPDUpdatedStateCopyWithImpl<_$_$AuthUserPDUpdatedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() logedOut,
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return pdUpdated(personalData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return pdUpdated?.call(personalData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (pdUpdated != null) {
      return pdUpdated(personalData);
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
    required TResult Function(_$AuthInitialState value) initial,
  }) {
    return pdUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$AuthLogedOutState value)? logedOut,
    TResult? Function(_$AuthErroredState value)? errored,
    TResult? Function(_$AuthLoadingState value)? loading,
    TResult? Function(_$AuthLogedInState value)? logedIn,
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult? Function(_$AuthInitialState value)? initial,
  }) {
    return pdUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$AuthLogedOutState value)? logedOut,
    TResult Function(_$AuthErroredState value)? errored,
    TResult Function(_$AuthLoadingState value)? loading,
    TResult Function(_$AuthLogedInState value)? logedIn,
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
    TResult Function(_$AuthInitialState value)? initial,
    required TResult orElse(),
  }) {
    if (pdUpdated != null) {
      return pdUpdated(this);
    }
    return orElse();
  }
}

abstract class _$AuthUserPDUpdatedState implements AuthState {
  const factory _$AuthUserPDUpdatedState(
      final UserPersonalDataModel personalData) = _$_$AuthUserPDUpdatedState;

  UserPersonalDataModel get personalData;
  @JsonKey(ignore: true)
  _$$_$AuthUserPDUpdatedStateCopyWith<_$_$AuthUserPDUpdatedState>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(String error, String? hint) errored,
    required TResult Function() loading,
    required TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)
        logedIn,
    required TResult Function(String login, String password, String email)
        signedUp,
    required TResult Function(AddressModel addressModel) addressAdded,
    required TResult Function(List<AddressModel> addressModel) addressesFinded,
    required TResult Function(UserPersonalDataModel personalData) pdUpdated,
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? logedOut,
    TResult? Function(String error, String? hint)? errored,
    TResult? Function()? loading,
    TResult? Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult? Function(String login, String password, String email)? signedUp,
    TResult? Function(AddressModel addressModel)? addressAdded,
    TResult? Function(List<AddressModel> addressModel)? addressesFinded,
    TResult? Function(UserPersonalDataModel personalData)? pdUpdated,
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? logedOut,
    TResult Function(String error, String? hint)? errored,
    TResult Function()? loading,
    TResult Function(
            String login,
            String password,
            String email,
            UserPersonalDataModel? data,
            List<AddressModel>? addresses,
            OrganizationModel? company,
            CourierModel? courier,
            List<CartModel> carts)?
        logedIn,
    TResult Function(String login, String password, String email)? signedUp,
    TResult Function(AddressModel addressModel)? addressAdded,
    TResult Function(List<AddressModel> addressModel)? addressesFinded,
    TResult Function(UserPersonalDataModel personalData)? pdUpdated,
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
    required TResult Function(_$AuthSignedUpState value) signedUp,
    required TResult Function(_$AuthAddressAddedState value) addressAdded,
    required TResult Function(_$AuthAddressesFindedState value) addressesFinded,
    required TResult Function(_$AuthUserPDUpdatedState value) pdUpdated,
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
    TResult? Function(_$AuthSignedUpState value)? signedUp,
    TResult? Function(_$AuthAddressAddedState value)? addressAdded,
    TResult? Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult? Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
    TResult Function(_$AuthSignedUpState value)? signedUp,
    TResult Function(_$AuthAddressAddedState value)? addressAdded,
    TResult Function(_$AuthAddressesFindedState value)? addressesFinded,
    TResult Function(_$AuthUserPDUpdatedState value)? pdUpdated,
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
