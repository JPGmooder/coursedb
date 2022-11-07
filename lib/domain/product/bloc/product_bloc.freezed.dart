// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText) loadCategories,
    required TResult Function(List<ProductTypeModel> categories)
        addNewCategories,
    required TResult Function(String title, String description, Uint8List image)
        addNewBrand,
    required TResult Function(String searchText) loadBrands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText)? loadCategories,
    TResult? Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult? Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult? Function(String searchText)? loadBrands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText)? loadCategories,
    TResult Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult Function(String searchText)? loadBrands,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductLoadCategoriesEvent value)
        loadCategories,
    required TResult Function(_$ProductAddNewCategoriesEvent value)
        addNewCategories,
    required TResult Function(_$ProductAddNewBrandEvent value) addNewBrand,
    required TResult Function(_$ProductLoadBrandsEvent value) loadBrands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult? Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult? Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult? Function(_$ProductLoadBrandsEvent value)? loadBrands,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult Function(_$ProductLoadBrandsEvent value)? loadBrands,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$ProductLoadCategoriesEventCopyWith<$Res> {
  factory _$$_$ProductLoadCategoriesEventCopyWith(
          _$_$ProductLoadCategoriesEvent value,
          $Res Function(_$_$ProductLoadCategoriesEvent) then) =
      __$$_$ProductLoadCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$_$ProductLoadCategoriesEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_$ProductLoadCategoriesEvent>
    implements _$$_$ProductLoadCategoriesEventCopyWith<$Res> {
  __$$_$ProductLoadCategoriesEventCopyWithImpl(
      _$_$ProductLoadCategoriesEvent _value,
      $Res Function(_$_$ProductLoadCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$_$ProductLoadCategoriesEvent(
      null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ProductLoadCategoriesEvent
    with DiagnosticableTreeMixin
    implements _$ProductLoadCategoriesEvent {
  const _$_$ProductLoadCategoriesEvent(this.searchText);

  @override
  final String searchText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.loadCategories(searchText: $searchText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.loadCategories'))
      ..add(DiagnosticsProperty('searchText', searchText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductLoadCategoriesEvent &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductLoadCategoriesEventCopyWith<_$_$ProductLoadCategoriesEvent>
      get copyWith => __$$_$ProductLoadCategoriesEventCopyWithImpl<
          _$_$ProductLoadCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText) loadCategories,
    required TResult Function(List<ProductTypeModel> categories)
        addNewCategories,
    required TResult Function(String title, String description, Uint8List image)
        addNewBrand,
    required TResult Function(String searchText) loadBrands,
  }) {
    return loadCategories(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText)? loadCategories,
    TResult? Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult? Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult? Function(String searchText)? loadBrands,
  }) {
    return loadCategories?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText)? loadCategories,
    TResult Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult Function(String searchText)? loadBrands,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductLoadCategoriesEvent value)
        loadCategories,
    required TResult Function(_$ProductAddNewCategoriesEvent value)
        addNewCategories,
    required TResult Function(_$ProductAddNewBrandEvent value) addNewBrand,
    required TResult Function(_$ProductLoadBrandsEvent value) loadBrands,
  }) {
    return loadCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult? Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult? Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult? Function(_$ProductLoadBrandsEvent value)? loadBrands,
  }) {
    return loadCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult Function(_$ProductLoadBrandsEvent value)? loadBrands,
    required TResult orElse(),
  }) {
    if (loadCategories != null) {
      return loadCategories(this);
    }
    return orElse();
  }
}

abstract class _$ProductLoadCategoriesEvent implements ProductEvent {
  const factory _$ProductLoadCategoriesEvent(final String searchText) =
      _$_$ProductLoadCategoriesEvent;

  String get searchText;
  @JsonKey(ignore: true)
  _$$_$ProductLoadCategoriesEventCopyWith<_$_$ProductLoadCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ProductAddNewCategoriesEventCopyWith<$Res> {
  factory _$$_$ProductAddNewCategoriesEventCopyWith(
          _$_$ProductAddNewCategoriesEvent value,
          $Res Function(_$_$ProductAddNewCategoriesEvent) then) =
      __$$_$ProductAddNewCategoriesEventCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductTypeModel> categories});
}

/// @nodoc
class __$$_$ProductAddNewCategoriesEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_$ProductAddNewCategoriesEvent>
    implements _$$_$ProductAddNewCategoriesEventCopyWith<$Res> {
  __$$_$ProductAddNewCategoriesEventCopyWithImpl(
      _$_$ProductAddNewCategoriesEvent _value,
      $Res Function(_$_$ProductAddNewCategoriesEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$_$ProductAddNewCategoriesEvent(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductTypeModel>,
    ));
  }
}

/// @nodoc

