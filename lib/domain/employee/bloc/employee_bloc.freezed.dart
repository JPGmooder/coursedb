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
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin, double deliveryAreaDiametr)
        register,
    required TResult Function(
            String userLogin, double currentLat, double currentLon)
        findNearestOrders,
    required TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)
        changeOrderStatus,
    required TResult Function(
            int orderId, double lat, double lon, bool isCompanyPassed)
        regCourierPlacement,
    required TResult Function(int addressId) findPersonalDataByAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult? Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult? Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult? Function(
            int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult? Function(int addressId)? findPersonalDataByAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult Function(int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult Function(int addressId)? findPersonalDataByAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeRegisterEvent value) register,
    required TResult Function(_$EmployeeFindNearestOrdersEvent value)
        findNearestOrders,
    required TResult Function(_$EmployeeChangeOrderStatusEvent value)
        changeOrderStatus,
    required TResult Function(_$EmployeeRegCourierPlacementEvent value)
        regCourierPlacement,
    required TResult Function(_$EmployeeFindPDbyAddressEvent value)
        findPersonalDataByAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeRegisterEvent value)? register,
    TResult? Function(_$EmployeeFindNearestOrdersEvent value)?
        findNearestOrders,
    TResult? Function(_$EmployeeChangeOrderStatusEvent value)?
        changeOrderStatus,
    TResult? Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult? Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeRegisterEvent value)? register,
    TResult Function(_$EmployeeFindNearestOrdersEvent value)? findNearestOrders,
    TResult Function(_$EmployeeChangeOrderStatusEvent value)? changeOrderStatus,
    TResult Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmployeeEventCopyWith<$Res> {
  factory $EmployeeEventCopyWith(
          EmployeeEvent value, $Res Function(EmployeeEvent) then) =
      _$EmployeeEventCopyWithImpl<$Res, EmployeeEvent>;
}

/// @nodoc
class _$EmployeeEventCopyWithImpl<$Res, $Val extends EmployeeEvent>
    implements $EmployeeEventCopyWith<$Res> {
  _$EmployeeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$EmployeeRegisterEventCopyWith<$Res> {
  factory _$$_$EmployeeRegisterEventCopyWith(_$_$EmployeeRegisterEvent value,
          $Res Function(_$_$EmployeeRegisterEvent) then) =
      __$$_$EmployeeRegisterEventCopyWithImpl<$Res>;
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
    required TResult Function(
            String userLogin, double currentLat, double currentLon)
        findNearestOrders,
    required TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)
        changeOrderStatus,
    required TResult Function(
            int orderId, double lat, double lon, bool isCompanyPassed)
        regCourierPlacement,
    required TResult Function(int addressId) findPersonalDataByAddress,
  }) {
    return register(userLogin, deliveryAreaDiametr);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult? Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult? Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult? Function(
            int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult? Function(int addressId)? findPersonalDataByAddress,
  }) {
    return register?.call(userLogin, deliveryAreaDiametr);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult Function(int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult Function(int addressId)? findPersonalDataByAddress,
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
    required TResult Function(_$EmployeeFindNearestOrdersEvent value)
        findNearestOrders,
    required TResult Function(_$EmployeeChangeOrderStatusEvent value)
        changeOrderStatus,
    required TResult Function(_$EmployeeRegCourierPlacementEvent value)
        regCourierPlacement,
    required TResult Function(_$EmployeeFindPDbyAddressEvent value)
        findPersonalDataByAddress,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeRegisterEvent value)? register,
    TResult? Function(_$EmployeeFindNearestOrdersEvent value)?
        findNearestOrders,
    TResult? Function(_$EmployeeChangeOrderStatusEvent value)?
        changeOrderStatus,
    TResult? Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult? Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
  }) {
    return register?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeRegisterEvent value)? register,
    TResult Function(_$EmployeeFindNearestOrdersEvent value)? findNearestOrders,
    TResult Function(_$EmployeeChangeOrderStatusEvent value)? changeOrderStatus,
    TResult Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
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

  String get userLogin;
  double get deliveryAreaDiametr;
  @JsonKey(ignore: true)
  _$$_$EmployeeRegisterEventCopyWith<_$_$EmployeeRegisterEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeeFindNearestOrdersEventCopyWith<$Res> {
  factory _$$_$EmployeeFindNearestOrdersEventCopyWith(
          _$_$EmployeeFindNearestOrdersEvent value,
          $Res Function(_$_$EmployeeFindNearestOrdersEvent) then) =
      __$$_$EmployeeFindNearestOrdersEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userLogin, double currentLat, double currentLon});
}

