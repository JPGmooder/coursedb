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

  static Future<List<BrandModel>> searchBrandByName(String searchText) async {
    var response =
        await ProductProvider.searchBrandByText(brandName: searchText);
    if (response.hasException) {
      throw Exception(response.exception.toString());
    }
    var decodedBrands = (response.data!['brand'] as List<Object?>).map((e) {
      return BrandModel.fromMap(e as Map<String, dynamic>);
    }).toList();
    return decodedBrands;
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

  static Future<ProductModel> addNewProduct(
      {required String brandName,
      required List<Uint8List> album,
      required String productDesc,
      required String productName,
      required double productPrice,
      required int quantity,
      required String productCategory,
      String? oldProductName,
      int? idProduct,
      String? productCategoryS,
      String? productCategoryT}) async {
    var loadedAlbum = await ProductProvider.loadProductImages(
        isNew: idProduct != null,
        images: album,
        orgId: UserModel.get().organizationModel!.idCompany,
        productName: productName);
    var loadedProduct = await ProductProvider.addNewProduct(
        idProduct: idProduct,
        album: loadedAlbum,
        brandName: brandName,
        idCompany: UserModel.get().organizationModel!.idCompany,
        productCategory: productCategory,
        productDesc: productDesc,
        productName: productName,
        quantity: quantity,
        productPrice: productPrice,
        productCategoryS: productCategoryS,
        productCategoryT: productCategoryT);
    if (loadedProduct.hasException) {
      throw Exception(loadedProduct.exception);
    }
    var modelToReturn =
        ProductModel.fromMap(loadedProduct.data!['product_addnew']);
    return modelToReturn;
  }

  static Future<List<ProductModel>> loadProductModels(
      {required int idCompany,
      String? searchString,
      String? brandName,
      String? productType,
      String? productTypes,
      String? productTypet}) async {
    var response = await ProductProvider.loadProducts(
        idCompany: idCompany,
        brandName: brandName,
        productType: productType,
        productTypes: productTypes,
        productTypet: productTypet,
        searchString: searchString);
    if (response.hasException) {
      throw Exception(response.exception);
    }
    var decodedProducts = (response.data!["product"] as List<dynamic>).map((e) {
      return ProductModel.fromMap(e);
    }).toList();
    return decodedProducts;
  }
}