class _$_$ProductAddNewCategoriesEvent
    with DiagnosticableTreeMixin
    implements _$ProductAddNewCategoriesEvent {
  const _$_$ProductAddNewCategoriesEvent(
      final List<ProductTypeModel> categories)
      : _categories = categories;

  final List<ProductTypeModel> _categories;
  @override
  List<ProductTypeModel> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.addNewCategories(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.addNewCategories'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductAddNewCategoriesEvent &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductAddNewCategoriesEventCopyWith<_$_$ProductAddNewCategoriesEvent>
      get copyWith => __$$_$ProductAddNewCategoriesEventCopyWithImpl<
          _$_$ProductAddNewCategoriesEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText) loadCategories,
    required TResult Function(List<ProductTypeModel> categories)
        addNewCategories,
    required TResult Function(String title, String description, Uint8List image)
        addNewBrand,
    required TResult Function(String searchText) loadBrands,
  }) {
    return addNewCategories(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText)? loadCategories,
    TResult? Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult? Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult? Function(String searchText)? loadBrands,
  }) {
    return addNewCategories?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText)? loadCategories,
    TResult Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult Function(String searchText)? loadBrands,
    required TResult orElse(),
  }) {
    if (addNewCategories != null) {
      return addNewCategories(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductLoadCategoriesEvent value)
        loadCategories,
    required TResult Function(_$ProductAddNewCategoriesEvent value)
        addNewCategories,
    required TResult Function(_$ProductAddNewBrandEvent value) addNewBrand,
    required TResult Function(_$ProductLoadBrandsEvent value) loadBrands,
  }) {
    return addNewCategories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult? Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult? Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult? Function(_$ProductLoadBrandsEvent value)? loadBrands,
  }) {
    return addNewCategories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult Function(_$ProductLoadBrandsEvent value)? loadBrands,
    required TResult orElse(),
  }) {
    if (addNewCategories != null) {
      return addNewCategories(this);
    }
    return orElse();
  }
}

abstract class _$ProductAddNewCategoriesEvent implements ProductEvent {
  const factory _$ProductAddNewCategoriesEvent(
          final List<ProductTypeModel> categories) =
      _$_$ProductAddNewCategoriesEvent;

  List<ProductTypeModel> get categories;
  @JsonKey(ignore: true)
  _$$_$ProductAddNewCategoriesEventCopyWith<_$_$ProductAddNewCategoriesEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ProductAddNewBrandEventCopyWith<$Res> {
  factory _$$_$ProductAddNewBrandEventCopyWith(
          _$_$ProductAddNewBrandEvent value,
          $Res Function(_$_$ProductAddNewBrandEvent) then) =
      __$$_$ProductAddNewBrandEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String description, Uint8List image});
}

/// @nodoc
class __$$_$ProductAddNewBrandEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_$ProductAddNewBrandEvent>
    implements _$$_$ProductAddNewBrandEventCopyWith<$Res> {
  __$$_$ProductAddNewBrandEventCopyWithImpl(_$_$ProductAddNewBrandEvent _value,
      $Res Function(_$_$ProductAddNewBrandEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? image = null,
  }) {
    return _then(_$_$ProductAddNewBrandEvent(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_$ProductAddNewBrandEvent
    with DiagnosticableTreeMixin
    implements _$ProductAddNewBrandEvent {
  const _$_$ProductAddNewBrandEvent(this.title, this.description, this.image);

  @override
  final String title;
  @override
  final String description;
  @override
  final Uint8List image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.addNewBrand(title: $title, description: $description, image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.addNewBrand'))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductAddNewBrandEvent &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, description,
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductAddNewBrandEventCopyWith<_$_$ProductAddNewBrandEvent>
      get copyWith => __$$_$ProductAddNewBrandEventCopyWithImpl<
          _$_$ProductAddNewBrandEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText) loadCategories,
    required TResult Function(List<ProductTypeModel> categories)
        addNewCategories,
    required TResult Function(String title, String description, Uint8List image)
        addNewBrand,
    required TResult Function(String searchText) loadBrands,
  }) {
    return addNewBrand(title, description, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText)? loadCategories,
    TResult? Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult? Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult? Function(String searchText)? loadBrands,
  }) {
    return addNewBrand?.call(title, description, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText)? loadCategories,
    TResult Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult Function(String searchText)? loadBrands,
    required TResult orElse(),
  }) {
    if (addNewBrand != null) {
      return addNewBrand(title, description, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductLoadCategoriesEvent value)
        loadCategories,
    required TResult Function(_$ProductAddNewCategoriesEvent value)
        addNewCategories,
    required TResult Function(_$ProductAddNewBrandEvent value) addNewBrand,
    required TResult Function(_$ProductLoadBrandsEvent value) loadBrands,
  }) {
    return addNewBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult? Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult? Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult? Function(_$ProductLoadBrandsEvent value)? loadBrands,
  }) {
    return addNewBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult Function(_$ProductLoadBrandsEvent value)? loadBrands,
    required TResult orElse(),
  }) {
    if (addNewBrand != null) {
      return addNewBrand(this);
    }
    return orElse();
  }
}

abstract class _$ProductAddNewBrandEvent implements ProductEvent {
  const factory _$ProductAddNewBrandEvent(
          final String title, final String description, final Uint8List image) =
      _$_$ProductAddNewBrandEvent;

  String get title;
  String get description;
  Uint8List get image;
  @JsonKey(ignore: true)
  _$$_$ProductAddNewBrandEventCopyWith<_$_$ProductAddNewBrandEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ProductLoadBrandsEventCopyWith<$Res> {
  factory _$$_$ProductLoadBrandsEventCopyWith(_$_$ProductLoadBrandsEvent value,
          $Res Function(_$_$ProductLoadBrandsEvent) then) =
      __$$_$ProductLoadBrandsEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchText});
}

