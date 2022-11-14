// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userLogin, int productQuantity, int productId)
        manageCartItem,
    required TResult Function(List<int> ids) loadProductsById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, int productQuantity, int productId)?
        manageCartItem,
    TResult? Function(List<int> ids)? loadProductsById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, int productQuantity, int productId)?
        manageCartItem,
    TResult Function(List<int> ids)? loadProductsById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CartManageCartItemEvent value) manageCartItem,
    required TResult Function(_$CartLoadProductsByIdEvent value)
        loadProductsById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartManageCartItemEvent value)? manageCartItem,
    TResult? Function(_$CartLoadProductsByIdEvent value)? loadProductsById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartManageCartItemEvent value)? manageCartItem,
    TResult Function(_$CartLoadProductsByIdEvent value)? loadProductsById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$CartManageCartItemEventCopyWith<$Res> {
  factory _$$_$CartManageCartItemEventCopyWith(
          _$_$CartManageCartItemEvent value,
          $Res Function(_$_$CartManageCartItemEvent) then) =
      __$$_$CartManageCartItemEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String userLogin, int productQuantity, int productId});
}

/// @nodoc
class __$$_$CartManageCartItemEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_$CartManageCartItemEvent>
    implements _$$_$CartManageCartItemEventCopyWith<$Res> {
  __$$_$CartManageCartItemEventCopyWithImpl(_$_$CartManageCartItemEvent _value,
      $Res Function(_$_$CartManageCartItemEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userLogin = null,
    Object? productQuantity = null,
    Object? productId = null,
  }) {
    return _then(_$_$CartManageCartItemEvent(
      userLogin: null == userLogin
          ? _value.userLogin
          : userLogin // ignore: cast_nullable_to_non_nullable
              as String,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_$CartManageCartItemEvent implements _$CartManageCartItemEvent {
  const _$_$CartManageCartItemEvent(
      {required this.userLogin,
      required this.productQuantity,
      required this.productId});

  @override
  final String userLogin;
  @override
  final int productQuantity;
  @override
  final int productId;

  @override
  String toString() {
    return 'CartEvent.manageCartItem(userLogin: $userLogin, productQuantity: $productQuantity, productId: $productId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$CartManageCartItemEvent &&
            (identical(other.userLogin, userLogin) ||
                other.userLogin == userLogin) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            (identical(other.productId, productId) ||
                other.productId == productId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userLogin, productQuantity, productId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$CartManageCartItemEventCopyWith<_$_$CartManageCartItemEvent>
      get copyWith => __$$_$CartManageCartItemEventCopyWithImpl<
          _$_$CartManageCartItemEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userLogin, int productQuantity, int productId)
        manageCartItem,
    required TResult Function(List<int> ids) loadProductsById,
  }) {
    return manageCartItem(userLogin, productQuantity, productId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, int productQuantity, int productId)?
        manageCartItem,
    TResult? Function(List<int> ids)? loadProductsById,
  }) {
    return manageCartItem?.call(userLogin, productQuantity, productId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, int productQuantity, int productId)?
        manageCartItem,
    TResult Function(List<int> ids)? loadProductsById,
    required TResult orElse(),
  }) {
    if (manageCartItem != null) {
      return manageCartItem(userLogin, productQuantity, productId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CartManageCartItemEvent value) manageCartItem,
    required TResult Function(_$CartLoadProductsByIdEvent value)
        loadProductsById,
  }) {
    return manageCartItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartManageCartItemEvent value)? manageCartItem,
    TResult? Function(_$CartLoadProductsByIdEvent value)? loadProductsById,
  }) {
    return manageCartItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartManageCartItemEvent value)? manageCartItem,
    TResult Function(_$CartLoadProductsByIdEvent value)? loadProductsById,
    required TResult orElse(),
  }) {
    if (manageCartItem != null) {
      return manageCartItem(this);
    }
    return orElse();
  }
}

abstract class _$CartManageCartItemEvent implements CartEvent {
  const factory _$CartManageCartItemEvent(
      {required final String userLogin,
      required final int productQuantity,
      required final int productId}) = _$_$CartManageCartItemEvent;

