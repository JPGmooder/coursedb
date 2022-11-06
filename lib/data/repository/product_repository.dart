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
    ProductTypeModel modelToReturn = ProductTypeModel.fromMap(response.data!);
    return modelToReturn;
  }
}