/// @nodoc
class __$$_$ProductLoadBrandsEventCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$_$ProductLoadBrandsEvent>
    implements _$$_$ProductLoadBrandsEventCopyWith<$Res> {
  __$$_$ProductLoadBrandsEventCopyWithImpl(_$_$ProductLoadBrandsEvent _value,
      $Res Function(_$_$ProductLoadBrandsEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchText = null,
  }) {
    return _then(_$_$ProductLoadBrandsEvent(
      null == searchText
          ? _value.searchText
          : searchText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ProductLoadBrandsEvent
    with DiagnosticableTreeMixin
    implements _$ProductLoadBrandsEvent {
  const _$_$ProductLoadBrandsEvent(this.searchText);

  @override
  final String searchText;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductEvent.loadBrands(searchText: $searchText)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductEvent.loadBrands'))
      ..add(DiagnosticsProperty('searchText', searchText));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductLoadBrandsEvent &&
            (identical(other.searchText, searchText) ||
                other.searchText == searchText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductLoadBrandsEventCopyWith<_$_$ProductLoadBrandsEvent>
      get copyWith =>
          __$$_$ProductLoadBrandsEventCopyWithImpl<_$_$ProductLoadBrandsEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchText) loadCategories,
    required TResult Function(List<ProductTypeModel> categories)
        addNewCategories,
    required TResult Function(String title, String description, Uint8List image)
        addNewBrand,
    required TResult Function(String searchText) loadBrands,
  }) {
    return loadBrands(searchText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchText)? loadCategories,
    TResult? Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult? Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult? Function(String searchText)? loadBrands,
  }) {
    return loadBrands?.call(searchText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchText)? loadCategories,
    TResult Function(List<ProductTypeModel> categories)? addNewCategories,
    TResult Function(String title, String description, Uint8List image)?
        addNewBrand,
    TResult Function(String searchText)? loadBrands,
    required TResult orElse(),
  }) {
    if (loadBrands != null) {
      return loadBrands(searchText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductLoadCategoriesEvent value)
        loadCategories,
    required TResult Function(_$ProductAddNewCategoriesEvent value)
        addNewCategories,
    required TResult Function(_$ProductAddNewBrandEvent value) addNewBrand,
    required TResult Function(_$ProductLoadBrandsEvent value) loadBrands,
  }) {
    return loadBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult? Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult? Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult? Function(_$ProductLoadBrandsEvent value)? loadBrands,
  }) {
    return loadBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductLoadCategoriesEvent value)? loadCategories,
    TResult Function(_$ProductAddNewCategoriesEvent value)? addNewCategories,
    TResult Function(_$ProductAddNewBrandEvent value)? addNewBrand,
    TResult Function(_$ProductLoadBrandsEvent value)? loadBrands,
    required TResult orElse(),
  }) {
    if (loadBrands != null) {
      return loadBrands(this);
    }
    return orElse();
  }
}

abstract class _$ProductLoadBrandsEvent implements ProductEvent {
  const factory _$ProductLoadBrandsEvent(final String searchText) =
      _$_$ProductLoadBrandsEvent;

