part of '../../../domain/product/bloc/product_bloc.dart';

class ProductProvider {
  static QueryOptions searchCategoryByName(String searchString) {
    String query = r'''query SearchCategoriesByText($_like: String!) {
  producttype(where: {producttypename: {_like: $_like}})
  {
    producttypename,
    color
  }
}
''';
    return QueryOptions(
        document: gql(query), variables: {"_like": searchString});
  }

  static MutationOptions addProductType(int color, String productName) {
    String query =
        r'''mutation addNewProductType($p_color: Int!, $p_producttypename: String!) {
  producttype_addnew(args: {p_color: $p_color, p_producttypename: $p_producttypename}){
    color,
    producttypename
  }
}

''';
    return MutationOptions(
        document: gql(query),
        variables: {"p_color": color, "p_producttypename": productName});
  }

  static MutationOptions _addBrand(
      String brandName, String brandDescription, String brandPathToImge) {
    String query =
        r'''mutation AddNewBrand($p_branddescription: String = "", $p_brandlogo: String = "", $p_brandname: String = "") {
  brand_addnew(args: {p_branddescription: $p_branddescription, p_brandlogo: $p_brandlogo, p_brandname: $p_brandname}) {
    branddescription
    brandlogo
    brandname
  }
}


''';
    return MutationOptions(document: gql(query), variables: {
      "p_branddescription": brandDescription,
      "p_brandlogo": brandPathToImge,
      "p_brandname": brandName
    });
  }

  static Future<QueryResult> searchCategoryByText(
      {required String searchText}) async {
    var response =
        await AppsGraphClient.client.query(searchCategoryByName(searchText));
    return response;
  }

  static Future<QueryResult> addNewCategory(
      {required String productTypeName, required int color}) async {
    var response = await AppsGraphClient.client
        .mutate(addProductType(color, productTypeName));
    return response;
  }

  static Future<QueryResult> addNewBrand(
      {required String brandName,
      required String brandDesc,
      required String brandImagePath}) async {
    var response = await AppsGraphClient.client
        .mutate(_addBrand(brandName, brandDesc, brandImagePath));
    return response;
  }

  static Future<String> loadBrandImage(
      {required String brandName, required Uint8List imageData}) async {
    var translitter = Translit().toTranslit(source: brandName);
    var logoString = await SupaBaseClient.client.storage
        .from('kursach')
        .uploadBinary('brand/$translitter/logo.png', imageData);
    return logoString;
  }
}
