part of '../../../domain/product/bloc/product_bloc.dart';

class ProductRepository {
  static Future<List<ProductTypeModel>> searchCategoryByText(
      String searchString) async {
    var response =
        await ProductProvider.searchCategoryByText(searchText: searchString);
    if (response.hasException) {
      throw Exception(response.exception.toString());
    }
    var decodedProductTypes =
        (response.data!['producttype'] as List<Object?>).map((e) {
      return ProductTypeModel.fromMap(e as Map<String, dynamic>);
    }).toList();
    return decodedProductTypes;
  }

  static Future<ProductTypeModel> addNewProductCategory(
      ProductTypeModel model) async {
    var response = await ProductProvider.addNewCategory(
        productTypeName: model.label, color: model.color.value);
    if (response.hasException) {
      throw Exception(response.exception.toString());
    }
    ProductTypeModel modelToReturn =
        ProductTypeModel.fromMap(response.data!['producttype_addnew']);
    return modelToReturn;
  }

  static Future<BrandModel> addNewBrand(
      String brandName, String brandDescription, Uint8List logo) async {
    var loadedLogo = await ProductProvider.loadBrandImage(
        brandName: brandName, imageData: logo);
    var loadedBrand = await ProductProvider.addNewBrand(
        brandName: brandName,
        brandDesc: brandDescription,
        brandImagePath: loadedLogo);
    if (loadedBrand.hasException) {
      throw Exception(loadedBrand.exception);
    }
    var modelToReturn = BrandModel.fromMap(loadedBrand.data!['brand_addnew']);
    return modelToReturn;
  }
}