  String get searchText;
  @JsonKey(ignore: true)
  _$$_$ProductLoadBrandsEventCopyWith<_$_$ProductLoadBrandsEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(bool isMass) loading,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesLoaded,
    required TResult Function(List<BrandModel> brands) brandsLoaded,
    required TResult Function(BrandModel addedBrand) brandAdded,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(bool isMass)? loading,
    TResult? Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult? Function(List<BrandModel> brands)? brandsLoaded,
    TResult? Function(BrandModel addedBrand)? brandAdded,
    TResult? Function(List<ProductTypeModel> categories)? categoriesAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(bool isMass)? loading,
    TResult Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult Function(List<BrandModel> brands)? brandsLoaded,
    TResult Function(BrandModel addedBrand)? brandAdded,
    TResult Function(List<ProductTypeModel> categories)? categoriesAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductInitialState value) initial,
    required TResult Function(_$ProductErroredState value) errored,
    required TResult Function(_$ProductLoadingState value) loading,
    required TResult Function(_$ProductCategoriesLoadedState value)
        categoriesLoaded,
    required TResult Function(_$ProductBrandsLoadedState value) brandsLoaded,
    required TResult Function(_$ProductBrandAddedState value) brandAdded,
    required TResult Function(_$ProductCategoriesAddedState value)
        categoriesAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductInitialState value)? initial,
    TResult? Function(_$ProductErroredState value)? errored,
    TResult? Function(_$ProductLoadingState value)? loading,
    TResult? Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult? Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult? Function(_$ProductBrandAddedState value)? brandAdded,
    TResult? Function(_$ProductCategoriesAddedState value)? categoriesAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductInitialState value)? initial,
    TResult Function(_$ProductErroredState value)? errored,
    TResult Function(_$ProductLoadingState value)? loading,
    TResult Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult Function(_$ProductBrandAddedState value)? brandAdded,
    TResult Function(_$ProductCategoriesAddedState value)? categoriesAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_$ProductInitialStateCopyWith<$Res> {
  factory _$$_$ProductInitialStateCopyWith(_$_$ProductInitialState value,
          $Res Function(_$_$ProductInitialState) then) =
      __$$_$ProductInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$ProductInitialStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_$ProductInitialState>
    implements _$$_$ProductInitialStateCopyWith<$Res> {
  __$$_$ProductInitialStateCopyWithImpl(_$_$ProductInitialState _value,
      $Res Function(_$_$ProductInitialState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_$ProductInitialState
    with DiagnosticableTreeMixin
    implements _$ProductInitialState {
  const _$_$ProductInitialState();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ProductState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$ProductInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(bool isMass) loading,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesLoaded,
    required TResult Function(List<BrandModel> brands) brandsLoaded,
    required TResult Function(BrandModel addedBrand) brandAdded,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesAdded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(bool isMass)? loading,
    TResult? Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult? Function(List<BrandModel> brands)? brandsLoaded,
    TResult? Function(BrandModel addedBrand)? brandAdded,
    TResult? Function(List<ProductTypeModel> categories)? categoriesAdded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(bool isMass)? loading,
    TResult Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult Function(List<BrandModel> brands)? brandsLoaded,
    TResult Function(BrandModel addedBrand)? brandAdded,
    TResult Function(List<ProductTypeModel> categories)? categoriesAdded,
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
    required TResult Function(_$ProductInitialState value) initial,
    required TResult Function(_$ProductErroredState value) errored,
    required TResult Function(_$ProductLoadingState value) loading,
    required TResult Function(_$ProductCategoriesLoadedState value)
        categoriesLoaded,
    required TResult Function(_$ProductBrandsLoadedState value) brandsLoaded,
    required TResult Function(_$ProductBrandAddedState value) brandAdded,
    required TResult Function(_$ProductCategoriesAddedState value)
        categoriesAdded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductInitialState value)? initial,
    TResult? Function(_$ProductErroredState value)? errored,
    TResult? Function(_$ProductLoadingState value)? loading,
    TResult? Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult? Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult? Function(_$ProductBrandAddedState value)? brandAdded,
    TResult? Function(_$ProductCategoriesAddedState value)? categoriesAdded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductInitialState value)? initial,
    TResult Function(_$ProductErroredState value)? errored,
    TResult Function(_$ProductLoadingState value)? loading,
    TResult Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult Function(_$ProductBrandAddedState value)? brandAdded,
    TResult Function(_$ProductCategoriesAddedState value)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _$ProductInitialState implements ProductState {
  const factory _$ProductInitialState() = _$_$ProductInitialState;
}

/// @nodoc
abstract class _$$_$ProductErroredStateCopyWith<$Res> {
  factory _$$_$ProductErroredStateCopyWith(_$_$ProductErroredState value,
          $Res Function(_$_$ProductErroredState) then) =
      __$$_$ProductErroredStateCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_$ProductErroredStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_$ProductErroredState>
    implements _$$_$ProductErroredStateCopyWith<$Res> {
  __$$_$ProductErroredStateCopyWithImpl(_$_$ProductErroredState _value,
      $Res Function(_$_$ProductErroredState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_$ProductErroredState(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ProductErroredState
    with DiagnosticableTreeMixin
    implements _$ProductErroredState {
  const _$_$ProductErroredState(this.error);

  @override
  final String error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState.errored(error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState.errored'))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductErroredState &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductErroredStateCopyWith<_$_$ProductErroredState> get copyWith =>
      __$$_$ProductErroredStateCopyWithImpl<_$_$ProductErroredState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(bool isMass) loading,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesLoaded,
    required TResult Function(List<BrandModel> brands) brandsLoaded,
    required TResult Function(BrandModel addedBrand) brandAdded,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesAdded,
  }) {
    return errored(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(bool isMass)? loading,
    TResult? Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult? Function(List<BrandModel> brands)? brandsLoaded,
    TResult? Function(BrandModel addedBrand)? brandAdded,
    TResult? Function(List<ProductTypeModel> categories)? categoriesAdded,
  }) {
    return errored?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(bool isMass)? loading,
    TResult Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult Function(List<BrandModel> brands)? brandsLoaded,
    TResult Function(BrandModel addedBrand)? brandAdded,
    TResult Function(List<ProductTypeModel> categories)? categoriesAdded,
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
    required TResult Function(_$ProductInitialState value) initial,
    required TResult Function(_$ProductErroredState value) errored,
    required TResult Function(_$ProductLoadingState value) loading,
    required TResult Function(_$ProductCategoriesLoadedState value)
        categoriesLoaded,
    required TResult Function(_$ProductBrandsLoadedState value) brandsLoaded,
    required TResult Function(_$ProductBrandAddedState value) brandAdded,
    required TResult Function(_$ProductCategoriesAddedState value)
        categoriesAdded,
  }) {
    return errored(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductInitialState value)? initial,
    TResult? Function(_$ProductErroredState value)? errored,
    TResult? Function(_$ProductLoadingState value)? loading,
    TResult? Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult? Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult? Function(_$ProductBrandAddedState value)? brandAdded,
    TResult? Function(_$ProductCategoriesAddedState value)? categoriesAdded,
  }) {
    return errored?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductInitialState value)? initial,
    TResult Function(_$ProductErroredState value)? errored,
    TResult Function(_$ProductLoadingState value)? loading,
    TResult Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult Function(_$ProductBrandAddedState value)? brandAdded,
    TResult Function(_$ProductCategoriesAddedState value)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (errored != null) {
      return errored(this);
    }
    return orElse();
  }
}

abstract class _$ProductErroredState implements ProductState {
  const factory _$ProductErroredState(final String error) =
      _$_$ProductErroredState;

  String get error;
  @JsonKey(ignore: true)
  _$$_$ProductErroredStateCopyWith<_$_$ProductErroredState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ProductLoadingStateCopyWith<$Res> {
  factory _$$_$ProductLoadingStateCopyWith(_$_$ProductLoadingState value,
          $Res Function(_$_$ProductLoadingState) then) =
      __$$_$ProductLoadingStateCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isMass});
}

/// @nodoc
class __$$_$ProductLoadingStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_$ProductLoadingState>
    implements _$$_$ProductLoadingStateCopyWith<$Res> {
  __$$_$ProductLoadingStateCopyWithImpl(_$_$ProductLoadingState _value,
      $Res Function(_$_$ProductLoadingState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMass = null,
  }) {
    return _then(_$_$ProductLoadingState(
      null == isMass
          ? _value.isMass
          : isMass // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_$ProductLoadingState
    with DiagnosticableTreeMixin
    implements _$ProductLoadingState {
  const _$_$ProductLoadingState(this.isMass);

  @override
  final bool isMass;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState.loading(isMass: $isMass)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState.loading'))
      ..add(DiagnosticsProperty('isMass', isMass));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductLoadingState &&
            (identical(other.isMass, isMass) || other.isMass == isMass));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMass);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductLoadingStateCopyWith<_$_$ProductLoadingState> get copyWith =>
      __$$_$ProductLoadingStateCopyWithImpl<_$_$ProductLoadingState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(bool isMass) loading,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesLoaded,
    required TResult Function(List<BrandModel> brands) brandsLoaded,
    required TResult Function(BrandModel addedBrand) brandAdded,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesAdded,
  }) {
    return loading(isMass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(bool isMass)? loading,
    TResult? Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult? Function(List<BrandModel> brands)? brandsLoaded,
    TResult? Function(BrandModel addedBrand)? brandAdded,
    TResult? Function(List<ProductTypeModel> categories)? categoriesAdded,
  }) {
    return loading?.call(isMass);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(bool isMass)? loading,
    TResult Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult Function(List<BrandModel> brands)? brandsLoaded,
    TResult Function(BrandModel addedBrand)? brandAdded,
    TResult Function(List<ProductTypeModel> categories)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isMass);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductInitialState value) initial,
    required TResult Function(_$ProductErroredState value) errored,
    required TResult Function(_$ProductLoadingState value) loading,
    required TResult Function(_$ProductCategoriesLoadedState value)
        categoriesLoaded,
    required TResult Function(_$ProductBrandsLoadedState value) brandsLoaded,
    required TResult Function(_$ProductBrandAddedState value) brandAdded,
    required TResult Function(_$ProductCategoriesAddedState value)
        categoriesAdded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductInitialState value)? initial,
    TResult? Function(_$ProductErroredState value)? errored,
    TResult? Function(_$ProductLoadingState value)? loading,
    TResult? Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult? Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult? Function(_$ProductBrandAddedState value)? brandAdded,
    TResult? Function(_$ProductCategoriesAddedState value)? categoriesAdded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductInitialState value)? initial,
    TResult Function(_$ProductErroredState value)? errored,
    TResult Function(_$ProductLoadingState value)? loading,
    TResult Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult Function(_$ProductBrandAddedState value)? brandAdded,
    TResult Function(_$ProductCategoriesAddedState value)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _$ProductLoadingState implements ProductState {
  const factory _$ProductLoadingState(final bool isMass) =
      _$_$ProductLoadingState;

  bool get isMass;
  @JsonKey(ignore: true)
  _$$_$ProductLoadingStateCopyWith<_$_$ProductLoadingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ProductCategoriesLoadedStateCopyWith<$Res> {
  factory _$$_$ProductCategoriesLoadedStateCopyWith(
          _$_$ProductCategoriesLoadedState value,
          $Res Function(_$_$ProductCategoriesLoadedState) then) =
      __$$_$ProductCategoriesLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductTypeModel> categories});
}

