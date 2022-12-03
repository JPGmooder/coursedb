part of '../../../domain/cart/bloc/cart_bloc.dart';

class CartProvider {
  static QueryOptions _findProductById(int id) {
    String query = r'''query findProductById($id_product: Int!) {
  product_by_pk(id_product: $id_product) {
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
    productquantity
    productprice
    productname
    productdescription
    productalbum
    id_product
    brand {
      branddescription
      brandlogo
      brandname
    }
    company {
      address {
        addressapartament
        addressbuildingnum
        addresscity
        addresscounty
        addressentrance
        addressfloor
        addresslat
        addresslon
        addressname
        addressstate
        addressstreetname
        id_address
      }
      companydeliveryprice
      companyname
      companystatusname
      companytypename
      id_company
    }
  }
}

''';
    return QueryOptions(document: gql(query), variables: {"id_product": id});
  }

  static QueryOptions _findActualCart(String userLogin) {
    String query = r'''
query searchNewCart($_eq: String = "") {
  cart(where: {client: {userlogin: {_eq: $_eq}}, isactive: {_eq: true}}) {
    cart_id
    cartcreationtime
    userlogin
    cartitems{
      cartitem_id
    }
  }
}
''';
    return QueryOptions(document: gql(query), variables: {"_eq": userLogin});
  }

  static MutationOptions _mutateProductToCart(
      int productId, int quantity, String userLogin) {
    String mutationQuery = r'''
mutation addProductToCart($p_id_product: Int!, $p_productquantity: Int!, $p_userlogin: String!) {
  cartmanage(args: {p_id_product: $p_id_product, p_productquantity: $p_productquantity, p_userlogin: $p_userlogin}) {
    cartitemquantity
    cartitem_id
    id_product
  }
}
''';
    var variables = <String, dynamic>{
      "p_id_product": productId,
      "p_productquantity": quantity,
      "p_userlogin": userLogin
    };
    return MutationOptions(document: gql(mutationQuery), variables: variables);
  }

  static MutationOptions _mutateCartToOrder(
      int cartId, int addressId, double orderPrice) {
    String mutationQuery = r'''
mutation addNewOrder($p_cart_id: Int!, $p_id_address: Int!, $p_orderprice: numeric!, $p_orderstatusname: String = null, $p_userlogin: String = null) {
  orders_addnew(args: {p_cart_id: $p_cart_id, p_id_address: $p_id_address, p_orderprice: $p_orderprice, p_orderstatusname: $p_orderstatusname, p_userlogin: $p_userlogin}) {
    userlogin
    orderstatus{
      orderstatusname,
      orderstep
    }
    orderprice
    id_order
    cart_id
    id_address
  }
}

''';
    var variables = <String, num>{
      "p_cart_id": cartId,
      "p_id_address": addressId,
      "p_orderprice": orderPrice
    };
    return MutationOptions(document: gql(mutationQuery), variables: variables);
  }

  static MutationOptions _clearCart(int cartId) {
    String mutationQuery = r'''
mutation MyMutation($_eq: Int!) {
  delete_cartitem(where: {cart_id: {_eq: $_eq}}) {
    returning {
      cart_id
    }
  }
}
''';
    var variables = {"_eq": cartId};
    return MutationOptions(document: gql(mutationQuery), variables: variables, fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult> clearCartById({required int id}) async {
    var response = await AppsGraphClient.client.mutate(_clearCart(id));
    return response;
  }

  static Future<QueryResult> loadProductById({required int id}) async {
    var response = await AppsGraphClient.client.query(_findProductById(id));
    return response;
  }

  static Future<QueryResult> addProductToCart(
      int productId, int quantity, String userLogin) async {
    var response = await AppsGraphClient.client
        .mutate(_mutateProductToCart(productId, quantity, userLogin));
    return response;
  }

  static Future<QueryResult> convertCartToOrder(
      int cartId, int addressId, double orderPrice) async {
    var response = await AppsGraphClient.client
        .mutate(_mutateCartToOrder(cartId, addressId, orderPrice));
    return response;
  }

  static Future<QueryResult> findActualCard(String userLogin) async {
    var response =
        await AppsGraphClient.client.query(_findActualCart(userLogin));
    return response;
  }
}