/// @nodoc
class __$$_$EmployeeFindNearestOrdersEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res,
        _$_$EmployeeFindNearestOrdersEvent>
    implements _$$_$EmployeeFindNearestOrdersEventCopyWith<$Res> {
  __$$_$EmployeeFindNearestOrdersEventCopyWithImpl(
      _$_$EmployeeFindNearestOrdersEvent _value,
      $Res Function(_$_$EmployeeFindNearestOrdersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
    Object? currentLat = null,
    Object? currentLon = null,
  }) {
    return _then(_$_$EmployeeFindNearestOrdersEvent(
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      currentLat: null == currentLat
          ? _value.currentLat
          : currentLat // ignore: cast_nullable_to_non_nullable
              as double,
      currentLon: null == currentLon
          ? _value.currentLon
          : currentLon // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_$EmployeeFindNearestOrdersEvent
    implements _$EmployeeFindNearestOrdersEvent {
  const _$_$EmployeeFindNearestOrdersEvent(
      {required this.userLogin,
      required this.currentLat,
      required this.currentLon});

  @override
  final String userLogin;
  @override
  final double currentLat;
  @override
  final double currentLon;

  @override
  String toString() {
    return 'EmployeeEvent.findNearestOrders(userLogin: $userLogin, currentLat: $currentLat, currentLon: $currentLon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeFindNearestOrdersEvent &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.currentLat, currentLat) ||
                other.currentLat == currentLat) &&
            (identical(other.currentLon, currentLon) ||
                other.currentLon == currentLon));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userLogin, currentLat, currentLon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeFindNearestOrdersEventCopyWith<
          _$_$EmployeeFindNearestOrdersEvent>
      get copyWith => __$$_$EmployeeFindNearestOrdersEventCopyWithImpl<
          _$_$EmployeeFindNearestOrdersEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin, double deliveryAreaDiametr)
        register,
    required TResult Function(
            String userLogin, double currentLat, double currentLon)
        findNearestOrders,
    required TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)
        changeOrderStatus,
    required TResult Function(
            int orderId, double lat, double lon, bool isCompanyPassed)
        regCourierPlacement,
    required TResult Function(int addressId) findPersonalDataByAddress,
  }) {
    return findNearestOrders(userLogin, currentLat, currentLon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult? Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult? Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult? Function(
            int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult? Function(int addressId)? findPersonalDataByAddress,
  }) {
    return findNearestOrders?.call(userLogin, currentLat, currentLon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult Function(int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult Function(int addressId)? findPersonalDataByAddress,
    required TResult orElse(),
  }) {
    if (findNearestOrders != null) {
      return findNearestOrders(userLogin, currentLat, currentLon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeRegisterEvent value) register,
    required TResult Function(_$EmployeeFindNearestOrdersEvent value)
        findNearestOrders,
    required TResult Function(_$EmployeeChangeOrderStatusEvent value)
        changeOrderStatus,
    required TResult Function(_$EmployeeRegCourierPlacementEvent value)
        regCourierPlacement,
    required TResult Function(_$EmployeeFindPDbyAddressEvent value)
        findPersonalDataByAddress,
  }) {
    return findNearestOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeRegisterEvent value)? register,
    TResult? Function(_$EmployeeFindNearestOrdersEvent value)?
        findNearestOrders,
    TResult? Function(_$EmployeeChangeOrderStatusEvent value)?
        changeOrderStatus,
    TResult? Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult? Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
  }) {
    return findNearestOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeRegisterEvent value)? register,
    TResult Function(_$EmployeeFindNearestOrdersEvent value)? findNearestOrders,
    TResult Function(_$EmployeeChangeOrderStatusEvent value)? changeOrderStatus,
    TResult Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
    required TResult orElse(),
  }) {
    if (findNearestOrders != null) {
      return findNearestOrders(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeFindNearestOrdersEvent implements EmployeeEvent {
  const factory _$EmployeeFindNearestOrdersEvent(
      {required final String userLogin,
      required final double currentLat,
      required final double currentLon}) = _$_$EmployeeFindNearestOrdersEvent;

  String get userLogin;
  double get currentLat;
  double get currentLon;
  @JsonKey(ignore: true)
  _$$_$EmployeeFindNearestOrdersEventCopyWith<
          _$_$EmployeeFindNearestOrdersEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeeChangeOrderStatusEventCopyWith<$Res> {
  factory _$$_$EmployeeChangeOrderStatusEventCopyWith(
          _$_$EmployeeChangeOrderStatusEvent value,
          $Res Function(_$_$EmployeeChangeOrderStatusEvent) then) =
      __$$_$EmployeeChangeOrderStatusEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userLogin, int orderId, OrderStatusName orderStatusName});
}

/// @nodoc
class __$$_$EmployeeChangeOrderStatusEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res,
        _$_$EmployeeChangeOrderStatusEvent>
    implements _$$_$EmployeeChangeOrderStatusEventCopyWith<$Res> {
  __$$_$EmployeeChangeOrderStatusEventCopyWithImpl(
      _$_$EmployeeChangeOrderStatusEvent _value,
      $Res Function(_$_$EmployeeChangeOrderStatusEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
    Object? orderId = null,
    Object? orderStatusName = null,
  }) {
    return _then(_$_$EmployeeChangeOrderStatusEvent(
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      orderStatusName: null == orderStatusName
          ? _value.orderStatusName
          : orderStatusName // ignore: cast_nullable_to_non_nullable
              as OrderStatusName,
    ));
  }
}

/// @nodoc

class _$_$EmployeeChangeOrderStatusEvent
    implements _$EmployeeChangeOrderStatusEvent {
  const _$_$EmployeeChangeOrderStatusEvent(
      {required this.userLogin,
      required this.orderId,
      required this.orderStatusName});

  @override
  final String userLogin;
  @override
  final int orderId;
  @override
  final OrderStatusName orderStatusName;

  @override
  String toString() {
    return 'EmployeeEvent.changeOrderStatus(userLogin: $userLogin, orderId: $orderId, orderStatusName: $orderStatusName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeChangeOrderStatusEvent &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.orderStatusName, orderStatusName) ||
                other.orderStatusName == orderStatusName));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userLogin, orderId, orderStatusName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeChangeOrderStatusEventCopyWith<
          _$_$EmployeeChangeOrderStatusEvent>
      get copyWith => __$$_$EmployeeChangeOrderStatusEventCopyWithImpl<
          _$_$EmployeeChangeOrderStatusEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin, double deliveryAreaDiametr)
        register,
    required TResult Function(
            String userLogin, double currentLat, double currentLon)
        findNearestOrders,
    required TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)
        changeOrderStatus,
    required TResult Function(
            int orderId, double lat, double lon, bool isCompanyPassed)
        regCourierPlacement,
    required TResult Function(int addressId) findPersonalDataByAddress,
  }) {
    return changeOrderStatus(userLogin, orderId, orderStatusName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult? Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult? Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult? Function(
            int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult? Function(int addressId)? findPersonalDataByAddress,
  }) {
    return changeOrderStatus?.call(userLogin, orderId, orderStatusName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult Function(int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult Function(int addressId)? findPersonalDataByAddress,
    required TResult orElse(),
  }) {
    if (changeOrderStatus != null) {
      return changeOrderStatus(userLogin, orderId, orderStatusName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeRegisterEvent value) register,
    required TResult Function(_$EmployeeFindNearestOrdersEvent value)
        findNearestOrders,
    required TResult Function(_$EmployeeChangeOrderStatusEvent value)
        changeOrderStatus,
    required TResult Function(_$EmployeeRegCourierPlacementEvent value)
        regCourierPlacement,
    required TResult Function(_$EmployeeFindPDbyAddressEvent value)
        findPersonalDataByAddress,
  }) {
    return changeOrderStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeRegisterEvent value)? register,
    TResult? Function(_$EmployeeFindNearestOrdersEvent value)?
        findNearestOrders,
    TResult? Function(_$EmployeeChangeOrderStatusEvent value)?
        changeOrderStatus,
    TResult? Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult? Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
  }) {
    return changeOrderStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeRegisterEvent value)? register,
    TResult Function(_$EmployeeFindNearestOrdersEvent value)? findNearestOrders,
    TResult Function(_$EmployeeChangeOrderStatusEvent value)? changeOrderStatus,
    TResult Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
    required TResult orElse(),
  }) {
    if (changeOrderStatus != null) {
      return changeOrderStatus(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeChangeOrderStatusEvent implements EmployeeEvent {
  const factory _$EmployeeChangeOrderStatusEvent(
          {required final String userLogin,
          required final int orderId,
          required final OrderStatusName orderStatusName}) =
      _$_$EmployeeChangeOrderStatusEvent;

  String get userLogin;
  int get orderId;
  OrderStatusName get orderStatusName;
  @JsonKey(ignore: true)
  _$$_$EmployeeChangeOrderStatusEventCopyWith<
          _$_$EmployeeChangeOrderStatusEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeeRegCourierPlacementEventCopyWith<$Res> {
  factory _$$_$EmployeeRegCourierPlacementEventCopyWith(
          _$_$EmployeeRegCourierPlacementEvent value,
          $Res Function(_$_$EmployeeRegCourierPlacementEvent) then) =
      __$$_$EmployeeRegCourierPlacementEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId, double lat, double lon, bool isCompanyPassed});
}

/// @nodoc
class __$$_$EmployeeRegCourierPlacementEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res,
        _$_$EmployeeRegCourierPlacementEvent>
    implements _$$_$EmployeeRegCourierPlacementEventCopyWith<$Res> {
  __$$_$EmployeeRegCourierPlacementEventCopyWithImpl(
      _$_$EmployeeRegCourierPlacementEvent _value,
      $Res Function(_$_$EmployeeRegCourierPlacementEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? lat = null,
    Object? lon = null,
    Object? isCompanyPassed = null,
  }) {
    return _then(_$_$EmployeeRegCourierPlacementEvent(
      orderId: null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as double,
      isCompanyPassed: null == isCompanyPassed
          ? _value.isCompanyPassed
          : isCompanyPassed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$EmployeeRegCourierPlacementEvent
    implements _$EmployeeRegCourierPlacementEvent {
  const _$_$EmployeeRegCourierPlacementEvent(
      {required this.orderId,
      required this.lat,
      required this.lon,
      required this.isCompanyPassed});

  @override
  final int orderId;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final bool isCompanyPassed;

  @override
  String toString() {
    return 'EmployeeEvent.regCourierPlacement(orderId: $orderId, lat: $lat, lon: $lon, isCompanyPassed: $isCompanyPassed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeRegCourierPlacementEvent &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.lat, lat) || other.lat == lat) &&
            (identical(other.lon, lon) || other.lon == lon) &&
            (identical(other.isCompanyPassed, isCompanyPassed) ||
                other.isCompanyPassed == isCompanyPassed));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, orderId, lat, lon, isCompanyPassed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeRegCourierPlacementEventCopyWith<
          _$_$EmployeeRegCourierPlacementEvent>
      get copyWith => __$$_$EmployeeRegCourierPlacementEventCopyWithImpl<
          _$_$EmployeeRegCourierPlacementEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin, double deliveryAreaDiametr)
        register,
    required TResult Function(
            String userLogin, double currentLat, double currentLon)
        findNearestOrders,
    required TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)
        changeOrderStatus,
    required TResult Function(
            int orderId, double lat, double lon, bool isCompanyPassed)
        regCourierPlacement,
    required TResult Function(int addressId) findPersonalDataByAddress,
  }) {
    return regCourierPlacement(orderId, lat, lon, isCompanyPassed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult? Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult? Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult? Function(
            int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult? Function(int addressId)? findPersonalDataByAddress,
  }) {
    return regCourierPlacement?.call(orderId, lat, lon, isCompanyPassed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult Function(int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult Function(int addressId)? findPersonalDataByAddress,
    required TResult orElse(),
  }) {
    if (regCourierPlacement != null) {
      return regCourierPlacement(orderId, lat, lon, isCompanyPassed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeRegisterEvent value) register,
    required TResult Function(_$EmployeeFindNearestOrdersEvent value)
        findNearestOrders,
    required TResult Function(_$EmployeeChangeOrderStatusEvent value)
        changeOrderStatus,
    required TResult Function(_$EmployeeRegCourierPlacementEvent value)
        regCourierPlacement,
    required TResult Function(_$EmployeeFindPDbyAddressEvent value)
        findPersonalDataByAddress,
  }) {
    return regCourierPlacement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeRegisterEvent value)? register,
    TResult? Function(_$EmployeeFindNearestOrdersEvent value)?
        findNearestOrders,
    TResult? Function(_$EmployeeChangeOrderStatusEvent value)?
        changeOrderStatus,
    TResult? Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult? Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
  }) {
    return regCourierPlacement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeRegisterEvent value)? register,
    TResult Function(_$EmployeeFindNearestOrdersEvent value)? findNearestOrders,
    TResult Function(_$EmployeeChangeOrderStatusEvent value)? changeOrderStatus,
    TResult Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
    required TResult orElse(),
  }) {
    if (regCourierPlacement != null) {
      return regCourierPlacement(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeRegCourierPlacementEvent implements EmployeeEvent {
  const factory _$EmployeeRegCourierPlacementEvent(
          {required final int orderId,
          required final double lat,
          required final double lon,
          required final bool isCompanyPassed}) =
      _$_$EmployeeRegCourierPlacementEvent;

  int get orderId;
  double get lat;
  double get lon;
  bool get isCompanyPassed;
  @JsonKey(ignore: true)
  _$$_$EmployeeRegCourierPlacementEventCopyWith<
          _$_$EmployeeRegCourierPlacementEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeeFindPDbyAddressEventCopyWith<$Res> {
  factory _$$_$EmployeeFindPDbyAddressEventCopyWith(
          _$_$EmployeeFindPDbyAddressEvent value,
          $Res Function(_$_$EmployeeFindPDbyAddressEvent) then) =
      __$$_$EmployeeFindPDbyAddressEventCopyWithImpl<$Res>;
  @useResult
  $Res call({int addressId});
}

/// @nodoc
class __$$_$EmployeeFindPDbyAddressEventCopyWithImpl<$Res>
    extends _$EmployeeEventCopyWithImpl<$Res, _$_$EmployeeFindPDbyAddressEvent>
    implements _$$_$EmployeeFindPDbyAddressEventCopyWith<$Res> {
  __$$_$EmployeeFindPDbyAddressEventCopyWithImpl(
      _$_$EmployeeFindPDbyAddressEvent _value,
      $Res Function(_$_$EmployeeFindPDbyAddressEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressId = null,
  }) {
    return _then(_$_$EmployeeFindPDbyAddressEvent(
      addressId: null == addressId
          ? _value.addressId
          : addressId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_$EmployeeFindPDbyAddressEvent
    implements _$EmployeeFindPDbyAddressEvent {
  const _$_$EmployeeFindPDbyAddressEvent({required this.addressId});

  @override
  final int addressId;

  @override
  String toString() {
    return 'EmployeeEvent.findPersonalDataByAddress(addressId: $addressId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeFindPDbyAddressEvent &&
            (identical(other.addressId, addressId) ||
                other.addressId == addressId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addressId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeFindPDbyAddressEventCopyWith<_$_$EmployeeFindPDbyAddressEvent>
      get copyWith => __$$_$EmployeeFindPDbyAddressEventCopyWithImpl<
          _$_$EmployeeFindPDbyAddressEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin, double deliveryAreaDiametr)
        register,
    required TResult Function(
            String userLogin, double currentLat, double currentLon)
        findNearestOrders,
    required TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)
        changeOrderStatus,
    required TResult Function(
            int orderId, double lat, double lon, bool isCompanyPassed)
        regCourierPlacement,
    required TResult Function(int addressId) findPersonalDataByAddress,
  }) {
    return findPersonalDataByAddress(addressId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult? Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult? Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult? Function(
            int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult? Function(int addressId)? findPersonalDataByAddress,
  }) {
    return findPersonalDataByAddress?.call(addressId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, double deliveryAreaDiametr)? register,
    TResult Function(String userLogin, double currentLat, double currentLon)?
        findNearestOrders,
    TResult Function(
            String userLogin, int orderId, OrderStatusName orderStatusName)?
        changeOrderStatus,
    TResult Function(int orderId, double lat, double lon, bool isCompanyPassed)?
        regCourierPlacement,
    TResult Function(int addressId)? findPersonalDataByAddress,
    required TResult orElse(),
  }) {
    if (findPersonalDataByAddress != null) {
      return findPersonalDataByAddress(addressId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$EmployeeRegisterEvent value) register,
    required TResult Function(_$EmployeeFindNearestOrdersEvent value)
        findNearestOrders,
    required TResult Function(_$EmployeeChangeOrderStatusEvent value)
        changeOrderStatus,
    required TResult Function(_$EmployeeRegCourierPlacementEvent value)
        regCourierPlacement,
    required TResult Function(_$EmployeeFindPDbyAddressEvent value)
        findPersonalDataByAddress,
  }) {
    return findPersonalDataByAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeRegisterEvent value)? register,
    TResult? Function(_$EmployeeFindNearestOrdersEvent value)?
        findNearestOrders,
    TResult? Function(_$EmployeeChangeOrderStatusEvent value)?
        changeOrderStatus,
    TResult? Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult? Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
  }) {
    return findPersonalDataByAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeRegisterEvent value)? register,
    TResult Function(_$EmployeeFindNearestOrdersEvent value)? findNearestOrders,
    TResult Function(_$EmployeeChangeOrderStatusEvent value)? changeOrderStatus,
    TResult Function(_$EmployeeRegCourierPlacementEvent value)?
        regCourierPlacement,
    TResult Function(_$EmployeeFindPDbyAddressEvent value)?
        findPersonalDataByAddress,
    required TResult orElse(),
  }) {
    if (findPersonalDataByAddress != null) {
      return findPersonalDataByAddress(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeFindPDbyAddressEvent implements EmployeeEvent {
  const factory _$EmployeeFindPDbyAddressEvent({required final int addressId}) =
      _$_$EmployeeFindPDbyAddressEvent;

  int get addressId;
  @JsonKey(ignore: true)
  _$$_$EmployeeFindPDbyAddressEventCopyWith<_$_$EmployeeFindPDbyAddressEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EmployeeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
    required TResult Function(List<Map<String, dynamic>> orders) ordersFounded,
    required TResult Function(int orderId, OrderStatusName status)
        orderStatusChanged,
    required TResult Function(UserPersonalDataModel personalData)
        personalDataFindedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
    TResult? Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult? Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult? Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
    TResult Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    required TResult Function(_$EmployeeOrdersFoundedState value) ordersFounded,
    required TResult Function(_$EmployeeOrdersStatusChangedState value)
        orderStatusChanged,
    required TResult Function(_$EmployeePersonalDataFindedState value)
        personalDataFindedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
    TResult? Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult? Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult? Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    TResult Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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
    required TResult Function(List<Map<String, dynamic>> orders) ordersFounded,
    required TResult Function(int orderId, OrderStatusName status)
        orderStatusChanged,
    required TResult Function(UserPersonalDataModel personalData)
        personalDataFindedState,
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
    TResult? Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult? Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult? Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    TResult Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    required TResult Function(_$EmployeeOrdersFoundedState value) ordersFounded,
    required TResult Function(_$EmployeeOrdersStatusChangedState value)
        orderStatusChanged,
    required TResult Function(_$EmployeePersonalDataFindedState value)
        personalDataFindedState,
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
    TResult? Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult? Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult? Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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
    TResult Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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
    required TResult Function(List<Map<String, dynamic>> orders) ordersFounded,
    required TResult Function(int orderId, OrderStatusName status)
        orderStatusChanged,
    required TResult Function(UserPersonalDataModel personalData)
        personalDataFindedState,
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
    TResult? Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult? Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult? Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    TResult Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    required TResult Function(_$EmployeeOrdersFoundedState value) ordersFounded,
    required TResult Function(_$EmployeeOrdersStatusChangedState value)
        orderStatusChanged,
    required TResult Function(_$EmployeePersonalDataFindedState value)
        personalDataFindedState,
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
    TResult? Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult? Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult? Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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
    TResult Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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
    required TResult Function(List<Map<String, dynamic>> orders) ordersFounded,
    required TResult Function(int orderId, OrderStatusName status)
        orderStatusChanged,
    required TResult Function(UserPersonalDataModel personalData)
        personalDataFindedState,
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
    TResult? Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult? Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult? Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    TResult Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    required TResult Function(_$EmployeeOrdersFoundedState value) ordersFounded,
    required TResult Function(_$EmployeeOrdersStatusChangedState value)
        orderStatusChanged,
    required TResult Function(_$EmployeePersonalDataFindedState value)
        personalDataFindedState,
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
    TResult? Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult? Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult? Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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
    TResult Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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
    required TResult Function(List<Map<String, dynamic>> orders) ordersFounded,
    required TResult Function(int orderId, OrderStatusName status)
        orderStatusChanged,
    required TResult Function(UserPersonalDataModel personalData)
        personalDataFindedState,
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
    TResult? Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult? Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult? Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    TResult Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
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
    required TResult Function(_$EmployeeOrdersFoundedState value) ordersFounded,
    required TResult Function(_$EmployeeOrdersStatusChangedState value)
        orderStatusChanged,
    required TResult Function(_$EmployeePersonalDataFindedState value)
        personalDataFindedState,
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
    TResult? Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult? Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult? Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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
    TResult Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
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

/// @nodoc
abstract class _$$_$EmployeeOrdersFoundedStateCopyWith<$Res> {
  factory _$$_$EmployeeOrdersFoundedStateCopyWith(
          _$_$EmployeeOrdersFoundedState value,
          $Res Function(_$_$EmployeeOrdersFoundedState) then) =
      __$$_$EmployeeOrdersFoundedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> orders});
}

/// @nodoc
class __$$_$EmployeeOrdersFoundedStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res, _$_$EmployeeOrdersFoundedState>
    implements _$$_$EmployeeOrdersFoundedStateCopyWith<$Res> {
  __$$_$EmployeeOrdersFoundedStateCopyWithImpl(
      _$_$EmployeeOrdersFoundedState _value,
      $Res Function(_$_$EmployeeOrdersFoundedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$_$EmployeeOrdersFoundedState(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_$EmployeeOrdersFoundedState implements _$EmployeeOrdersFoundedState {
  const _$_$EmployeeOrdersFoundedState(final List<Map<String, dynamic>> orders)
      : _orders = orders;

  final List<Map<String, dynamic>> _orders;
  @override
  List<Map<String, dynamic>> get orders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'EmployeeState.ordersFounded(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeOrdersFoundedState &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeOrdersFoundedStateCopyWith<_$_$EmployeeOrdersFoundedState>
      get copyWith => __$$_$EmployeeOrdersFoundedStateCopyWithImpl<
          _$_$EmployeeOrdersFoundedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
    required TResult Function(List<Map<String, dynamic>> orders) ordersFounded,
    required TResult Function(int orderId, OrderStatusName status)
        orderStatusChanged,
    required TResult Function(UserPersonalDataModel personalData)
        personalDataFindedState,
  }) {
    return ordersFounded(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
    TResult? Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult? Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult? Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
  }) {
    return ordersFounded?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
    TResult Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
    required TResult orElse(),
  }) {
    if (ordersFounded != null) {
      return ordersFounded(orders);
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
    required TResult Function(_$EmployeeOrdersFoundedState value) ordersFounded,
    required TResult Function(_$EmployeeOrdersStatusChangedState value)
        orderStatusChanged,
    required TResult Function(_$EmployeePersonalDataFindedState value)
        personalDataFindedState,
  }) {
    return ordersFounded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
    TResult? Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult? Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult? Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
  }) {
    return ordersFounded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    TResult Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
    required TResult orElse(),
  }) {
    if (ordersFounded != null) {
      return ordersFounded(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeOrdersFoundedState implements EmployeeState {
  const factory _$EmployeeOrdersFoundedState(
      final List<Map<String, dynamic>> orders) = _$_$EmployeeOrdersFoundedState;

  List<Map<String, dynamic>> get orders;
  @JsonKey(ignore: true)
  _$$_$EmployeeOrdersFoundedStateCopyWith<_$_$EmployeeOrdersFoundedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeeOrdersStatusChangedStateCopyWith<$Res> {
  factory _$$_$EmployeeOrdersStatusChangedStateCopyWith(
          _$_$EmployeeOrdersStatusChangedState value,
          $Res Function(_$_$EmployeeOrdersStatusChangedState) then) =
      __$$_$EmployeeOrdersStatusChangedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({int orderId, OrderStatusName status});
}

/// @nodoc
class __$$_$EmployeeOrdersStatusChangedStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res,
        _$_$EmployeeOrdersStatusChangedState>
    implements _$$_$EmployeeOrdersStatusChangedStateCopyWith<$Res> {
  __$$_$EmployeeOrdersStatusChangedStateCopyWithImpl(
      _$_$EmployeeOrdersStatusChangedState _value,
      $Res Function(_$_$EmployeeOrdersStatusChangedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderId = null,
    Object? status = null,
  }) {
    return _then(_$_$EmployeeOrdersStatusChangedState(
      null == orderId
          ? _value.orderId
          : orderId // ignore: cast_nullable_to_non_nullable
              as int,
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as OrderStatusName,
    ));
  }
}

/// @nodoc

class _$_$EmployeeOrdersStatusChangedState
    implements _$EmployeeOrdersStatusChangedState {
  const _$_$EmployeeOrdersStatusChangedState(this.orderId, this.status);

  @override
  final int orderId;
  @override
  final OrderStatusName status;

  @override
  String toString() {
    return 'EmployeeState.orderStatusChanged(orderId: $orderId, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeeOrdersStatusChangedState &&
            (identical(other.orderId, orderId) || other.orderId == orderId) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderId, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeeOrdersStatusChangedStateCopyWith<
          _$_$EmployeeOrdersStatusChangedState>
      get copyWith => __$$_$EmployeeOrdersStatusChangedStateCopyWithImpl<
          _$_$EmployeeOrdersStatusChangedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
    required TResult Function(List<Map<String, dynamic>> orders) ordersFounded,
    required TResult Function(int orderId, OrderStatusName status)
        orderStatusChanged,
    required TResult Function(UserPersonalDataModel personalData)
        personalDataFindedState,
  }) {
    return orderStatusChanged(orderId, status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
    TResult? Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult? Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult? Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
  }) {
    return orderStatusChanged?.call(orderId, status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
    TResult Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
    required TResult orElse(),
  }) {
    if (orderStatusChanged != null) {
      return orderStatusChanged(orderId, status);
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
    required TResult Function(_$EmployeeOrdersFoundedState value) ordersFounded,
    required TResult Function(_$EmployeeOrdersStatusChangedState value)
        orderStatusChanged,
    required TResult Function(_$EmployeePersonalDataFindedState value)
        personalDataFindedState,
  }) {
    return orderStatusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
    TResult? Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult? Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult? Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
  }) {
    return orderStatusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    TResult Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
    required TResult orElse(),
  }) {
    if (orderStatusChanged != null) {
      return orderStatusChanged(this);
    }
    return orElse();
  }
}

abstract class _$EmployeeOrdersStatusChangedState implements EmployeeState {
  const factory _$EmployeeOrdersStatusChangedState(
          final int orderId, final OrderStatusName status) =
      _$_$EmployeeOrdersStatusChangedState;

  int get orderId;
  OrderStatusName get status;
  @JsonKey(ignore: true)
  _$$_$EmployeeOrdersStatusChangedStateCopyWith<
          _$_$EmployeeOrdersStatusChangedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$EmployeePersonalDataFindedStateCopyWith<$Res> {
  factory _$$_$EmployeePersonalDataFindedStateCopyWith(
          _$_$EmployeePersonalDataFindedState value,
          $Res Function(_$_$EmployeePersonalDataFindedState) then) =
      __$$_$EmployeePersonalDataFindedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({UserPersonalDataModel personalData});
}

/// @nodoc
class __$$_$EmployeePersonalDataFindedStateCopyWithImpl<$Res>
    extends _$EmployeeStateCopyWithImpl<$Res,
        _$_$EmployeePersonalDataFindedState>
    implements _$$_$EmployeePersonalDataFindedStateCopyWith<$Res> {
  __$$_$EmployeePersonalDataFindedStateCopyWithImpl(
      _$_$EmployeePersonalDataFindedState _value,
      $Res Function(_$_$EmployeePersonalDataFindedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? personalData = null,
  }) {
    return _then(_$_$EmployeePersonalDataFindedState(
      null == personalData
          ? _value.personalData
          : personalData // ignore: cast_nullable_to_non_nullable
              as UserPersonalDataModel,
    ));
  }
}

/// @nodoc

class _$_$EmployeePersonalDataFindedState
    implements _$EmployeePersonalDataFindedState {
  const _$_$EmployeePersonalDataFindedState(this.personalData);

  @override
  final UserPersonalDataModel personalData;

  @override
  String toString() {
    return 'EmployeeState.personalDataFindedState(personalData: $personalData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$EmployeePersonalDataFindedState &&
            (identical(other.personalData, personalData) ||
                other.personalData == personalData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, personalData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$EmployeePersonalDataFindedStateCopyWith<
          _$_$EmployeePersonalDataFindedState>
      get copyWith => __$$_$EmployeePersonalDataFindedStateCopyWithImpl<
          _$_$EmployeePersonalDataFindedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(CourierModel courier) courierReged,
    required TResult Function(List<Map<String, dynamic>> orders) ordersFounded,
    required TResult Function(int orderId, OrderStatusName status)
        orderStatusChanged,
    required TResult Function(UserPersonalDataModel personalData)
        personalDataFindedState,
  }) {
    return personalDataFindedState(personalData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(CourierModel courier)? courierReged,
    TResult? Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult? Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult? Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
  }) {
    return personalDataFindedState?.call(personalData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(CourierModel courier)? courierReged,
    TResult Function(List<Map<String, dynamic>> orders)? ordersFounded,
    TResult Function(int orderId, OrderStatusName status)? orderStatusChanged,
    TResult Function(UserPersonalDataModel personalData)?
        personalDataFindedState,
    required TResult orElse(),
  }) {
    if (personalDataFindedState != null) {
      return personalDataFindedState(personalData);
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
    required TResult Function(_$EmployeeOrdersFoundedState value) ordersFounded,
    required TResult Function(_$EmployeeOrdersStatusChangedState value)
        orderStatusChanged,
    required TResult Function(_$EmployeePersonalDataFindedState value)
        personalDataFindedState,
  }) {
    return personalDataFindedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$EmployeeInitialState value)? initial,
    TResult? Function(_$EmployeeLoadingState value)? loading,
    TResult? Function(_$EmployeeErroredState value)? errored,
    TResult? Function(_$EmployeeCourierRegistredState value)? courierReged,
    TResult? Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult? Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult? Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
  }) {
    return personalDataFindedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$EmployeeInitialState value)? initial,
    TResult Function(_$EmployeeLoadingState value)? loading,
    TResult Function(_$EmployeeErroredState value)? errored,
    TResult Function(_$EmployeeCourierRegistredState value)? courierReged,
    TResult Function(_$EmployeeOrdersFoundedState value)? ordersFounded,
    TResult Function(_$EmployeeOrdersStatusChangedState value)?
        orderStatusChanged,
    TResult Function(_$EmployeePersonalDataFindedState value)?
        personalDataFindedState,
    required TResult orElse(),
  }) {
    if (personalDataFindedState != null) {
      return personalDataFindedState(this);
    }
    return orElse();
  }
}

abstract class _$EmployeePersonalDataFindedState implements EmployeeState {
  const factory _$EmployeePersonalDataFindedState(
          final UserPersonalDataModel personalData) =
      _$_$EmployeePersonalDataFindedState;

  UserPersonalDataModel get personalData;
  @JsonKey(ignore: true)
  _$$_$EmployeePersonalDataFindedStateCopyWith<
          _$_$EmployeePersonalDataFindedState>
      get copyWith => throw _privateConstructorUsedError;
}
