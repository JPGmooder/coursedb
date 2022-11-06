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
}