  String get userLogin;
  int get productQuantity;
  int get productId;
  @JsonKey(ignore: true)
  _$$_$CartManageCartItemEventCopyWith<_$_$CartManageCartItemEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$CartLoadProductsByIdEventCopyWith<$Res> {
  factory _$$_$CartLoadProductsByIdEventCopyWith(
          _$_$CartLoadProductsByIdEvent value,
          $Res Function(_$_$CartLoadProductsByIdEvent) then) =
      __$$_$CartLoadProductsByIdEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<int> ids});
}

/// @nodoc
class __$$_$CartLoadProductsByIdEventCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$_$CartLoadProductsByIdEvent>
    implements _$$_$CartLoadProductsByIdEventCopyWith<$Res> {
  __$$_$CartLoadProductsByIdEventCopyWithImpl(
      _$_$CartLoadProductsByIdEvent _value,
      $Res Function(_$_$CartLoadProductsByIdEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ids = null,
  }) {
    return _then(_$_$CartLoadProductsByIdEvent(
      null == ids
          ? _value._ids
          : ids // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_$CartLoadProductsByIdEvent implements _$CartLoadProductsByIdEvent {
  const _$_$CartLoadProductsByIdEvent(final List<int> ids) : _ids = ids;

  final List<int> _ids;
  @override
  List<int> get ids {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ids);
  }

  @override
  String toString() {
    return 'CartEvent.loadProductsById(ids: $ids)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$CartLoadProductsByIdEvent &&
            const DeepCollectionEquality().equals(other._ids, _ids));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_ids));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$CartLoadProductsByIdEventCopyWith<_$_$CartLoadProductsByIdEvent>
      get copyWith => __$$_$CartLoadProductsByIdEventCopyWithImpl<
          _$_$CartLoadProductsByIdEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String userLogin, int productQuantity, int productId)
        manageCartItem,
    required TResult Function(List<int> ids) loadProductsById,
  }) {
    return loadProductsById(ids);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String userLogin, int productQuantity, int productId)?
        manageCartItem,
    TResult? Function(List<int> ids)? loadProductsById,
  }) {
    return loadProductsById?.call(ids);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String userLogin, int productQuantity, int productId)?
        manageCartItem,
    TResult Function(List<int> ids)? loadProductsById,
    required TResult orElse(),
  }) {
    if (loadProductsById != null) {
      return loadProductsById(ids);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CartManageCartItemEvent value) manageCartItem,
    required TResult Function(_$CartLoadProductsByIdEvent value)
        loadProductsById,
  }) {
    return loadProductsById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartManageCartItemEvent value)? manageCartItem,
    TResult? Function(_$CartLoadProductsByIdEvent value)? loadProductsById,
  }) {
    return loadProductsById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartManageCartItemEvent value)? manageCartItem,
    TResult Function(_$CartLoadProductsByIdEvent value)? loadProductsById,
    required TResult orElse(),
  }) {
    if (loadProductsById != null) {
      return loadProductsById(this);
    }
    return orElse();
  }
}

abstract class _$CartLoadProductsByIdEvent implements CartEvent {
  const factory _$CartLoadProductsByIdEvent(final List<int> ids) =
      _$_$CartLoadProductsByIdEvent;

  List<int> get ids;
  @JsonKey(ignore: true)
  _$$_$CartLoadProductsByIdEventCopyWith<_$_$CartLoadProductsByIdEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CartState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItemModel? managedItem) itemManaged,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function() empty,
    required TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)
        productsByIdLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItemModel? managedItem)? itemManaged,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function()? empty,
    TResult? Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItemModel? managedItem)? itemManaged,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function()? empty,
    TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CartItemManagedState value) itemManaged,
    required TResult Function(_$CartItemInitialState value) initial,
    required TResult Function(_$CartItemLoadingState value) loading,
    required TResult Function(_$CartItemErroredState value) errored,
    required TResult Function(_$CartEmptyState value) empty,
    required TResult Function(_$CartProductsByIdLoadedState value)
        productsByIdLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartItemManagedState value)? itemManaged,
    TResult? Function(_$CartItemInitialState value)? initial,
    TResult? Function(_$CartItemLoadingState value)? loading,
    TResult? Function(_$CartItemErroredState value)? errored,
    TResult? Function(_$CartEmptyState value)? empty,
    TResult? Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartItemManagedState value)? itemManaged,
    TResult Function(_$CartItemInitialState value)? initial,
    TResult Function(_$CartItemLoadingState value)? loading,
    TResult Function(_$CartItemErroredState value)? errored,
    TResult Function(_$CartEmptyState value)? empty,
    TResult Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$CartItemManagedStateCopyWith<$Res> {
  factory _$$_$CartItemManagedStateCopyWith(_$_$CartItemManagedState value,
          $Res Function(_$_$CartItemManagedState) then) =
      __$$_$CartItemManagedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({CartItemModel? managedItem});
}

