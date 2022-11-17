// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'employee_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EmployeeEvent {
  String get userLogin => throw _privateConstructorUsedError;
  double get deliveryAreaDiametr => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin, double deliveryAreaDiametr)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, double deliveryAreaDiametr)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, double deliveryAreaDiametr)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeRegisterEvent value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeRegisterEvent value)? register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeRegisterEvent value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EmployeeEventCopyWith<EmployeeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
  @useResult
  $Res call({String userLogin, double deliveryAreaDiametr});
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
    Object? deliveryAreaDiametr = null,
  }) {
    return _then(_value.copyWith(
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAreaDiametr: null == deliveryAreaDiametr
          ? _value.deliveryAreaDiametr
          : deliveryAreaDiametr // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_$EmployeeRegisterEventCopyWith<$Res>
    implements $EmployeeEventCopyWith<$Res> {
  factory _$$_$EmployeeRegisterEventCopyWith(_$_$EmployeeRegisterEvent value,
          $Res Function(_$_$EmployeeRegisterEvent) then) =
      __$$_$EmployeeRegisterEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userLogin, double deliveryAreaDiametr});
}

/// @nodoc
class __$$_$EmployeeRegisterEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$_$EmployeeRegisterEvent>
    implements _$$_$EmployeeRegisterEventCopyWith<$Res> {
  __$$_$EmployeeRegisterEventCopyWithImpl(_$_$EmployeeRegisterEvent _value,
      $Res Function(_$_$EmployeeRegisterEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
    Object? deliveryAreaDiametr = null,
  }) {
    return _then(_$_$EmployeeRegisterEvent(
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryAreaDiametr: null == deliveryAreaDiametr
          ? _value.deliveryAreaDiametr
          : deliveryAreaDiametr // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_$EmployeeRegisterEvent implements _$EmployeeRegisterEvent {
  const _$_$EmployeeRegisterEvent(
      {required this.userLogin, required this.deliveryAreaDiametr});

  @override
  final String userLogin;
  @override
  final double deliveryAreaDiametr;

  @override
  String toString() {
    return 'EmployeeEvent.register(userLogin: $userLogin, deliveryAreaDiametr: $deliveryAreaDiametr)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeRegisterEvent &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.deliveryAreaDiametr, deliveryAreaDiametr) ||
                other.deliveryAreaDiametr == deliveryAreaDiametr));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLogin, deliveryAreaDiametr);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeRegisterEventCopyWith<_$_$EmployeeRegisterEvent> get copyWith =>
      __$$_$EmployeeRegisterEventCopyWithImpl<_$_$EmployeeRegisterEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin, double deliveryAreaDiametr)
        register,
  }) {
    return register(userLogin, deliveryAreaDiametr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, double deliveryAreaDiametr)? register,
  }) {
    return register?.call(userLogin, deliveryAreaDiametr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, double deliveryAreaDiametr)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(userLogin, deliveryAreaDiametr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeRegisterEvent value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeRegisterEvent value)? register,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeRegisterEvent value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeRegisterEvent implements EmployeeEvent {
  const factory _$EmployeeRegisterEvent(
      {required final String userLogin,
      required final double deliveryAreaDiametr}) = _$_$EmployeeRegisterEvent;

  @override
  String get userLogin;
  @override
  double get deliveryAreaDiametr;
  @override
  @JsonKey(ignore: true)
  _$$_$EmployeeRegisterEventCopyWith<_$_$EmployeeRegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeInitialState value) initial,
    required TResult Function(_$EmployeeLoadingState value) loading,
    required TResult Function(_$EmployeeErroredState value) errored,
    required TResult Function(_$EmployeeCourierRegistredState value)
        courierReged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeStateCopyWith<$Res> {
  factory $EmployeeStateCopyWith(
          EmployeeState value, $Res Function(EmployeeState) then) =
      _$EmployeeStateCopyWithImpl<$Res, EmployeeState>;
}

/// @nodoc
class _$EmployeeStateCopyWithImpl<$Res, $Val extends EmployeeState>
    implements $EmployeeStateCopyWith<$Res> {
  _$EmployeeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$EmployeeInitialStateCopyWith<$Res> {
  factory _$$_$EmployeeInitialStateCopyWith(_$_$EmployeeInitialState value,
          $Res Function(_$_$EmployeeInitialState) then) =
      __$$_$EmployeeInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$EmployeeInitialStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$_$EmployeeInitialState>
    implements _$$_$EmployeeInitialStateCopyWith<$Res> {
  __$$_$EmployeeInitialStateCopyWithImpl(_$_$EmployeeInitialState _value,
      $Res Function(_$_$EmployeeInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$EmployeeInitialState implements _$EmployeeInitialState {
  const _$_$EmployeeInitialState();

  @override
  String toString() {
    return 'EmployeeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$EmployeeInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
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
    required TResult Function(_$EmployeeInitialState value) initial,
    required TResult Function(_$EmployeeLoadingState value) loading,
    required TResult Function(_$EmployeeErroredState value) errored,
    required TResult Function(_$EmployeeCourierRegistredState value)
        courierReged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeInitialState implements EmployeeState {
  const factory _$EmployeeInitialState() = _$_$EmployeeInitialState;
}

/// @nodoc
abstract class _$$_$EmployeeLoadingStateCopyWith<$Res> {
  factory _$$_$EmployeeLoadingStateCopyWith(_$_$EmployeeLoadingState value,
          $Res Function(_$_$EmployeeLoadingState) then) =
      __$$_$EmployeeLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$EmployeeLoadingStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$_$EmployeeLoadingState>
    implements _$$_$EmployeeLoadingStateCopyWith<$Res> {
  __$$_$EmployeeLoadingStateCopyWithImpl(_$_$EmployeeLoadingState _value,
      $Res Function(_$_$EmployeeLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$EmployeeLoadingState implements _$EmployeeLoadingState {
  const _$_$EmployeeLoadingState();

  @override
  String toString() {
    return 'EmployeeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$EmployeeLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
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
    required TResult Function(_$EmployeeInitialState value) initial,
    required TResult Function(_$EmployeeLoadingState value) loading,
    required TResult Function(_$EmployeeErroredState value) errored,
    required TResult Function(_$EmployeeCourierRegistredState value)
        courierReged,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeLoadingState implements EmployeeState {
  const factory _$EmployeeLoadingState() = _$_$EmployeeLoadingState;
}

/// @nodoc
abstract class _$$_$EmployeeErroredStateCopyWith<$Res> {
  factory _$$_$EmployeeErroredStateCopyWith(_$_$EmployeeErroredState value,
          $Res Function(_$_$EmployeeErroredState) then) =
      __$$_$EmployeeErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$EmployeeErroredStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$_$EmployeeErroredState>
    implements _$$_$EmployeeErroredStateCopyWith<$Res> {
  __$$_$EmployeeErroredStateCopyWithImpl(_$_$EmployeeErroredState _value,
      $Res Function(_$_$EmployeeErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$EmployeeErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$EmployeeErroredState implements _$EmployeeErroredState {
  const _$_$EmployeeErroredState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'EmployeeState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeErroredStateCopyWith<_$_$EmployeeErroredState> get copyWith =>
      __$$_$EmployeeErroredStateCopyWithImpl<_$_$EmployeeErroredState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
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
    required TResult Function(_$EmployeeInitialState value) initial,
    required TResult Function(_$EmployeeLoadingState value) loading,
    required TResult Function(_$EmployeeErroredState value) errored,
    required TResult Function(_$EmployeeCourierRegistredState value)
        courierReged,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeErroredState implements EmployeeState {
  const factory _$EmployeeErroredState(final String error) =
      _$_$EmployeeErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$EmployeeErroredStateCopyWith<_$_$EmployeeErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeeCourierRegistredStateCopyWith<$Res> {
  factory _$$_$EmployeeCourierRegistredStateCopyWith(
          _$_$EmployeeCourierRegistredState value,
          $Res Function(_$_$EmployeeCourierRegistredState) then) =
      __$$_$EmployeeCourierRegistredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({CourierModel courier});
}

/// @nodoc
class __$$_$EmployeeCourierRegistredStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$_$EmployeeCourierRegistredState>
    implements _$$_$EmployeeCourierRegistredStateCopyWith<$Res> {
  __$$_$EmployeeCourierRegistredStateCopyWithImpl(
      _$_$EmployeeCourierRegistredState _value,
      $Res Function(_$_$EmployeeCourierRegistredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? courier = null,
  }) {
    return _then(_$_$EmployeeCourierRegistredState(
      null == courier
          ? _value.courier
          : courier // ignore: cast_nullable_to_non_nullable
              as CourierModel,
    ));
  }
}

/// @nodoc

class _$_$EmployeeCourierRegistredState
    implements _$EmployeeCourierRegistredState {
  const _$_$EmployeeCourierRegistredState(this.courier);

  @override
  final CourierModel courier;

  @override
  String toString() {
    return 'EmployeeState.courierReged(courier: $courier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeCourierRegistredState &&
            (identical(other.courier, courier) || other.courier == courier));
  }

  @override
  int get hashCode => Object.hash(runtimeType, courier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeCourierRegistredStateCopyWith<_$_$EmployeeCourierRegistredState>
      get copyWith => __$$_$EmployeeCourierRegistredStateCopyWithImpl<
          _$_$EmployeeCourierRegistredState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
  }) {
    return courierReged(courier);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
  }) {
    return courierReged?.call(courier);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
    required TResult orElse(),
  }) {
    if (courierReged != null) {
      return courierReged(courier);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeInitialState value) initial,
    required TResult Function(_$EmployeeLoadingState value) loading,
    required TResult Function(_$EmployeeErroredState value) errored,
    required TResult Function(_$EmployeeCourierRegistredState value)
        courierReged,
  }) {
    return courierReged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
  }) {
    return courierReged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    required TResult orElse(),
  }) {
    if (courierReged != null) {
      return courierReged(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeCourierRegistredState implements EmployeeState {
  const factory _$EmployeeCourierRegistredState(final CourierModel courier) =
      _$_$EmployeeCourierRegistredState;

  CourierModel get courier;
  @JsonKey(ignore: true)
  _$$_$EmployeeCourierRegistredStateCopyWith<_$_$EmployeeCourierRegistredState>
      get copyWith => throw _privateConstructorUsedError;
}
