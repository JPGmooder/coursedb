part of 'product_bloc.dart';

@freezed
abstract class ProductEvent implements _$ProductEvent {
  const factory ProductEvent.loadCategories(String searchText) =
      _$ProductLoadCategoriesEvent;
  const factory ProductEvent.addNewCategories(
      List<ProductTypeModel> categories) = _$ProductAddNewCategoriesEvent;
  const factory ProductEvent.addNewBrand(
          String title, String description, Uint8List image) =
      _$ProductAddNewBrandEvent;
  const factory ProductEvent.loadBrands(String searchText) =
      _$ProductLoadBrandsEvent;
}