/// @nodoc
class __$$_$ProductCategoriesLoadedStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_$ProductCategoriesLoadedState>
    implements _$$_$ProductCategoriesLoadedStateCopyWith<$Res> {
  __$$_$ProductCategoriesLoadedStateCopyWithImpl(
      _$_$ProductCategoriesLoadedState _value,
      $Res Function(_$_$ProductCategoriesLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$_$ProductCategoriesLoadedState(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductTypeModel>,
    ));
  }
}

/// @nodoc

class _$_$ProductCategoriesLoadedState
    with DiagnosticableTreeMixin
    implements _$ProductCategoriesLoadedState {
  const _$_$ProductCategoriesLoadedState(
      final List<ProductTypeModel> categories)
      : _categories = categories;

  final List<ProductTypeModel> _categories;
  @override
  List<ProductTypeModel> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState.categoriesLoaded(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState.categoriesLoaded'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductCategoriesLoadedState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductCategoriesLoadedStateCopyWith<_$_$ProductCategoriesLoadedState>
      get copyWith => __$$_$ProductCategoriesLoadedStateCopyWithImpl<
          _$_$ProductCategoriesLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(bool isMass) loading,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesLoaded,
    required TResult Function(List<BrandModel> brands) brandsLoaded,
    required TResult Function(BrandModel addedBrand) brandAdded,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesAdded,
  }) {
    return categoriesLoaded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(bool isMass)? loading,
    TResult? Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult? Function(List<BrandModel> brands)? brandsLoaded,
    TResult? Function(BrandModel addedBrand)? brandAdded,
    TResult? Function(List<ProductTypeModel> categories)? categoriesAdded,
  }) {
    return categoriesLoaded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(bool isMass)? loading,
    TResult Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult Function(List<BrandModel> brands)? brandsLoaded,
    TResult Function(BrandModel addedBrand)? brandAdded,
    TResult Function(List<ProductTypeModel> categories)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (categoriesLoaded != null) {
      return categoriesLoaded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductInitialState value) initial,
    required TResult Function(_$ProductErroredState value) errored,
    required TResult Function(_$ProductLoadingState value) loading,
    required TResult Function(_$ProductCategoriesLoadedState value)
        categoriesLoaded,
    required TResult Function(_$ProductBrandsLoadedState value) brandsLoaded,
    required TResult Function(_$ProductBrandAddedState value) brandAdded,
    required TResult Function(_$ProductCategoriesAddedState value)
        categoriesAdded,
  }) {
    return categoriesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductInitialState value)? initial,
    TResult? Function(_$ProductErroredState value)? errored,
    TResult? Function(_$ProductLoadingState value)? loading,
    TResult? Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult? Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult? Function(_$ProductBrandAddedState value)? brandAdded,
    TResult? Function(_$ProductCategoriesAddedState value)? categoriesAdded,
  }) {
    return categoriesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductInitialState value)? initial,
    TResult Function(_$ProductErroredState value)? errored,
    TResult Function(_$ProductLoadingState value)? loading,
    TResult Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult Function(_$ProductBrandAddedState value)? brandAdded,
    TResult Function(_$ProductCategoriesAddedState value)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (categoriesLoaded != null) {
      return categoriesLoaded(this);
    }
    return orElse();
  }
}

