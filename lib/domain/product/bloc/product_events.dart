part of 'product_bloc.dart';

@freezed
abstract class ProductEvent implements _$ProductEvent {
  const factory ProductEvent.loadCategories(String searchText) =
      _$ProductLoadCategoriesEvent;
  const factory ProductEvent.addNewCategories(
      List<ProductTypeModel> categories) = _$ProductAddNewCategoriesEvent;

  const factory ProductEvent.addNewProduct(
      {required String brandName,
      required List<Uint8List> album,
      required String productDesc,
      required String productName,
      required double productPrice,
      required int quantity,
      required String productCategory,
      String? productCategoryS,
      String? productCategoryT,
      String? oldProductName,
      int? idProduct}) = _$ProductAddNewProductEvent;
  const factory ProductEvent.addNewBrand(
          String title, String description, Uint8List image) =
      _$ProductAddNewBrandEvent;
  const factory ProductEvent.loadBrands(String searchText) =
      _$ProductLoadBrandsEvent;
  const factory ProductEvent.loadProducts(
      int idOrganization,
      List<ProductTypeModel>? productTypes,
      String? searchPath,
      BrandModel? searchBrand) = _$ProductsLoadEvent;

}
