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

  static QueryOptions _searchBrandByName(String searchString) {
    String query = r'''query SearchBrandByName($_like : String!) {
  brand(where: {brandname: {_like: $_like}}) {
    brandlogo
    brandname
    branddescription
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

  static MutationOptions _addNewProduct(
      {required String brandName,
      required List<String> album,
      required int idCompany,
      required String productDesc,
      required String productName,
      required double productPrice,
      required int quantity,
      required String productCategory,
      String? productCategoryS,
      String? productCategoryT}) {
    String query =
        r'''mutation addNewProduct($p_brandname: String!, $p_productalbum: _text!, $p_id_company: Int!, $p_productdescription: String!, $p_productname: String!, $p_productprice: numeric!, $p_productquantity: Int!, $p_producttypename: String!, $p_producttypenames: String, $p_producttypenamet: String) {
  product_addnew(args: {p_brandname: $p_brandname, p_productalbum: $p_productalbum, p_id_company: $p_id_company, p_productdescription: $p_productdescription, p_productname: $p_productname, p_productprice: $p_productprice, p_productquantity: $p_productquantity, p_producttypename: $p_producttypename, p_producttypenames: $p_producttypenames, p_producttypenamet: $p_producttypenamet}) {
    id_product
    productalbum
    productdescription
    productname
    productprice
    productquantity
    brand {
      brandname
      brandlogo
      branddescription
    }
    producttype {
      color
      producttypename
    }
    producttypeByProducttypenames {
      color
      producttypename
    }
    producttypeByProducttypenamet {
      color
      producttypename
    }
  }
}


''';
    return MutationOptions(document: gql(query), variables: {
      "p_brandname": brandName,
      "p_productalbum": album.toString(),
      "p_id_company": idCompany,
      "p_productdescription": productDesc,
      "p_productname": productName,
      "p_productprice": productPrice,
      "p_productquantity": quantity,
      "p_producttypename": productCategory,
      "p_producttypenames": productCategoryS,
      "p_producttypenamet": productCategoryT,
    });
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

  static Future<QueryResult> searchBrandByText(
      {required String brandName}) async {
    var response =
        await AppsGraphClient.client.query(_searchBrandByName(brandName));
    return response;
  }

  static Future<String> loadBrandImage(
      {required String brandName, required Uint8List imageData}) async {
    var appleInBytes = utf8.encode(brandName);
    String codedName = (sha256.convert(appleInBytes)).toString();
    var path = await SupaBaseClient.client.storage
        .from('kursach')
        .uploadBinary('brand/$codedName/logo.png', imageData);
    var logoString = SupaBaseClient.client.storage
        .from('kursach')
        .getPublicUrl('brand/$codedName/logo.png');
    return logoString;
  }

  static Future<List<String>> loadProductImages(
      {required List<Uint8List> images,
      required String productName,
      required int orgId}) async {
    var loader = Completer<List<String>>();
    List<String> path = [];
    var appleInBytes = utf8.encode(productName);
    String codedName = (sha256.convert(appleInBytes)).toString();

    for (int i = 0; i < images.length; i++) {
      SupaBaseClient.client.storage
          .from('kursach')
          .uploadBinary('organiztion/$orgId/$codedName/$i.png', images[i])
          .then((value) {
        var downloadString = SupaBaseClient.client.storage
            .from('kursach')
            .getPublicUrl('organiztion/$orgId/$codedName/$i.png');
        path.add(downloadString);
        if (path.length == images.length) {
          loader.complete(path);
        }
      });
    }
    return await loader.future;
  }

  static Future<QueryResult> addNewProduct(
      {required String brandName,
      required List<String> album,
      required int idCompany,
      required String productDesc,
      required String productName,
      required double productPrice,
      required int quantity,
      required String productCategory,
      String? productCategoryS,
      String? productCategoryT}) async {
    var response = await AppsGraphClient.client.mutate(_addNewProduct(
        brandName: brandName,
        album: album,
        idCompany: idCompany,
        productDesc: productDesc,
        productName: productName,
        productPrice: productPrice,
        quantity: quantity,
        productCategory: productCategory,
        productCategoryS: productCategoryS,
        productCategoryT: productCategoryT));
    return response;
  }
}