abstract class _$ProductCategoriesLoadedState implements ProductState {
  const factory _$ProductCategoriesLoadedState(
          final List<ProductTypeModel> categories) =
      _$_$ProductCategoriesLoadedState;

  List<ProductTypeModel> get categories;
  @JsonKey(ignore: true)
  _$$_$ProductCategoriesLoadedStateCopyWith<_$_$ProductCategoriesLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ProductBrandsLoadedStateCopyWith<$Res> {
  factory _$$_$ProductBrandsLoadedStateCopyWith(
          _$_$ProductBrandsLoadedState value,
          $Res Function(_$_$ProductBrandsLoadedState) then) =
      __$$_$ProductBrandsLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<BrandModel> brands});
}

/// @nodoc
class __$$_$ProductBrandsLoadedStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_$ProductBrandsLoadedState>
    implements _$$_$ProductBrandsLoadedStateCopyWith<$Res> {
  __$$_$ProductBrandsLoadedStateCopyWithImpl(
      _$_$ProductBrandsLoadedState _value,
      $Res Function(_$_$ProductBrandsLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = null,
  }) {
    return _then(_$_$ProductBrandsLoadedState(
      null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<BrandModel>,
    ));
  }
}

/// @nodoc

class _$_$ProductBrandsLoadedState
    with DiagnosticableTreeMixin
    implements _$ProductBrandsLoadedState {
  const _$_$ProductBrandsLoadedState(final List<BrandModel> brands)
      : _brands = brands;

  final List<BrandModel> _brands;
  @override
  List<BrandModel> get brands {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState.brandsLoaded(brands: $brands)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState.brandsLoaded'))
      ..add(DiagnosticsProperty('brands', brands));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductBrandsLoadedState &&
            const DeepCollectionEquality().equals(other._brands, _brands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_brands));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductBrandsLoadedStateCopyWith<_$_$ProductBrandsLoadedState>
      get copyWith => __$$_$ProductBrandsLoadedStateCopyWithImpl<
          _$_$ProductBrandsLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(bool isMass) loading,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesLoaded,
    required TResult Function(List<BrandModel> brands) brandsLoaded,
    required TResult Function(BrandModel addedBrand) brandAdded,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesAdded,
  }) {
    return brandsLoaded(brands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(bool isMass)? loading,
    TResult? Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult? Function(List<BrandModel> brands)? brandsLoaded,
    TResult? Function(BrandModel addedBrand)? brandAdded,
    TResult? Function(List<ProductTypeModel> categories)? categoriesAdded,
  }) {
    return brandsLoaded?.call(brands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(bool isMass)? loading,
    TResult Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult Function(List<BrandModel> brands)? brandsLoaded,
    TResult Function(BrandModel addedBrand)? brandAdded,
    TResult Function(List<ProductTypeModel> categories)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (brandsLoaded != null) {
      return brandsLoaded(brands);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductInitialState value) initial,
    required TResult Function(_$ProductErroredState value) errored,
    required TResult Function(_$ProductLoadingState value) loading,
    required TResult Function(_$ProductCategoriesLoadedState value)
        categoriesLoaded,
    required TResult Function(_$ProductBrandsLoadedState value) brandsLoaded,
    required TResult Function(_$ProductBrandAddedState value) brandAdded,
    required TResult Function(_$ProductCategoriesAddedState value)
        categoriesAdded,
  }) {
    return brandsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductInitialState value)? initial,
    TResult? Function(_$ProductErroredState value)? errored,
    TResult? Function(_$ProductLoadingState value)? loading,
    TResult? Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult? Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult? Function(_$ProductBrandAddedState value)? brandAdded,
    TResult? Function(_$ProductCategoriesAddedState value)? categoriesAdded,
  }) {
    return brandsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductInitialState value)? initial,
    TResult Function(_$ProductErroredState value)? errored,
    TResult Function(_$ProductLoadingState value)? loading,
    TResult Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult Function(_$ProductBrandAddedState value)? brandAdded,
    TResult Function(_$ProductCategoriesAddedState value)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (brandsLoaded != null) {
      return brandsLoaded(this);
    }
    return orElse();
  }
}

