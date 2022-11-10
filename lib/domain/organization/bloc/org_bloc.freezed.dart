// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'org_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrganizationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)
        createNew,
    required TResult Function(int organizationId, sortType sort,
            String? category, String? brand, String? name)
        loadStuff,
    required TResult Function(sortType sort, AddressModel address,
            String? category, String? brand, String? name)
        loadOrganizations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)?
        createNew,
    TResult? Function(int organizationId, sortType sort, String? category,
            String? brand, String? name)?
        loadStuff,
    TResult? Function(sortType sort, AddressModel address, String? category,
            String? brand, String? name)?
        loadOrganizations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)?
        createNew,
    TResult Function(int organizationId, sortType sort, String? category,
            String? brand, String? name)?
        loadStuff,
    TResult Function(sortType sort, AddressModel address, String? category,
            String? brand, String? name)?
        loadOrganizations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationCreateNewEvent value) createNew,
    required TResult Function(_$OrganizationLoadStuffEvent value) loadStuff,
    required TResult Function(_$OrganizationLoadOrganizationsEvent value)
        loadOrganizations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationCreateNewEvent value)? createNew,
    TResult? Function(_$OrganizationLoadStuffEvent value)? loadStuff,
    TResult? Function(_$OrganizationLoadOrganizationsEvent value)?
        loadOrganizations,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationCreateNewEvent value)? createNew,
    TResult Function(_$OrganizationLoadStuffEvent value)? loadStuff,
    TResult Function(_$OrganizationLoadOrganizationsEvent value)?
        loadOrganizations,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationEventCopyWith<$Res> {
  factory $OrganizationEventCopyWith(
          OrganizationEvent value, $Res Function(OrganizationEvent) then) =
      _$OrganizationEventCopyWithImpl<$Res, OrganizationEvent>;
}

/// @nodoc
class _$OrganizationEventCopyWithImpl<$Res, $Val extends OrganizationEvent>
    implements $OrganizationEventCopyWith<$Res> {
  _$OrganizationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$OrganizationCreateNewEventCopyWith<$Res> {
  factory _$$_$OrganizationCreateNewEventCopyWith(
          _$_$OrganizationCreateNewEvent value,
          $Res Function(_$_$OrganizationCreateNewEvent) then) =
      __$$_$OrganizationCreateNewEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {AddressModel addressModel,
      String name,
      double deliveryPrice,
      Uint8List logoImage,
      Uint8List cardImage});
}