/// @nodoc
class __$$_$CartItemManagedStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_$CartItemManagedState>
    implements _$$_$CartItemManagedStateCopyWith<$Res> {
  __$$_$CartItemManagedStateCopyWithImpl(_$_$CartItemManagedState _value,
      $Res Function(_$_$CartItemManagedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? managedItem = freezed,
  }) {
    return _then(_$_$CartItemManagedState(
      freezed == managedItem
          ? _value.managedItem
          : managedItem // ignore: cast_nullable_to_non_nullable
              as CartItemModel?,
    ));
  }
}

/// @nodoc

class _$_$CartItemManagedState implements _$CartItemManagedState {
  const _$_$CartItemManagedState(this.managedItem);

  @override
  final CartItemModel? managedItem;

  @override
  String toString() {
    return 'CartState.itemManaged(managedItem: $managedItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$CartItemManagedState &&
            (identical(other.managedItem, managedItem) ||
                other.managedItem == managedItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, managedItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$CartItemManagedStateCopyWith<_$_$CartItemManagedState> get copyWith =>
      __$$_$CartItemManagedStateCopyWithImpl<_$_$CartItemManagedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItemModel? managedItem) itemManaged,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function() empty,
    required TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)
        productsByIdLoaded,
  }) {
    return itemManaged(managedItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItemModel? managedItem)? itemManaged,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function()? empty,
    TResult? Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
  }) {
    return itemManaged?.call(managedItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItemModel? managedItem)? itemManaged,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function()? empty,
    TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (itemManaged != null) {
      return itemManaged(managedItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CartItemManagedState value) itemManaged,
    required TResult Function(_$CartItemInitialState value) initial,
    required TResult Function(_$CartItemLoadingState value) loading,
    required TResult Function(_$CartItemErroredState value) errored,
    required TResult Function(_$CartEmptyState value) empty,
    required TResult Function(_$CartProductsByIdLoadedState value)
        productsByIdLoaded,
  }) {
    return itemManaged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartItemManagedState value)? itemManaged,
    TResult? Function(_$CartItemInitialState value)? initial,
    TResult? Function(_$CartItemLoadingState value)? loading,
    TResult? Function(_$CartItemErroredState value)? errored,
    TResult? Function(_$CartEmptyState value)? empty,
    TResult? Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
  }) {
    return itemManaged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartItemManagedState value)? itemManaged,
    TResult Function(_$CartItemInitialState value)? initial,
    TResult Function(_$CartItemLoadingState value)? loading,
    TResult Function(_$CartItemErroredState value)? errored,
    TResult Function(_$CartEmptyState value)? empty,
    TResult Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (itemManaged != null) {
      return itemManaged(this);
    }
    return orElse();
  }
}

abstract class _$CartItemManagedState implements CartState {
  const factory _$CartItemManagedState(final CartItemModel? managedItem) =
      _$_$CartItemManagedState;