abstract class _$ProductBrandsLoadedState implements ProductState {
  const factory _$ProductBrandsLoadedState(final List<BrandModel> brands) =
      _$_$ProductBrandsLoadedState;

  List<BrandModel> get brands;
  @JsonKey(ignore: true)
  _$$_$ProductBrandsLoadedStateCopyWith<_$_$ProductBrandsLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ProductBrandAddedStateCopyWith<$Res> {
  factory _$$_$ProductBrandAddedStateCopyWith(_$_$ProductBrandAddedState value,
          $Res Function(_$_$ProductBrandAddedState) then) =
      __$$_$ProductBrandAddedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({BrandModel addedBrand});
}

/// @nodoc
class __$$_$ProductBrandAddedStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_$ProductBrandAddedState>
    implements _$$_$ProductBrandAddedStateCopyWith<$Res> {
  __$$_$ProductBrandAddedStateCopyWithImpl(_$_$ProductBrandAddedState _value,
      $Res Function(_$_$ProductBrandAddedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedBrand = null,
  }) {
    return _then(_$_$ProductBrandAddedState(
      null == addedBrand
          ? _value.addedBrand
          : addedBrand // ignore: cast_nullable_to_non_nullable
              as BrandModel,
    ));
  }
}

/// @nodoc

class _$_$ProductBrandAddedState
    with DiagnosticableTreeMixin
    implements _$ProductBrandAddedState {
  const _$_$ProductBrandAddedState(this.addedBrand);

  @override
  final BrandModel addedBrand;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState.brandAdded(addedBrand: $addedBrand)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState.brandAdded'))
      ..add(DiagnosticsProperty('addedBrand', addedBrand));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductBrandAddedState &&
            (identical(other.addedBrand, addedBrand) ||
                other.addedBrand == addedBrand));
  }

  @override
  int get hashCode => Object.hash(runtimeType, addedBrand);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductBrandAddedStateCopyWith<_$_$ProductBrandAddedState>
      get copyWith =>
          __$$_$ProductBrandAddedStateCopyWithImpl<_$_$ProductBrandAddedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(bool isMass) loading,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesLoaded,
    required TResult Function(List<BrandModel> brands) brandsLoaded,
    required TResult Function(BrandModel addedBrand) brandAdded,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesAdded,
  }) {
    return brandAdded(addedBrand);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(bool isMass)? loading,
    TResult? Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult? Function(List<BrandModel> brands)? brandsLoaded,
    TResult? Function(BrandModel addedBrand)? brandAdded,
    TResult? Function(List<ProductTypeModel> categories)? categoriesAdded,
  }) {
    return brandAdded?.call(addedBrand);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(bool isMass)? loading,
    TResult Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult Function(List<BrandModel> brands)? brandsLoaded,
    TResult Function(BrandModel addedBrand)? brandAdded,
    TResult Function(List<ProductTypeModel> categories)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (brandAdded != null) {
      return brandAdded(addedBrand);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductInitialState value) initial,
    required TResult Function(_$ProductErroredState value) errored,
    required TResult Function(_$ProductLoadingState value) loading,
    required TResult Function(_$ProductCategoriesLoadedState value)
        categoriesLoaded,
    required TResult Function(_$ProductBrandsLoadedState value) brandsLoaded,
    required TResult Function(_$ProductBrandAddedState value) brandAdded,
    required TResult Function(_$ProductCategoriesAddedState value)
        categoriesAdded,
  }) {
    return brandAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductInitialState value)? initial,
    TResult? Function(_$ProductErroredState value)? errored,
    TResult? Function(_$ProductLoadingState value)? loading,
    TResult? Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult? Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult? Function(_$ProductBrandAddedState value)? brandAdded,
    TResult? Function(_$ProductCategoriesAddedState value)? categoriesAdded,
  }) {
    return brandAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductInitialState value)? initial,
    TResult Function(_$ProductErroredState value)? errored,
    TResult Function(_$ProductLoadingState value)? loading,
    TResult Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult Function(_$ProductBrandAddedState value)? brandAdded,
    TResult Function(_$ProductCategoriesAddedState value)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (brandAdded != null) {
      return brandAdded(this);
    }
    return orElse();
  }
}

