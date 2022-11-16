// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'orders_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrdersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin) loadUserOrders,
    required TResult Function(List<int> ids) loadOrdersProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin)? loadUserOrders,
    TResult? Function(List<int> ids)? loadOrdersProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin)? loadUserOrders,
    TResult Function(List<int> ids)? loadOrdersProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$LoadUsersOrdersEvent value) loadUserOrders,
    required TResult Function(_$LoadOrdersProductsEvent value)
        loadOrdersProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoadUsersOrdersEvent value)? loadUserOrders,
    TResult? Function(_$LoadOrdersProductsEvent value)? loadOrdersProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoadUsersOrdersEvent value)? loadUserOrders,
    TResult Function(_$LoadOrdersProductsEvent value)? loadOrdersProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersEventCopyWith<$Res> {
  factory $OrdersEventCopyWith(
          OrdersEvent value, $Res Function(OrdersEvent) then) =
      _$OrdersEventCopyWithImpl<$Res, OrdersEvent>;
}

/// @nodoc
class _$OrdersEventCopyWithImpl<$Res, $Val extends OrdersEvent>
    implements $OrdersEventCopyWith<$Res> {
  _$OrdersEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$LoadUsersOrdersEventCopyWith<$Res> {
  factory _$$_$LoadUsersOrdersEventCopyWith(_$_$LoadUsersOrdersEvent value,
          $Res Function(_$_$LoadUsersOrdersEvent) then) =
      __$$_$LoadUsersOrdersEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userLogin});
}

/// @nodoc
class __$$_$LoadUsersOrdersEventCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$_$LoadUsersOrdersEvent>
    implements _$$_$LoadUsersOrdersEventCopyWith<$Res> {
  __$$_$LoadUsersOrdersEventCopyWithImpl(_$_$LoadUsersOrdersEvent _value,
      $Res Function(_$_$LoadUsersOrdersEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
  }) {
    return _then(_$_$LoadUsersOrdersEvent(
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$LoadUsersOrdersEvent implements _$LoadUsersOrdersEvent {
  const _$_$LoadUsersOrdersEvent({required this.userLogin});

  @override
  final String userLogin;

  @override
  String toString() {
    return 'OrdersEvent.loadUserOrders(userLogin: $userLogin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$LoadUsersOrdersEvent &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userLogin);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$LoadUsersOrdersEventCopyWith<_$_$LoadUsersOrdersEvent> get copyWith =>
      __$$_$LoadUsersOrdersEventCopyWithImpl<_$_$LoadUsersOrdersEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin) loadUserOrders,
    required TResult Function(List<int> ids) loadOrdersProducts,
  }) {
    return loadUserOrders(userLogin);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin)? loadUserOrders,
    TResult? Function(List<int> ids)? loadOrdersProducts,
  }) {
    return loadUserOrders?.call(userLogin);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin)? loadUserOrders,
    TResult Function(List<int> ids)? loadOrdersProducts,
    required TResult orElse(),
  }) {
    if (loadUserOrders != null) {
      return loadUserOrders(userLogin);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$LoadUsersOrdersEvent value) loadUserOrders,
    required TResult Function(_$LoadOrdersProductsEvent value)
        loadOrdersProducts,
  }) {
    return loadUserOrders(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoadUsersOrdersEvent value)? loadUserOrders,
    TResult? Function(_$LoadOrdersProductsEvent value)? loadOrdersProducts,
  }) {
    return loadUserOrders?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoadUsersOrdersEvent value)? loadUserOrders,
    TResult Function(_$LoadOrdersProductsEvent value)? loadOrdersProducts,
    required TResult orElse(),
  }) {
    if (loadUserOrders != null) {
      return loadUserOrders(this);
    }
    return orElse();
  }
}

abstract class _$LoadUsersOrdersEvent implements OrdersEvent {
  const factory _$LoadUsersOrdersEvent({required final String userLogin}) =
      _$_$LoadUsersOrdersEvent;