/// @nodoc
class __$$_$OrganizationCreateNewEventCopyWithImpl<$Res>
    extends _$OrganizationEventCopyWithImpl<$Res,
        _$_$OrganizationCreateNewEvent>
    implements _$$_$OrganizationCreateNewEventCopyWith<$Res> {
  __$$_$OrganizationCreateNewEventCopyWithImpl(
      _$_$OrganizationCreateNewEvent _value,
      $Res Function(_$_$OrganizationCreateNewEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressModel = null,
    Object? name = null,
    Object? deliveryPrice = null,
    Object? logoImage = null,
    Object? cardImage = null,
  }) {
    return _then(_$_$OrganizationCreateNewEvent(
      addressModel: null == addressModel
          ? _value.addressModel
          : addressModel // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryPrice: null == deliveryPrice
          ? _value.deliveryPrice
          : deliveryPrice // ignore: cast_nullable_to_non_nullable
              as double,
      logoImage: null == logoImage
          ? _value.logoImage
          : logoImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
      cardImage: null == cardImage
          ? _value.cardImage
          : cardImage // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_$OrganizationCreateNewEvent
    with DiagnosticableTreeMixin
    implements _$OrganizationCreateNewEvent {
  const _$_$OrganizationCreateNewEvent(
      {required this.addressModel,
      required this.name,
      required this.deliveryPrice,
      required this.logoImage,
      required this.cardImage});

  @override
  final AddressModel addressModel;
  @override
  final String name;
  @override
  final double deliveryPrice;
  @override
  final Uint8List logoImage;
  @override
  final Uint8List cardImage;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationEvent.createNew(addressModel: $addressModel, name: $name, deliveryPrice: $deliveryPrice, logoImage: $logoImage, cardImage: $cardImage)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganizationEvent.createNew'))
      ..add(DiagnosticsProperty('addressModel', addressModel))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('deliveryPrice', deliveryPrice))
      ..add(DiagnosticsProperty('logoImage', logoImage))
      ..add(DiagnosticsProperty('cardImage', cardImage));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationCreateNewEvent &&
            (identical(other.addressModel, addressModel) ||
                other.addressModel == addressModel) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.deliveryPrice, deliveryPrice) ||
                other.deliveryPrice == deliveryPrice) &&
            const DeepCollectionEquality().equals(other.logoImage, logoImage) &&
            const DeepCollectionEquality().equals(other.cardImage, cardImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressModel,
      name,
      deliveryPrice,
      const DeepCollectionEquality().hash(logoImage),
      const DeepCollectionEquality().hash(cardImage));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationCreateNewEventCopyWith<_$_$OrganizationCreateNewEvent>
      get copyWith => __$$_$OrganizationCreateNewEventCopyWithImpl<
          _$_$OrganizationCreateNewEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)
        createNew,
    required TResult Function(int organizationId, sortType sort,
            String? category, String? brand, String? name)
        loadStuff,
    required TResult Function(sortType sort, AddressModel address,
            String? category, String? brand, String? name)
        loadOrganizations,
  }) {
    return createNew(addressModel, name, deliveryPrice, logoImage, cardImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)?
        createNew,
    TResult? Function(int organizationId, sortType sort, String? category,
            String? brand, String? name)?
        loadStuff,
    TResult? Function(sortType sort, AddressModel address, String? category,
            String? brand, String? name)?
        loadOrganizations,
  }) {
    return createNew?.call(
        addressModel, name, deliveryPrice, logoImage, cardImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)?
        createNew,
    TResult Function(int organizationId, sortType sort, String? category,
            String? brand, String? name)?
        loadStuff,
    TResult Function(sortType sort, AddressModel address, String? category,
            String? brand, String? name)?
        loadOrganizations,
    required TResult orElse(),
  }) {
    if (createNew != null) {
      return createNew(addressModel, name, deliveryPrice, logoImage, cardImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationCreateNewEvent value) createNew,
    required TResult Function(_$OrganizationLoadStuffEvent value) loadStuff,
    required TResult Function(_$OrganizationLoadOrganizationsEvent value)
        loadOrganizations,
  }) {
    return createNew(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationCreateNewEvent value)? createNew,
    TResult? Function(_$OrganizationLoadStuffEvent value)? loadStuff,
    TResult? Function(_$OrganizationLoadOrganizationsEvent value)?
        loadOrganizations,
  }) {
    return createNew?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationCreateNewEvent value)? createNew,
    TResult Function(_$OrganizationLoadStuffEvent value)? loadStuff,
    TResult Function(_$OrganizationLoadOrganizationsEvent value)?
        loadOrganizations,
    required TResult orElse(),
  }) {
    if (createNew != null) {
      return createNew(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationCreateNewEvent implements OrganizationEvent {
  const factory _$OrganizationCreateNewEvent(
      {required final AddressModel addressModel,
      required final String name,
      required final double deliveryPrice,
      required final Uint8List logoImage,
      required final Uint8List cardImage}) = _$_$OrganizationCreateNewEvent;

  AddressModel get addressModel;
  String get name;
  double get deliveryPrice;
  Uint8List get logoImage;
  Uint8List get cardImage;
  @JsonKey(ignore: true)
  _$$_$OrganizationCreateNewEventCopyWith<_$_$OrganizationCreateNewEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrganizationLoadStuffEventCopyWith<$Res> {
  factory _$$_$OrganizationLoadStuffEventCopyWith(
          _$_$OrganizationLoadStuffEvent value,
          $Res Function(_$_$OrganizationLoadStuffEvent) then) =
      __$$_$OrganizationLoadStuffEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int organizationId,
      sortType sort,
      String? category,
      String? brand,
      String? name});
}

/// @nodoc
class __$$_$OrganizationLoadStuffEventCopyWithImpl<$Res>
    extends _$OrganizationEventCopyWithImpl<$Res,
        _$_$OrganizationLoadStuffEvent>
    implements _$$_$OrganizationLoadStuffEventCopyWith<$Res> {
  __$$_$OrganizationLoadStuffEventCopyWithImpl(
      _$_$OrganizationLoadStuffEvent _value,
      $Res Function(_$_$OrganizationLoadStuffEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? organizationId = null,
    Object? sort = null,
    Object? category = freezed,
    Object? brand = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_$OrganizationLoadStuffEvent(
      organizationId: null == organizationId
          ? _value.organizationId
          : organizationId // ignore: cast_nullable_to_non_nullable
              as int,
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as sortType,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_$OrganizationLoadStuffEvent
    with DiagnosticableTreeMixin
    implements _$OrganizationLoadStuffEvent {
  const _$_$OrganizationLoadStuffEvent(
      {required this.organizationId,
      required this.sort,
      this.category,
      this.brand,
      this.name});

  @override
  final int organizationId;
  @override
  final sortType sort;
  @override
  final String? category;
  @override
  final String? brand;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationEvent.loadStuff(organizationId: $organizationId, sort: $sort, category: $category, brand: $brand, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganizationEvent.loadStuff'))
      ..add(DiagnosticsProperty('organizationId', organizationId))
      ..add(DiagnosticsProperty('sort', sort))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationLoadStuffEvent &&
            (identical(other.organizationId, organizationId) ||
                other.organizationId == organizationId) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, organizationId, sort, category, brand, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationLoadStuffEventCopyWith<_$_$OrganizationLoadStuffEvent>
      get copyWith => __$$_$OrganizationLoadStuffEventCopyWithImpl<
          _$_$OrganizationLoadStuffEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)
        createNew,
    required TResult Function(int organizationId, sortType sort,
            String? category, String? brand, String? name)
        loadStuff,
    required TResult Function(sortType sort, AddressModel address,
            String? category, String? brand, String? name)
        loadOrganizations,
  }) {
    return loadStuff(organizationId, sort, category, brand, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)?
        createNew,
    TResult? Function(int organizationId, sortType sort, String? category,
            String? brand, String? name)?
        loadStuff,
    TResult? Function(sortType sort, AddressModel address, String? category,
            String? brand, String? name)?
        loadOrganizations,
  }) {
    return loadStuff?.call(organizationId, sort, category, brand, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)?
        createNew,
    TResult Function(int organizationId, sortType sort, String? category,
            String? brand, String? name)?
        loadStuff,
    TResult Function(sortType sort, AddressModel address, String? category,
            String? brand, String? name)?
        loadOrganizations,
    required TResult orElse(),
  }) {
    if (loadStuff != null) {
      return loadStuff(organizationId, sort, category, brand, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationCreateNewEvent value) createNew,
    required TResult Function(_$OrganizationLoadStuffEvent value) loadStuff,
    required TResult Function(_$OrganizationLoadOrganizationsEvent value)
        loadOrganizations,
  }) {
    return loadStuff(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationCreateNewEvent value)? createNew,
    TResult? Function(_$OrganizationLoadStuffEvent value)? loadStuff,
    TResult? Function(_$OrganizationLoadOrganizationsEvent value)?
        loadOrganizations,
  }) {
    return loadStuff?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationCreateNewEvent value)? createNew,
    TResult Function(_$OrganizationLoadStuffEvent value)? loadStuff,
    TResult Function(_$OrganizationLoadOrganizationsEvent value)?
        loadOrganizations,
    required TResult orElse(),
  }) {
    if (loadStuff != null) {
      return loadStuff(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationLoadStuffEvent implements OrganizationEvent {
  const factory _$OrganizationLoadStuffEvent(
      {required final int organizationId,
      required final sortType sort,
      final String? category,
      final String? brand,
      final String? name}) = _$_$OrganizationLoadStuffEvent;

  int get organizationId;
  sortType get sort;
  String? get category;
  String? get brand;
  String? get name;
  @JsonKey(ignore: true)
  _$$_$OrganizationLoadStuffEventCopyWith<_$_$OrganizationLoadStuffEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrganizationLoadOrganizationsEventCopyWith<$Res> {
  factory _$$_$OrganizationLoadOrganizationsEventCopyWith(
          _$_$OrganizationLoadOrganizationsEvent value,
          $Res Function(_$_$OrganizationLoadOrganizationsEvent) then) =
      __$$_$OrganizationLoadOrganizationsEventCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {sortType sort,
      AddressModel address,
      String? category,
      String? brand,
      String? name});
}

/// @nodoc
class __$$_$OrganizationLoadOrganizationsEventCopyWithImpl<$Res>
    extends _$OrganizationEventCopyWithImpl<$Res,
        _$_$OrganizationLoadOrganizationsEvent>
    implements _$$_$OrganizationLoadOrganizationsEventCopyWith<$Res> {
  __$$_$OrganizationLoadOrganizationsEventCopyWithImpl(
      _$_$OrganizationLoadOrganizationsEvent _value,
      $Res Function(_$_$OrganizationLoadOrganizationsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sort = null,
    Object? address = null,
    Object? category = freezed,
    Object? brand = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_$OrganizationLoadOrganizationsEvent(
      sort: null == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as sortType,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressModel,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_$OrganizationLoadOrganizationsEvent
    with DiagnosticableTreeMixin
    implements _$OrganizationLoadOrganizationsEvent {
  const _$_$OrganizationLoadOrganizationsEvent(
      {required this.sort,
      required this.address,
      this.category,
      this.brand,
      this.name});

  @override
  final sortType sort;
  @override
  final AddressModel address;
  @override
  final String? category;
  @override
  final String? brand;
  @override
  final String? name;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationEvent.loadOrganizations(sort: $sort, address: $address, category: $category, brand: $brand, name: $name)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganizationEvent.loadOrganizations'))
      ..add(DiagnosticsProperty('sort', sort))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('brand', brand))
      ..add(DiagnosticsProperty('name', name));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationLoadOrganizationsEvent &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sort, address, category, brand, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationLoadOrganizationsEventCopyWith<
          _$_$OrganizationLoadOrganizationsEvent>
      get copyWith => __$$_$OrganizationLoadOrganizationsEventCopyWithImpl<
          _$_$OrganizationLoadOrganizationsEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)
        createNew,
    required TResult Function(int organizationId, sortType sort,
            String? category, String? brand, String? name)
        loadStuff,
    required TResult Function(sortType sort, AddressModel address,
            String? category, String? brand, String? name)
        loadOrganizations,
  }) {
    return loadOrganizations(sort, address, category, brand, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)?
        createNew,
    TResult? Function(int organizationId, sortType sort, String? category,
            String? brand, String? name)?
        loadStuff,
    TResult? Function(sortType sort, AddressModel address, String? category,
            String? brand, String? name)?
        loadOrganizations,
  }) {
    return loadOrganizations?.call(sort, address, category, brand, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AddressModel addressModel, String name,
            double deliveryPrice, Uint8List logoImage, Uint8List cardImage)?
        createNew,
    TResult Function(int organizationId, sortType sort, String? category,
            String? brand, String? name)?
        loadStuff,
    TResult Function(sortType sort, AddressModel address, String? category,
            String? brand, String? name)?
        loadOrganizations,
    required TResult orElse(),
  }) {
    if (loadOrganizations != null) {
      return loadOrganizations(sort, address, category, brand, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationCreateNewEvent value) createNew,
    required TResult Function(_$OrganizationLoadStuffEvent value) loadStuff,
    required TResult Function(_$OrganizationLoadOrganizationsEvent value)
        loadOrganizations,
  }) {
    return loadOrganizations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationCreateNewEvent value)? createNew,
    TResult? Function(_$OrganizationLoadStuffEvent value)? loadStuff,
    TResult? Function(_$OrganizationLoadOrganizationsEvent value)?
        loadOrganizations,
  }) {
    return loadOrganizations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationCreateNewEvent value)? createNew,
    TResult Function(_$OrganizationLoadStuffEvent value)? loadStuff,
    TResult Function(_$OrganizationLoadOrganizationsEvent value)?
        loadOrganizations,
    required TResult orElse(),
  }) {
    if (loadOrganizations != null) {
      return loadOrganizations(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationLoadOrganizationsEvent
    implements OrganizationEvent {
  const factory _$OrganizationLoadOrganizationsEvent(
      {required final sortType sort,
      required final AddressModel address,
      final String? category,
      final String? brand,
      final String? name}) = _$_$OrganizationLoadOrganizationsEvent;

  sortType get sort;
  AddressModel get address;
  String? get category;
  String? get brand;
  String? get name;
  @JsonKey(ignore: true)
  _$$_$OrganizationLoadOrganizationsEventCopyWith<
          _$_$OrganizationLoadOrganizationsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrganizationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(OrganizationModel model) loaded,
    required TResult Function(List<OrganizationModel> models)
        usersOrganizationsLoaded,
    required TResult Function(List<ProductModel> stuff) stuffLoaded,
    required TResult Function(String errorTitle, String errorSubtitle) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(OrganizationModel model)? loaded,
    TResult? Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult? Function(List<ProductModel> stuff)? stuffLoaded,
    TResult? Function(String errorTitle, String errorSubtitle)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(OrganizationModel model)? loaded,
    TResult Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult Function(List<ProductModel> stuff)? stuffLoaded,
    TResult Function(String errorTitle, String errorSubtitle)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationLoadingState value) loading,
    required TResult Function(_$OrganizationInitialState value) initial,
    required TResult Function(_$OrganizationLoadedState value) loaded,
    required TResult Function(_$OrganizationUserOrganizationsLoadedState value)
        usersOrganizationsLoaded,
    required TResult Function(_$OrganizationStuffLoadedState value) stuffLoaded,
    required TResult Function(_$OrganizationErroredState value) errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationLoadingState value)? loading,
    TResult? Function(_$OrganizationInitialState value)? initial,
    TResult? Function(_$OrganizationLoadedState value)? loaded,
    TResult? Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult? Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult? Function(_$OrganizationErroredState value)? errored,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationLoadingState value)? loading,
    TResult Function(_$OrganizationInitialState value)? initial,
    TResult Function(_$OrganizationLoadedState value)? loaded,
    TResult Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult Function(_$OrganizationErroredState value)? errored,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrganizationStateCopyWith<$Res> {
  factory $OrganizationStateCopyWith(
          OrganizationState value, $Res Function(OrganizationState) then) =
      _$OrganizationStateCopyWithImpl<$Res, OrganizationState>;
}

/// @nodoc
class _$OrganizationStateCopyWithImpl<$Res, $Val extends OrganizationState>
    implements $OrganizationStateCopyWith<$Res> {
  _$OrganizationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$OrganizationLoadingStateCopyWith<$Res> {
  factory _$$_$OrganizationLoadingStateCopyWith(
          _$_$OrganizationLoadingState value,
          $Res Function(_$_$OrganizationLoadingState) then) =
      __$$_$OrganizationLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$OrganizationLoadingStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res, _$_$OrganizationLoadingState>
    implements _$$_$OrganizationLoadingStateCopyWith<$Res> {
  __$$_$OrganizationLoadingStateCopyWithImpl(
      _$_$OrganizationLoadingState _value,
      $Res Function(_$_$OrganizationLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$OrganizationLoadingState
    with DiagnosticableTreeMixin
    implements _$OrganizationLoadingState {
  const _$_$OrganizationLoadingState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'OrganizationState.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(OrganizationModel model) loaded,
    required TResult Function(List<OrganizationModel> models)
        usersOrganizationsLoaded,
    required TResult Function(List<ProductModel> stuff) stuffLoaded,
    required TResult Function(String errorTitle, String errorSubtitle) errored,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(OrganizationModel model)? loaded,
    TResult? Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult? Function(List<ProductModel> stuff)? stuffLoaded,
    TResult? Function(String errorTitle, String errorSubtitle)? errored,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(OrganizationModel model)? loaded,
    TResult Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult Function(List<ProductModel> stuff)? stuffLoaded,
    TResult Function(String errorTitle, String errorSubtitle)? errored,
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
    required TResult Function(_$OrganizationLoadingState value) loading,
    required TResult Function(_$OrganizationInitialState value) initial,
    required TResult Function(_$OrganizationLoadedState value) loaded,
    required TResult Function(_$OrganizationUserOrganizationsLoadedState value)
        usersOrganizationsLoaded,
    required TResult Function(_$OrganizationStuffLoadedState value) stuffLoaded,
    required TResult Function(_$OrganizationErroredState value) errored,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationLoadingState value)? loading,
    TResult? Function(_$OrganizationInitialState value)? initial,
    TResult? Function(_$OrganizationLoadedState value)? loaded,
    TResult? Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult? Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult? Function(_$OrganizationErroredState value)? errored,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationLoadingState value)? loading,
    TResult Function(_$OrganizationInitialState value)? initial,
    TResult Function(_$OrganizationLoadedState value)? loaded,
    TResult Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult Function(_$OrganizationErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationLoadingState implements OrganizationState {
  const factory _$OrganizationLoadingState() = _$_$OrganizationLoadingState;
}

/// @nodoc
abstract class _$$_$OrganizationInitialStateCopyWith<$Res> {
  factory _$$_$OrganizationInitialStateCopyWith(
          _$_$OrganizationInitialState value,
          $Res Function(_$_$OrganizationInitialState) then) =
      __$$_$OrganizationInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$OrganizationInitialStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res, _$_$OrganizationInitialState>
    implements _$$_$OrganizationInitialStateCopyWith<$Res> {
  __$$_$OrganizationInitialStateCopyWithImpl(
      _$_$OrganizationInitialState _value,
      $Res Function(_$_$OrganizationInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$OrganizationInitialState
    with DiagnosticableTreeMixin
    implements _$OrganizationInitialState {
  const _$_$OrganizationInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'OrganizationState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(OrganizationModel model) loaded,
    required TResult Function(List<OrganizationModel> models)
        usersOrganizationsLoaded,
    required TResult Function(List<ProductModel> stuff) stuffLoaded,
    required TResult Function(String errorTitle, String errorSubtitle) errored,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(OrganizationModel model)? loaded,
    TResult? Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult? Function(List<ProductModel> stuff)? stuffLoaded,
    TResult? Function(String errorTitle, String errorSubtitle)? errored,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(OrganizationModel model)? loaded,
    TResult Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult Function(List<ProductModel> stuff)? stuffLoaded,
    TResult Function(String errorTitle, String errorSubtitle)? errored,
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
    required TResult Function(_$OrganizationLoadingState value) loading,
    required TResult Function(_$OrganizationInitialState value) initial,
    required TResult Function(_$OrganizationLoadedState value) loaded,
    required TResult Function(_$OrganizationUserOrganizationsLoadedState value)
        usersOrganizationsLoaded,
    required TResult Function(_$OrganizationStuffLoadedState value) stuffLoaded,
    required TResult Function(_$OrganizationErroredState value) errored,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationLoadingState value)? loading,
    TResult? Function(_$OrganizationInitialState value)? initial,
    TResult? Function(_$OrganizationLoadedState value)? loaded,
    TResult? Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult? Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult? Function(_$OrganizationErroredState value)? errored,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationLoadingState value)? loading,
    TResult Function(_$OrganizationInitialState value)? initial,
    TResult Function(_$OrganizationLoadedState value)? loaded,
    TResult Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult Function(_$OrganizationErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationInitialState implements OrganizationState {
  const factory _$OrganizationInitialState() = _$_$OrganizationInitialState;
}

/// @nodoc
abstract class _$$_$OrganizationLoadedStateCopyWith<$Res> {
  factory _$$_$OrganizationLoadedStateCopyWith(
          _$_$OrganizationLoadedState value,
          $Res Function(_$_$OrganizationLoadedState) then) =
      __$$_$OrganizationLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({OrganizationModel model});
}

/// @nodoc
class __$$_$OrganizationLoadedStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res, _$_$OrganizationLoadedState>
    implements _$$_$OrganizationLoadedStateCopyWith<$Res> {
  __$$_$OrganizationLoadedStateCopyWithImpl(_$_$OrganizationLoadedState _value,
      $Res Function(_$_$OrganizationLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$_$OrganizationLoadedState(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as OrganizationModel,
    ));
  }
}

/// @nodoc

class _$_$OrganizationLoadedState
    with DiagnosticableTreeMixin
    implements _$OrganizationLoadedState {
  const _$_$OrganizationLoadedState(this.model);

  @override
  final OrganizationModel model;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationState.loaded(model: $model)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganizationState.loaded'))
      ..add(DiagnosticsProperty('model', model));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationLoadedState &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationLoadedStateCopyWith<_$_$OrganizationLoadedState>
      get copyWith => __$$_$OrganizationLoadedStateCopyWithImpl<
          _$_$OrganizationLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(OrganizationModel model) loaded,
    required TResult Function(List<OrganizationModel> models)
        usersOrganizationsLoaded,
    required TResult Function(List<ProductModel> stuff) stuffLoaded,
    required TResult Function(String errorTitle, String errorSubtitle) errored,
  }) {
    return loaded(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(OrganizationModel model)? loaded,
    TResult? Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult? Function(List<ProductModel> stuff)? stuffLoaded,
    TResult? Function(String errorTitle, String errorSubtitle)? errored,
  }) {
    return loaded?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(OrganizationModel model)? loaded,
    TResult Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult Function(List<ProductModel> stuff)? stuffLoaded,
    TResult Function(String errorTitle, String errorSubtitle)? errored,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationLoadingState value) loading,
    required TResult Function(_$OrganizationInitialState value) initial,
    required TResult Function(_$OrganizationLoadedState value) loaded,
    required TResult Function(_$OrganizationUserOrganizationsLoadedState value)
        usersOrganizationsLoaded,
    required TResult Function(_$OrganizationStuffLoadedState value) stuffLoaded,
    required TResult Function(_$OrganizationErroredState value) errored,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationLoadingState value)? loading,
    TResult? Function(_$OrganizationInitialState value)? initial,
    TResult? Function(_$OrganizationLoadedState value)? loaded,
    TResult? Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult? Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult? Function(_$OrganizationErroredState value)? errored,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationLoadingState value)? loading,
    TResult Function(_$OrganizationInitialState value)? initial,
    TResult Function(_$OrganizationLoadedState value)? loaded,
    TResult Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult Function(_$OrganizationErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationLoadedState implements OrganizationState {
  const factory _$OrganizationLoadedState(final OrganizationModel model) =
      _$_$OrganizationLoadedState;

  OrganizationModel get model;
  @JsonKey(ignore: true)
  _$$_$OrganizationLoadedStateCopyWith<_$_$OrganizationLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrganizationUserOrganizationsLoadedStateCopyWith<$Res> {
  factory _$$_$OrganizationUserOrganizationsLoadedStateCopyWith(
          _$_$OrganizationUserOrganizationsLoadedState value,
          $Res Function(_$_$OrganizationUserOrganizationsLoadedState) then) =
      __$$_$OrganizationUserOrganizationsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<OrganizationModel> models});
}

/// @nodoc
class __$$_$OrganizationUserOrganizationsLoadedStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res,
        _$_$OrganizationUserOrganizationsLoadedState>
    implements _$$_$OrganizationUserOrganizationsLoadedStateCopyWith<$Res> {
  __$$_$OrganizationUserOrganizationsLoadedStateCopyWithImpl(
      _$_$OrganizationUserOrganizationsLoadedState _value,
      $Res Function(_$_$OrganizationUserOrganizationsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? models = null,
  }) {
    return _then(_$_$OrganizationUserOrganizationsLoadedState(
      null == models
          ? _value._models
          : models // ignore: cast_nullable_to_non_nullable
              as List<OrganizationModel>,
    ));
  }
}

/// @nodoc

class _$_$OrganizationUserOrganizationsLoadedState
    with DiagnosticableTreeMixin
    implements _$OrganizationUserOrganizationsLoadedState {
  const _$_$OrganizationUserOrganizationsLoadedState(
      final List<OrganizationModel> models)
      : _models = models;

  final List<OrganizationModel> _models;
  @override
  List<OrganizationModel> get models {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_models);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationState.usersOrganizationsLoaded(models: $models)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'OrganizationState.usersOrganizationsLoaded'))
      ..add(DiagnosticsProperty('models', models));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationUserOrganizationsLoadedState &&
            const DeepCollectionEquality().equals(other._models, _models));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_models));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationUserOrganizationsLoadedStateCopyWith<
          _$_$OrganizationUserOrganizationsLoadedState>
      get copyWith =>
          __$$_$OrganizationUserOrganizationsLoadedStateCopyWithImpl<
              _$_$OrganizationUserOrganizationsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(OrganizationModel model) loaded,
    required TResult Function(List<OrganizationModel> models)
        usersOrganizationsLoaded,
    required TResult Function(List<ProductModel> stuff) stuffLoaded,
    required TResult Function(String errorTitle, String errorSubtitle) errored,
  }) {
    return usersOrganizationsLoaded(models);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(OrganizationModel model)? loaded,
    TResult? Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult? Function(List<ProductModel> stuff)? stuffLoaded,
    TResult? Function(String errorTitle, String errorSubtitle)? errored,
  }) {
    return usersOrganizationsLoaded?.call(models);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(OrganizationModel model)? loaded,
    TResult Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult Function(List<ProductModel> stuff)? stuffLoaded,
    TResult Function(String errorTitle, String errorSubtitle)? errored,
    required TResult orElse(),
  }) {
    if (usersOrganizationsLoaded != null) {
      return usersOrganizationsLoaded(models);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationLoadingState value) loading,
    required TResult Function(_$OrganizationInitialState value) initial,
    required TResult Function(_$OrganizationLoadedState value) loaded,
    required TResult Function(_$OrganizationUserOrganizationsLoadedState value)
        usersOrganizationsLoaded,
    required TResult Function(_$OrganizationStuffLoadedState value) stuffLoaded,
    required TResult Function(_$OrganizationErroredState value) errored,
  }) {
    return usersOrganizationsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationLoadingState value)? loading,
    TResult? Function(_$OrganizationInitialState value)? initial,
    TResult? Function(_$OrganizationLoadedState value)? loaded,
    TResult? Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult? Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult? Function(_$OrganizationErroredState value)? errored,
  }) {
    return usersOrganizationsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationLoadingState value)? loading,
    TResult Function(_$OrganizationInitialState value)? initial,
    TResult Function(_$OrganizationLoadedState value)? loaded,
    TResult Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult Function(_$OrganizationErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (usersOrganizationsLoaded != null) {
      return usersOrganizationsLoaded(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationUserOrganizationsLoadedState
    implements OrganizationState {
  const factory _$OrganizationUserOrganizationsLoadedState(
          final List<OrganizationModel> models) =
      _$_$OrganizationUserOrganizationsLoadedState;

  List<OrganizationModel> get models;
  @JsonKey(ignore: true)
  _$$_$OrganizationUserOrganizationsLoadedStateCopyWith<
          _$_$OrganizationUserOrganizationsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrganizationStuffLoadedStateCopyWith<$Res> {
  factory _$$_$OrganizationStuffLoadedStateCopyWith(
          _$_$OrganizationStuffLoadedState value,
          $Res Function(_$_$OrganizationStuffLoadedState) then) =
      __$$_$OrganizationStuffLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductModel> stuff});
}

/// @nodoc
class __$$_$OrganizationStuffLoadedStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res,
        _$_$OrganizationStuffLoadedState>
    implements _$$_$OrganizationStuffLoadedStateCopyWith<$Res> {
  __$$_$OrganizationStuffLoadedStateCopyWithImpl(
      _$_$OrganizationStuffLoadedState _value,
      $Res Function(_$_$OrganizationStuffLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stuff = null,
  }) {
    return _then(_$_$OrganizationStuffLoadedState(
      null == stuff
          ? _value._stuff
          : stuff // ignore: cast_nullable_to_non_nullable
              as List<ProductModel>,
    ));
  }
}

/// @nodoc

class _$_$OrganizationStuffLoadedState
    with DiagnosticableTreeMixin
    implements _$OrganizationStuffLoadedState {
  const _$_$OrganizationStuffLoadedState(final List<ProductModel> stuff)
      : _stuff = stuff;

  final List<ProductModel> _stuff;
  @override
  List<ProductModel> get stuff {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stuff);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationState.stuffLoaded(stuff: $stuff)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganizationState.stuffLoaded'))
      ..add(DiagnosticsProperty('stuff', stuff));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationStuffLoadedState &&
            const DeepCollectionEquality().equals(other._stuff, _stuff));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stuff));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationStuffLoadedStateCopyWith<_$_$OrganizationStuffLoadedState>
      get copyWith => __$$_$OrganizationStuffLoadedStateCopyWithImpl<
          _$_$OrganizationStuffLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(OrganizationModel model) loaded,
    required TResult Function(List<OrganizationModel> models)
        usersOrganizationsLoaded,
    required TResult Function(List<ProductModel> stuff) stuffLoaded,
    required TResult Function(String errorTitle, String errorSubtitle) errored,
  }) {
    return stuffLoaded(stuff);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(OrganizationModel model)? loaded,
    TResult? Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult? Function(List<ProductModel> stuff)? stuffLoaded,
    TResult? Function(String errorTitle, String errorSubtitle)? errored,
  }) {
    return stuffLoaded?.call(stuff);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(OrganizationModel model)? loaded,
    TResult Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult Function(List<ProductModel> stuff)? stuffLoaded,
    TResult Function(String errorTitle, String errorSubtitle)? errored,
    required TResult orElse(),
  }) {
    if (stuffLoaded != null) {
      return stuffLoaded(stuff);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationLoadingState value) loading,
    required TResult Function(_$OrganizationInitialState value) initial,
    required TResult Function(_$OrganizationLoadedState value) loaded,
    required TResult Function(_$OrganizationUserOrganizationsLoadedState value)
        usersOrganizationsLoaded,
    required TResult Function(_$OrganizationStuffLoadedState value) stuffLoaded,
    required TResult Function(_$OrganizationErroredState value) errored,
  }) {
    return stuffLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationLoadingState value)? loading,
    TResult? Function(_$OrganizationInitialState value)? initial,
    TResult? Function(_$OrganizationLoadedState value)? loaded,
    TResult? Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult? Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult? Function(_$OrganizationErroredState value)? errored,
  }) {
    return stuffLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationLoadingState value)? loading,
    TResult Function(_$OrganizationInitialState value)? initial,
    TResult Function(_$OrganizationLoadedState value)? loaded,
    TResult Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult Function(_$OrganizationErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (stuffLoaded != null) {
      return stuffLoaded(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationStuffLoadedState implements OrganizationState {
  const factory _$OrganizationStuffLoadedState(final List<ProductModel> stuff) =
      _$_$OrganizationStuffLoadedState;

  List<ProductModel> get stuff;
  @JsonKey(ignore: true)
  _$$_$OrganizationStuffLoadedStateCopyWith<_$_$OrganizationStuffLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$OrganizationErroredStateCopyWith<$Res> {
  factory _$$_$OrganizationErroredStateCopyWith(
          _$_$OrganizationErroredState value,
          $Res Function(_$_$OrganizationErroredState) then) =
      __$$_$OrganizationErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorTitle, String errorSubtitle});
}

/// @nodoc
class __$$_$OrganizationErroredStateCopyWithImpl<$Res>
    extends _$OrganizationStateCopyWithImpl<$Res, _$_$OrganizationErroredState>
    implements _$$_$OrganizationErroredStateCopyWith<$Res> {
  __$$_$OrganizationErroredStateCopyWithImpl(
      _$_$OrganizationErroredState _value,
      $Res Function(_$_$OrganizationErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorTitle = null,
    Object? errorSubtitle = null,
  }) {
    return _then(_$_$OrganizationErroredState(
      null == errorTitle
          ? _value.errorTitle
          : errorTitle // ignore: cast_nullable_to_non_nullable
              as String,
      null == errorSubtitle
          ? _value.errorSubtitle
          : errorSubtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$OrganizationErroredState
    with DiagnosticableTreeMixin
    implements _$OrganizationErroredState {
  const _$_$OrganizationErroredState(this.errorTitle, this.errorSubtitle);

  @override
  final String errorTitle;
  @override
  final String errorSubtitle;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OrganizationState.errored(errorTitle: $errorTitle, errorSubtitle: $errorSubtitle)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OrganizationState.errored'))
      ..add(DiagnosticsProperty('errorTitle', errorTitle))
      ..add(DiagnosticsProperty('errorSubtitle', errorSubtitle));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$OrganizationErroredState &&
            (identical(other.errorTitle, errorTitle) ||
                other.errorTitle == errorTitle) &&
            (identical(other.errorSubtitle, errorSubtitle) ||
                other.errorSubtitle == errorSubtitle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorTitle, errorSubtitle);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$OrganizationErroredStateCopyWith<_$_$OrganizationErroredState>
      get copyWith => __$$_$OrganizationErroredStateCopyWithImpl<
          _$_$OrganizationErroredState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() initial,
    required TResult Function(OrganizationModel model) loaded,
    required TResult Function(List<OrganizationModel> models)
        usersOrganizationsLoaded,
    required TResult Function(List<ProductModel> stuff) stuffLoaded,
    required TResult Function(String errorTitle, String errorSubtitle) errored,
  }) {
    return errored(errorTitle, errorSubtitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? initial,
    TResult? Function(OrganizationModel model)? loaded,
    TResult? Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult? Function(List<ProductModel> stuff)? stuffLoaded,
    TResult? Function(String errorTitle, String errorSubtitle)? errored,
  }) {
    return errored?.call(errorTitle, errorSubtitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? initial,
    TResult Function(OrganizationModel model)? loaded,
    TResult Function(List<OrganizationModel> models)? usersOrganizationsLoaded,
    TResult Function(List<ProductModel> stuff)? stuffLoaded,
    TResult Function(String errorTitle, String errorSubtitle)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(errorTitle, errorSubtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$OrganizationLoadingState value) loading,
    required TResult Function(_$OrganizationInitialState value) initial,
    required TResult Function(_$OrganizationLoadedState value) loaded,
    required TResult Function(_$OrganizationUserOrganizationsLoadedState value)
        usersOrganizationsLoaded,
    required TResult Function(_$OrganizationStuffLoadedState value) stuffLoaded,
    required TResult Function(_$OrganizationErroredState value) errored,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$OrganizationLoadingState value)? loading,
    TResult? Function(_$OrganizationInitialState value)? initial,
    TResult? Function(_$OrganizationLoadedState value)? loaded,
    TResult? Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult? Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult? Function(_$OrganizationErroredState value)? errored,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$OrganizationLoadingState value)? loading,
    TResult Function(_$OrganizationInitialState value)? initial,
    TResult Function(_$OrganizationLoadedState value)? loaded,
    TResult Function(_$OrganizationUserOrganizationsLoadedState value)?
        usersOrganizationsLoaded,
    TResult Function(_$OrganizationStuffLoadedState value)? stuffLoaded,
    TResult Function(_$OrganizationErroredState value)? errored,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$OrganizationErroredState implements OrganizationState {
  const factory _$OrganizationErroredState(
          final String errorTitle, final String errorSubtitle) =
      _$_$OrganizationErroredState;

  String get errorTitle;
  String get errorSubtitle;
  @JsonKey(ignore: true)
  _$$_$OrganizationErroredStateCopyWith<_$_$OrganizationErroredState>
      get copyWith => throw _privateConstructorUsedError;
}