abstract class _$ProductBrandAddedState implements ProductState {
  const factory _$ProductBrandAddedState(final BrandModel addedBrand) =
      _$_$ProductBrandAddedState;

  BrandModel get addedBrand;
  @JsonKey(ignore: true)
  _$$_$ProductBrandAddedStateCopyWith<_$_$ProductBrandAddedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$ProductCategoriesAddedStateCopyWith<$Res> {
  factory _$$_$ProductCategoriesAddedStateCopyWith(
          _$_$ProductCategoriesAddedState value,
          $Res Function(_$_$ProductCategoriesAddedState) then) =
      __$$_$ProductCategoriesAddedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ProductTypeModel> categories});
}

/// @nodoc
class __$$_$ProductCategoriesAddedStateCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$_$ProductCategoriesAddedState>
    implements _$$_$ProductCategoriesAddedStateCopyWith<$Res> {
  __$$_$ProductCategoriesAddedStateCopyWithImpl(
      _$_$ProductCategoriesAddedState _value,
      $Res Function(_$_$ProductCategoriesAddedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
  }) {
    return _then(_$_$ProductCategoriesAddedState(
      null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<ProductTypeModel>,
    ));
  }
}

/// @nodoc

class _$_$ProductCategoriesAddedState
    with DiagnosticableTreeMixin
    implements _$ProductCategoriesAddedState {
  const _$_$ProductCategoriesAddedState(final List<ProductTypeModel> categories)
      : _categories = categories;

  final List<ProductTypeModel> _categories;
  @override
  List<ProductTypeModel> get categories {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ProductState.categoriesAdded(categories: $categories)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ProductState.categoriesAdded'))
      ..add(DiagnosticsProperty('categories', categories));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ProductCategoriesAddedState &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_$ProductCategoriesAddedStateCopyWith<_$_$ProductCategoriesAddedState>
      get copyWith => __$$_$ProductCategoriesAddedStateCopyWithImpl<
          _$_$ProductCategoriesAddedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) errored,
    required TResult Function(bool isMass) loading,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesLoaded,
    required TResult Function(List<BrandModel> brands) brandsLoaded,
    required TResult Function(BrandModel addedBrand) brandAdded,
    required TResult Function(List<ProductTypeModel> categories)
        categoriesAdded,
  }) {
    return categoriesAdded(categories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String error)? errored,
    TResult? Function(bool isMass)? loading,
    TResult? Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult? Function(List<BrandModel> brands)? brandsLoaded,
    TResult? Function(BrandModel addedBrand)? brandAdded,
    TResult? Function(List<ProductTypeModel> categories)? categoriesAdded,
  }) {
    return categoriesAdded?.call(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? errored,
    TResult Function(bool isMass)? loading,
    TResult Function(List<ProductTypeModel> categories)? categoriesLoaded,
    TResult Function(List<BrandModel> brands)? brandsLoaded,
    TResult Function(BrandModel addedBrand)? brandAdded,
    TResult Function(List<ProductTypeModel> categories)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (categoriesAdded != null) {
      return categoriesAdded(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ProductInitialState value) initial,
    required TResult Function(_$ProductErroredState value) errored,
    required TResult Function(_$ProductLoadingState value) loading,
    required TResult Function(_$ProductCategoriesLoadedState value)
        categoriesLoaded,
    required TResult Function(_$ProductBrandsLoadedState value) brandsLoaded,
    required TResult Function(_$ProductBrandAddedState value) brandAdded,
    required TResult Function(_$ProductCategoriesAddedState value)
        categoriesAdded,
  }) {
    return categoriesAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_$ProductInitialState value)? initial,
    TResult? Function(_$ProductErroredState value)? errored,
    TResult? Function(_$ProductLoadingState value)? loading,
    TResult? Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult? Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult? Function(_$ProductBrandAddedState value)? brandAdded,
    TResult? Function(_$ProductCategoriesAddedState value)? categoriesAdded,
  }) {
    return categoriesAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ProductInitialState value)? initial,
    TResult Function(_$ProductErroredState value)? errored,
    TResult Function(_$ProductLoadingState value)? loading,
    TResult Function(_$ProductCategoriesLoadedState value)? categoriesLoaded,
    TResult Function(_$ProductBrandsLoadedState value)? brandsLoaded,
    TResult Function(_$ProductBrandAddedState value)? brandAdded,
    TResult Function(_$ProductCategoriesAddedState value)? categoriesAdded,
    required TResult orElse(),
  }) {
    if (categoriesAdded != null) {
      return categoriesAdded(this);
    }
    return orElse();
  }
}

abstract class _$ProductCategoriesAddedState implements ProductState {
  const factory _$ProductCategoriesAddedState(
          final List<ProductTypeModel> categories) =
      _$_$ProductCategoriesAddedState;

  List<ProductTypeModel> get categories;
  @JsonKey(ignore: true)
  _$$_$ProductCategoriesAddedStateCopyWith<_$_$ProductCategoriesAddedState>
      get copyWith => throw _privateConstructorUsedError;
}
