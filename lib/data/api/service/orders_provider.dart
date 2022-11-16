part of '../../../domain/orders/bloc/orders_bloc.dart';

class OrdersProvider {
  static QueryOptions _findProductsById(List<int> ids) {
    String query = r'''query searchProductByIds($_in: [Int!]!) {
  product(where: {id_product: {_in: $_in}}) {
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
    return QueryOptions(document: gql(query), variables: {"_in": ids});
  }

 static QueryOptions _findOrdersById(String userLogin) {
    String query = r'''query findOrdersByUserLogin($_eq: String = "") {
  orders {
    cart {
      cartcreationtime
      cartitems(where: {cart: {client: {userlogin: {_eq: $_eq}}}}) {
        cartitemquantity
        cartitem_id
        id_product
      }
      cart_id
      isactive
    }
    orderstatus {
      orderstatusname
      orderstep
    }
    orderprice
    id_address
    id_order
    cart_id
  }
}


''';
    return QueryOptions(document: gql(query), variables: {"_eq": userLogin});
  }


   static Future<QueryResult> findOrders(
      String userLogin) async {
    var response = await AppsGraphClient.client
        .query(_findOrdersById(userLogin));
    return response;
  }

  static Future<QueryResult> findOrderProduct(List<int> productsIds) async {
    var response = await AppsGraphClient.client
        .query(_findProductsById(productsIds));
    return response;
  }
  
}