  String get userLogin;
  @JsonKey(ignore: true)
  _$$_$LoadUsersOrdersEventCopyWith<_$_$LoadUsersOrdersEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$LoadOrdersProductsEventCopyWith<$Res> {
  factory _$$_$LoadOrdersProductsEventCopyWith(
          _$_$LoadOrdersProductsEvent value,
          $Res Function(_$_$LoadOrdersProductsEvent) then) =
      __$$_$LoadOrdersProductsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$_$LoadOrdersProductsEventCopyWithImpl<$Res>
    extends _$OrdersEventCopyWithImpl<$Res, _$_$LoadOrdersProductsEvent>
    implements _$$_$LoadOrdersProductsEventCopyWith<$Res> {
  __$$_$LoadOrdersProductsEventCopyWithImpl(_$_$LoadOrdersProductsEvent _value,
      $Res Function(_$_$LoadOrdersProductsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$_$LoadOrdersProductsEvent(
      ids: null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_$LoadOrdersProductsEvent implements _$LoadOrdersProductsEvent {
  const _$_$LoadOrdersProductsEvent({required final List<int> ids})
      : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'OrdersEvent.loadOrdersProducts(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$LoadOrdersProductsEvent &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$LoadOrdersProductsEventCopyWith<_$_$LoadOrdersProductsEvent>
      get copyWith => __$$_$LoadOrdersProductsEventCopyWithImpl<
          _$_$LoadOrdersProductsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String userLogin) loadUserOrders,
    required TResult Function(List<int> ids) loadOrdersProducts,
  }) {
    return loadOrdersProducts(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin)? loadUserOrders,
    TResult? Function(List<int> ids)? loadOrdersProducts,
  }) {
    return loadOrdersProducts?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin)? loadUserOrders,
    TResult Function(List<int> ids)? loadOrdersProducts,
    required TResult orElse(),
  }) {
    if (loadOrdersProducts != null) {
      return loadOrdersProducts(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$LoadUsersOrdersEvent value) loadUserOrders,
    required TResult Function(_$LoadOrdersProductsEvent value)
        loadOrdersProducts,
  }) {
    return loadOrdersProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$LoadUsersOrdersEvent value)? loadUserOrders,
    TResult? Function(_$LoadOrdersProductsEvent value)? loadOrdersProducts,
  }) {
    return loadOrdersProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$LoadUsersOrdersEvent value)? loadUserOrders,
    TResult Function(_$LoadOrdersProductsEvent value)? loadOrdersProducts,
    required TResult orElse(),
  }) {
    if (loadOrdersProducts != null) {
      return loadOrdersProducts(this);
    }
    return orElse();
  }
}

abstract class _$LoadOrdersProductsEvent implements OrdersEvent {
  const factory _$LoadOrdersProductsEvent({required final List<int> ids}) =
      _$_$LoadOrdersProductsEvent;

  List<int> get ids;
  @JsonKey(ignore: true)
  _$$_$LoadOrdersProductsEventCopyWith<_$_$LoadOrdersProductsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrdersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(List<Map<String, dynamic>> orders)
        usersOrdersLoaded,
    required TResult Function(
            List<ProductModel> products, OrganizationModel organization)
        ordersProductsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult? Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrdersInitialState value) initial,
    required TResult Function(_$OrdersLoadingState value) loading,
    required TResult Function(_$OrdersErroredState value) errored,
    required TResult Function(_$OrdersUsersOrdersLoadedState value)
        usersOrdersLoaded,
    required TResult Function(_$OrdersUsersOrdersProductsLoadedState value)
        ordersProductsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrdersInitialState value)? initial,
    TResult? Function(_$OrdersLoadingState value)? loading,
    TResult? Function(_$OrdersErroredState value)? errored,
    TResult? Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult? Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrdersInitialState value)? initial,
    TResult Function(_$OrdersLoadingState value)? loading,
    TResult Function(_$OrdersErroredState value)? errored,
    TResult Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrdersStateCopyWith<$Res> {
  factory $OrdersStateCopyWith(
          OrdersState value, $Res Function(OrdersState) then) =
      _$OrdersStateCopyWithImpl<$Res, OrdersState>;
}