  CartItemModel? get managedItem;
  @JsonKey(ignore: true)
  _$$_$CartItemManagedStateCopyWith<_$_$CartItemManagedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$CartItemInitialStateCopyWith<$Res> {
  factory _$$_$CartItemInitialStateCopyWith(_$_$CartItemInitialState value,
          $Res Function(_$_$CartItemInitialState) then) =
      __$$_$CartItemInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$CartItemInitialStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_$CartItemInitialState>
    implements _$$_$CartItemInitialStateCopyWith<$Res> {
  __$$_$CartItemInitialStateCopyWithImpl(_$_$CartItemInitialState _value,
      $Res Function(_$_$CartItemInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$CartItemInitialState implements _$CartItemInitialState {
  const _$_$CartItemInitialState();

  @override
  String toString() {
    return 'CartState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$CartItemInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItemModel? managedItem) itemManaged,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function() empty,
    required TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)
        productsByIdLoaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItemModel? managedItem)? itemManaged,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function()? empty,
    TResult? Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItemModel? managedItem)? itemManaged,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function()? empty,
    TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
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
    required TResult Function(_$CartItemManagedState value) itemManaged,
    required TResult Function(_$CartItemInitialState value) initial,
    required TResult Function(_$CartItemLoadingState value) loading,
    required TResult Function(_$CartItemErroredState value) errored,
    required TResult Function(_$CartEmptyState value) empty,
    required TResult Function(_$CartProductsByIdLoadedState value)
        productsByIdLoaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartItemManagedState value)? itemManaged,
    TResult? Function(_$CartItemInitialState value)? initial,
    TResult? Function(_$CartItemLoadingState value)? loading,
    TResult? Function(_$CartItemErroredState value)? errored,
    TResult? Function(_$CartEmptyState value)? empty,
    TResult? Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartItemManagedState value)? itemManaged,
    TResult Function(_$CartItemInitialState value)? initial,
    TResult Function(_$CartItemLoadingState value)? loading,
    TResult Function(_$CartItemErroredState value)? errored,
    TResult Function(_$CartEmptyState value)? empty,
    TResult Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$CartItemInitialState implements CartState {
  const factory _$CartItemInitialState() = _$_$CartItemInitialState;
}

/// @nodoc
abstract class _$$_$CartItemLoadingStateCopyWith<$Res> {
  factory _$$_$CartItemLoadingStateCopyWith(_$_$CartItemLoadingState value,
          $Res Function(_$_$CartItemLoadingState) then) =
      __$$_$CartItemLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$CartItemLoadingStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_$CartItemLoadingState>
    implements _$$_$CartItemLoadingStateCopyWith<$Res> {
  __$$_$CartItemLoadingStateCopyWithImpl(_$_$CartItemLoadingState _value,
      $Res Function(_$_$CartItemLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$CartItemLoadingState implements _$CartItemLoadingState {
  const _$_$CartItemLoadingState();

  @override
  String toString() {
    return 'CartState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$CartItemLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItemModel? managedItem) itemManaged,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function() empty,
    required TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)
        productsByIdLoaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItemModel? managedItem)? itemManaged,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function()? empty,
    TResult? Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItemModel? managedItem)? itemManaged,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function()? empty,
    TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
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
    required TResult Function(_$CartItemManagedState value) itemManaged,
    required TResult Function(_$CartItemInitialState value) initial,
    required TResult Function(_$CartItemLoadingState value) loading,
    required TResult Function(_$CartItemErroredState value) errored,
    required TResult Function(_$CartEmptyState value) empty,
    required TResult Function(_$CartProductsByIdLoadedState value)
        productsByIdLoaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartItemManagedState value)? itemManaged,
    TResult? Function(_$CartItemInitialState value)? initial,
    TResult? Function(_$CartItemLoadingState value)? loading,
    TResult? Function(_$CartItemErroredState value)? errored,
    TResult? Function(_$CartEmptyState value)? empty,
    TResult? Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartItemManagedState value)? itemManaged,
    TResult Function(_$CartItemInitialState value)? initial,
    TResult Function(_$CartItemLoadingState value)? loading,
    TResult Function(_$CartItemErroredState value)? errored,
    TResult Function(_$CartEmptyState value)? empty,
    TResult Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$CartItemLoadingState implements CartState {
  const factory _$CartItemLoadingState() = _$_$CartItemLoadingState;
}

/// @nodoc
abstract class _$$_$CartItemErroredStateCopyWith<$Res> {
  factory _$$_$CartItemErroredStateCopyWith(_$_$CartItemErroredState value,
          $Res Function(_$_$CartItemErroredState) then) =
      __$$_$CartItemErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$CartItemErroredStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_$CartItemErroredState>
    implements _$$_$CartItemErroredStateCopyWith<$Res> {
  __$$_$CartItemErroredStateCopyWithImpl(_$_$CartItemErroredState _value,
      $Res Function(_$_$CartItemErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$CartItemErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$CartItemErroredState implements _$CartItemErroredState {
  const _$_$CartItemErroredState(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CartState.errored(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$CartItemErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$CartItemErroredStateCopyWith<_$_$CartItemErroredState> get copyWith =>
      __$$_$CartItemErroredStateCopyWithImpl<_$_$CartItemErroredState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItemModel? managedItem) itemManaged,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function() empty,
    required TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)
        productsByIdLoaded,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItemModel? managedItem)? itemManaged,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function()? empty,
    TResult? Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItemModel? managedItem)? itemManaged,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function()? empty,
    TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
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
    required TResult Function(_$CartItemManagedState value) itemManaged,
    required TResult Function(_$CartItemInitialState value) initial,
    required TResult Function(_$CartItemLoadingState value) loading,
    required TResult Function(_$CartItemErroredState value) errored,
    required TResult Function(_$CartEmptyState value) empty,
    required TResult Function(_$CartProductsByIdLoadedState value)
        productsByIdLoaded,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartItemManagedState value)? itemManaged,
    TResult? Function(_$CartItemInitialState value)? initial,
    TResult? Function(_$CartItemLoadingState value)? loading,
    TResult? Function(_$CartItemErroredState value)? errored,
    TResult? Function(_$CartEmptyState value)? empty,
    TResult? Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartItemManagedState value)? itemManaged,
    TResult Function(_$CartItemInitialState value)? initial,
    TResult Function(_$CartItemLoadingState value)? loading,
    TResult Function(_$CartItemErroredState value)? errored,
    TResult Function(_$CartEmptyState value)? empty,
    TResult Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$CartItemErroredState implements CartState {
  const factory _$CartItemErroredState(final String error) =
      _$_$CartItemErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$CartItemErroredStateCopyWith<_$_$CartItemErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$CartEmptyStateCopyWith<$Res> {
  factory _$$_$CartEmptyStateCopyWith(
          _$_$CartEmptyState value, $Res Function(_$_$CartEmptyState) then) =
      __$$_$CartEmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$CartEmptyStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_$CartEmptyState>
    implements _$$_$CartEmptyStateCopyWith<$Res> {
  __$$_$CartEmptyStateCopyWithImpl(
      _$_$CartEmptyState _value, $Res Function(_$_$CartEmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$CartEmptyState implements _$CartEmptyState {
  const _$_$CartEmptyState();

  @override
  String toString() {
    return 'CartState.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$CartEmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItemModel? managedItem) itemManaged,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function() empty,
    required TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)
        productsByIdLoaded,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItemModel? managedItem)? itemManaged,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function()? empty,
    TResult? Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItemModel? managedItem)? itemManaged,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function()? empty,
    TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CartItemManagedState value) itemManaged,
    required TResult Function(_$CartItemInitialState value) initial,
    required TResult Function(_$CartItemLoadingState value) loading,
    required TResult Function(_$CartItemErroredState value) errored,
    required TResult Function(_$CartEmptyState value) empty,
    required TResult Function(_$CartProductsByIdLoadedState value)
        productsByIdLoaded,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartItemManagedState value)? itemManaged,
    TResult? Function(_$CartItemInitialState value)? initial,
    TResult? Function(_$CartItemLoadingState value)? loading,
    TResult? Function(_$CartItemErroredState value)? errored,
    TResult? Function(_$CartEmptyState value)? empty,
    TResult? Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartItemManagedState value)? itemManaged,
    TResult Function(_$CartItemInitialState value)? initial,
    TResult Function(_$CartItemLoadingState value)? loading,
    TResult Function(_$CartItemErroredState value)? errored,
    TResult Function(_$CartEmptyState value)? empty,
    TResult Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _$CartEmptyState implements CartState {
  const factory _$CartEmptyState() = _$_$CartEmptyState;
}

/// @nodoc
abstract class _$$_$CartProductsByIdLoadedStateCopyWith<$Res> {
  factory _$$_$CartProductsByIdLoadedStateCopyWith(
          _$_$CartProductsByIdLoadedState value,
          $Res Function(_$_$CartProductsByIdLoadedState) then) =
      __$$_$CartProductsByIdLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ProductModel> products, List<OrganizationModel> organizations});
}

/// @nodoc
class __$$_$CartProductsByIdLoadedStateCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$_$CartProductsByIdLoadedState>
    implements _$$_$CartProductsByIdLoadedStateCopyWith<$Res> {
  __$$_$CartProductsByIdLoadedStateCopyWithImpl(
      _$_$CartProductsByIdLoadedState _value,
      $Res Function(_$_$CartProductsByIdLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
    Object? organizations = null,
  }) {
    return _then(_$_$CartProductsByIdLoadedState(
      null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
      null == organizations
          ? _value._organizations
          : organizations // ignore: cast_nullable_to_non_nullable
              as List<OrganizationModel>,
    ));
  }
}

/// @nodoc

class _$_$CartProductsByIdLoadedState implements _$CartProductsByIdLoadedState {
  const _$_$CartProductsByIdLoadedState(final List<ProductModel> products,
      final List<OrganizationModel> organizations)
      : _products = products,
        _organizations = organizations;

  final List<ProductModel> _products;
  @override
  List<ProductModel> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final List<OrganizationModel> _organizations;
  @override
  List<OrganizationModel> get organizations {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_organizations);
  }

  @override
  String toString() {
    return 'CartState.productsByIdLoaded(products: $products, organizations: $organizations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$CartProductsByIdLoadedState &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._organizations, _organizations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_organizations));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$CartProductsByIdLoadedStateCopyWith<_$_$CartProductsByIdLoadedState>
      get copyWith => __$$_$CartProductsByIdLoadedStateCopyWithImpl<
          _$_$CartProductsByIdLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CartItemModel? managedItem) itemManaged,
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String error) errored,
    required TResult Function() empty,
    required TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)
        productsByIdLoaded,
  }) {
    return productsByIdLoaded(products, organizations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CartItemModel? managedItem)? itemManaged,
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String error)? errored,
    TResult? Function()? empty,
    TResult? Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
  }) {
    return productsByIdLoaded?.call(products, organizations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CartItemModel? managedItem)? itemManaged,
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String error)? errored,
    TResult Function()? empty,
    TResult Function(
            List<ProductModel> products, List<OrganizationModel> organizations)?
        productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (productsByIdLoaded != null) {
      return productsByIdLoaded(products, organizations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$CartItemManagedState value) itemManaged,
    required TResult Function(_$CartItemInitialState value) initial,
    required TResult Function(_$CartItemLoadingState value) loading,
    required TResult Function(_$CartItemErroredState value) errored,
    required TResult Function(_$CartEmptyState value) empty,
    required TResult Function(_$CartProductsByIdLoadedState value)
        productsByIdLoaded,
  }) {
    return productsByIdLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$CartItemManagedState value)? itemManaged,
    TResult? Function(_$CartItemInitialState value)? initial,
    TResult? Function(_$CartItemLoadingState value)? loading,
    TResult? Function(_$CartItemErroredState value)? errored,
    TResult? Function(_$CartEmptyState value)? empty,
    TResult? Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
  }) {
    return productsByIdLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$CartItemManagedState value)? itemManaged,
    TResult Function(_$CartItemInitialState value)? initial,
    TResult Function(_$CartItemLoadingState value)? loading,
    TResult Function(_$CartItemErroredState value)? errored,
    TResult Function(_$CartEmptyState value)? empty,
    TResult Function(_$CartProductsByIdLoadedState value)? productsByIdLoaded,
    required TResult orElse(),
  }) {
    if (productsByIdLoaded != null) {
      return productsByIdLoaded(this);
    }
    return orElse();
  }
}

abstract class _$CartProductsByIdLoadedState implements CartState {
  const factory _$CartProductsByIdLoadedState(final List<ProductModel> products,
          final List<OrganizationModel> organizations) =
      _$_$CartProductsByIdLoadedState;

  List<ProductModel> get products;
  List<OrganizationModel> get organizations;
  @JsonKey(ignore: true)
  _$$_$CartProductsByIdLoadedStateCopyWith<_$_$CartProductsByIdLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