/// @nodoc
class _$OrdersStateCopyWithImpl<$Res, $Val extends OrdersState>
    implements $OrdersStateCopyWith<$Res> {
  _$OrdersStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$OrdersInitialStateCopyWith<$Res> {
  factory _$$_$OrdersInitialStateCopyWith(_$_$OrdersInitialState value,
          $Res Function(_$_$OrdersInitialState) then) =
      __$$_$OrdersInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$OrdersInitialStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$_$OrdersInitialState>
    implements _$$_$OrdersInitialStateCopyWith<$Res> {
  __$$_$OrdersInitialStateCopyWithImpl(_$_$OrdersInitialState _value,
      $Res Function(_$_$OrdersInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$OrdersInitialState implements _$OrdersInitialState {
  const _$_$OrdersInitialState();

  @override
  String toString() {
    return 'OrdersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$OrdersInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(List<Map<String, dynamic>> orders)
        usersOrdersLoaded,
    required TResult Function(
            List<ProductModel> products, OrganizationModel organization)
        ordersProductsLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult? Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
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
    required TResult Function(_$OrdersInitialState value) initial,
    required TResult Function(_$OrdersLoadingState value) loading,
    required TResult Function(_$OrdersErroredState value) errored,
    required TResult Function(_$OrdersUsersOrdersLoadedState value)
        usersOrdersLoaded,
    required TResult Function(_$OrdersUsersOrdersProductsLoadedState value)
        ordersProductsLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrdersInitialState value)? initial,
    TResult? Function(_$OrdersLoadingState value)? loading,
    TResult? Function(_$OrdersErroredState value)? errored,
    TResult? Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult? Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrdersInitialState value)? initial,
    TResult Function(_$OrdersLoadingState value)? loading,
    TResult Function(_$OrdersErroredState value)? errored,
    TResult Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$OrdersInitialState implements OrdersState {
  const factory _$OrdersInitialState() = _$_$OrdersInitialState;
}

/// @nodoc
abstract class _$$_$OrdersLoadingStateCopyWith<$Res> {
  factory _$$_$OrdersLoadingStateCopyWith(_$_$OrdersLoadingState value,
          $Res Function(_$_$OrdersLoadingState) then) =
      __$$_$OrdersLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$OrdersLoadingStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$_$OrdersLoadingState>
    implements _$$_$OrdersLoadingStateCopyWith<$Res> {
  __$$_$OrdersLoadingStateCopyWithImpl(_$_$OrdersLoadingState _value,
      $Res Function(_$_$OrdersLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$OrdersLoadingState implements _$OrdersLoadingState {
  const _$_$OrdersLoadingState();

  @override
  String toString() {
    return 'OrdersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$OrdersLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(List<Map<String, dynamic>> orders)
        usersOrdersLoaded,
    required TResult Function(
            List<ProductModel> products, OrganizationModel organization)
        ordersProductsLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult? Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
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
    required TResult Function(_$OrdersInitialState value) initial,
    required TResult Function(_$OrdersLoadingState value) loading,
    required TResult Function(_$OrdersErroredState value) errored,
    required TResult Function(_$OrdersUsersOrdersLoadedState value)
        usersOrdersLoaded,
    required TResult Function(_$OrdersUsersOrdersProductsLoadedState value)
        ordersProductsLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrdersInitialState value)? initial,
    TResult? Function(_$OrdersLoadingState value)? loading,
    TResult? Function(_$OrdersErroredState value)? errored,
    TResult? Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult? Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrdersInitialState value)? initial,
    TResult Function(_$OrdersLoadingState value)? loading,
    TResult Function(_$OrdersErroredState value)? errored,
    TResult Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$OrdersLoadingState implements OrdersState {
  const factory _$OrdersLoadingState() = _$_$OrdersLoadingState;
}

/// @nodoc
abstract class _$$_$OrdersErroredStateCopyWith<$Res> {
  factory _$$_$OrdersErroredStateCopyWith(_$_$OrdersErroredState value,
          $Res Function(_$_$OrdersErroredState) then) =
      __$$_$OrdersErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$OrdersErroredStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$_$OrdersErroredState>
    implements _$$_$OrdersErroredStateCopyWith<$Res> {
  __$$_$OrdersErroredStateCopyWithImpl(_$_$OrdersErroredState _value,
      $Res Function(_$_$OrdersErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$OrdersErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$OrdersErroredState implements _$OrdersErroredState {
  const _$_$OrdersErroredState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'OrdersState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrdersErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrdersErroredStateCopyWith<_$_$OrdersErroredState> get copyWith =>
      __$$_$OrdersErroredStateCopyWithImpl<_$_$OrdersErroredState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(List<Map<String, dynamic>> orders)
        usersOrdersLoaded,
    required TResult Function(
            List<ProductModel> products, OrganizationModel organization)
        ordersProductsLoaded,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult? Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
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
    required TResult Function(_$OrdersInitialState value) initial,
    required TResult Function(_$OrdersLoadingState value) loading,
    required TResult Function(_$OrdersErroredState value) errored,
    required TResult Function(_$OrdersUsersOrdersLoadedState value)
        usersOrdersLoaded,
    required TResult Function(_$OrdersUsersOrdersProductsLoadedState value)
        ordersProductsLoaded,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrdersInitialState value)? initial,
    TResult? Function(_$OrdersLoadingState value)? loading,
    TResult? Function(_$OrdersErroredState value)? errored,
    TResult? Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult? Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrdersInitialState value)? initial,
    TResult Function(_$OrdersLoadingState value)? loading,
    TResult Function(_$OrdersErroredState value)? errored,
    TResult Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$OrdersErroredState implements OrdersState {
  const factory _$OrdersErroredState(final String error) =
      _$_$OrdersErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$OrdersErroredStateCopyWith<_$_$OrdersErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrdersUsersOrdersLoadedStateCopyWith<$Res> {
  factory _$$_$OrdersUsersOrdersLoadedStateCopyWith(
          _$_$OrdersUsersOrdersLoadedState value,
          $Res Function(_$_$OrdersUsersOrdersLoadedState) then) =
      __$$_$OrdersUsersOrdersLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Map<String, dynamic>> orders});
}

/// @nodoc
class __$$_$OrdersUsersOrdersLoadedStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res, _$_$OrdersUsersOrdersLoadedState>
    implements _$$_$OrdersUsersOrdersLoadedStateCopyWith<$Res> {
  __$$_$OrdersUsersOrdersLoadedStateCopyWithImpl(
      _$_$OrdersUsersOrdersLoadedState _value,
      $Res Function(_$_$OrdersUsersOrdersLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orders = null,
  }) {
    return _then(_$_$OrdersUsersOrdersLoadedState(
      null == orders
          ? _value._orders
          : orders // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
    ));
  }
}

/// @nodoc

class _$_$OrdersUsersOrdersLoadedState
    implements _$OrdersUsersOrdersLoadedState {
  const _$_$OrdersUsersOrdersLoadedState(
      final List<Map<String, dynamic>> orders)
      : _orders = orders;

  final List<Map<String, dynamic>> _orders;
  @override
  List<Map<String, dynamic>> get orders {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_orders);
  }

  @override
  String toString() {
    return 'OrdersState.usersOrdersLoaded(orders: $orders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrdersUsersOrdersLoadedState &&
            const DeepCollectionEquality().equals(other._orders, _orders));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_orders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrdersUsersOrdersLoadedStateCopyWith<_$_$OrdersUsersOrdersLoadedState>
      get copyWith => __$$_$OrdersUsersOrdersLoadedStateCopyWithImpl<
          _$_$OrdersUsersOrdersLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(List<Map<String, dynamic>> orders)
        usersOrdersLoaded,
    required TResult Function(
            List<ProductModel> products, OrganizationModel organization)
        ordersProductsLoaded,
  }) {
    return usersOrdersLoaded(orders);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult? Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
  }) {
    return usersOrdersLoaded?.call(orders);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) {
    if (usersOrdersLoaded != null) {
      return usersOrdersLoaded(orders);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrdersInitialState value) initial,
    required TResult Function(_$OrdersLoadingState value) loading,
    required TResult Function(_$OrdersErroredState value) errored,
    required TResult Function(_$OrdersUsersOrdersLoadedState value)
        usersOrdersLoaded,
    required TResult Function(_$OrdersUsersOrdersProductsLoadedState value)
        ordersProductsLoaded,
  }) {
    return usersOrdersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrdersInitialState value)? initial,
    TResult? Function(_$OrdersLoadingState value)? loading,
    TResult? Function(_$OrdersErroredState value)? errored,
    TResult? Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult? Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
  }) {
    return usersOrdersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrdersInitialState value)? initial,
    TResult Function(_$OrdersLoadingState value)? loading,
    TResult Function(_$OrdersErroredState value)? errored,
    TResult Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) {
    if (usersOrdersLoaded != null) {
      return usersOrdersLoaded(this);
    }
    return orElse();
  }
}

abstract class _$OrdersUsersOrdersLoadedState implements OrdersState {
  const factory _$OrdersUsersOrdersLoadedState(
          final List<Map<String, dynamic>> orders) =
      _$_$OrdersUsersOrdersLoadedState;

  List<Map<String, dynamic>> get orders;
  @JsonKey(ignore: true)
  _$$_$OrdersUsersOrdersLoadedStateCopyWith<_$_$OrdersUsersOrdersLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrdersUsersOrdersProductsLoadedStateCopyWith<$Res> {
  factory _$$_$OrdersUsersOrdersProductsLoadedStateCopyWith(
          _$_$OrdersUsersOrdersProductsLoadedState value,
          $Res Function(_$_$OrdersUsersOrdersProductsLoadedState) then) =
      __$$_$OrdersUsersOrdersProductsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> products, OrganizationModel organization});
}

/// @nodoc
class __$$_$OrdersUsersOrdersProductsLoadedStateCopyWithImpl<$Res>
    extends _$OrdersStateCopyWithImpl<$Res,
        _$_$OrdersUsersOrdersProductsLoadedState>
    implements _$$_$OrdersUsersOrdersProductsLoadedStateCopyWith<$Res> {
  __$$_$OrdersUsersOrdersProductsLoadedStateCopyWithImpl(
      _$_$OrdersUsersOrdersProductsLoadedState _value,
      $Res Function(_$_$OrdersUsersOrdersProductsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? organization = null,
  }) {
    return _then(_$_$OrdersUsersOrdersProductsLoadedState(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      organization: null == organization
          ? _value.organization
          : organization // ignore: cast_nullable_to_non_nullable
              as OrganizationModel,
    ));
  }
}

/// @nodoc

class _$_$OrdersUsersOrdersProductsLoadedState
    implements _$OrdersUsersOrdersProductsLoadedState {
  const _$_$OrdersUsersOrdersProductsLoadedState(
      {required final List<ProductModel> products, required this.organization})
      : _products = products;

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  final OrganizationModel organization;

  @override
  String toString() {
    return 'OrdersState.ordersProductsLoaded(products: $products, organization: $organization)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrdersUsersOrdersProductsLoadedState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            (identical(other.organization, organization) ||
                other.organization == organization));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_products), organization);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrdersUsersOrdersProductsLoadedStateCopyWith<
          _$_$OrdersUsersOrdersProductsLoadedState>
      get copyWith => __$$_$OrdersUsersOrdersProductsLoadedStateCopyWithImpl<
          _$_$OrdersUsersOrdersProductsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function(List<Map<String, dynamic>> orders)
        usersOrdersLoaded,
    required TResult Function(
            List<ProductModel> products, OrganizationModel organization)
        ordersProductsLoaded,
  }) {
    return ordersProductsLoaded(products, organization);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult? Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
  }) {
    return ordersProductsLoaded?.call(products, organization);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function(List<Map<String, dynamic>> orders)? usersOrdersLoaded,
    TResult Function(
            List<ProductModel> products, OrganizationModel organization)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) {
    if (ordersProductsLoaded != null) {
      return ordersProductsLoaded(products, organization);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrdersInitialState value) initial,
    required TResult Function(_$OrdersLoadingState value) loading,
    required TResult Function(_$OrdersErroredState value) errored,
    required TResult Function(_$OrdersUsersOrdersLoadedState value)
        usersOrdersLoaded,
    required TResult Function(_$OrdersUsersOrdersProductsLoadedState value)
        ordersProductsLoaded,
  }) {
    return ordersProductsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrdersInitialState value)? initial,
    TResult? Function(_$OrdersLoadingState value)? loading,
    TResult? Function(_$OrdersErroredState value)? errored,
    TResult? Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult? Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
  }) {
    return ordersProductsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrdersInitialState value)? initial,
    TResult Function(_$OrdersLoadingState value)? loading,
    TResult Function(_$OrdersErroredState value)? errored,
    TResult Function(_$OrdersUsersOrdersLoadedState value)? usersOrdersLoaded,
    TResult Function(_$OrdersUsersOrdersProductsLoadedState value)?
        ordersProductsLoaded,
    required TResult orElse(),
  }) {
    if (ordersProductsLoaded != null) {
      return ordersProductsLoaded(this);
    }
    return orElse();
  }
}

abstract class _$OrdersUsersOrdersProductsLoadedState implements OrdersState {
  const factory _$OrdersUsersOrdersProductsLoadedState(
          {required final List<ProductModel> products,
          required final OrganizationModel organization}) =
      _$_$OrdersUsersOrdersProductsLoadedState;

  List<ProductModel> get products;
  OrganizationModel get organization;
  @JsonKey(ignore: true)
  _$$_$OrdersUsersOrdersProductsLoadedStateCopyWith<
          _$_$OrdersUsersOrdersProductsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
