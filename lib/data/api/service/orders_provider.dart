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

  static SubscriptionOptions _listenCourierMoves(int orderId) {
    String query = r'''subscription MySubscription($_eq: Int!) {
  courierplacement(where: {id_order: {_eq: $_eq}}, limit: 1) {
    accepttime
    id_order
    isactive
    
    ispassedcompany
    latitude
    longtitude
    order {
      orderstatus{
        orderstatusname,
        orderstep
      }
      employee {
        user {
          personaldatum {
            personaldateofbirth
            personallname
            personalmobilenumber
            personalname
            personalpatronymic
            userlogin
          }
        }
      }
    }
  }
}


''';
    return SubscriptionOptions(
        document: gql(query), variables: {"_eq": orderId});
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

  static QueryOptions _findCouriersOrdersById(String courierLogin) {
    String query = r'''query findOrdersByUserLogin($_eq1: String!) {
  orders(where: {userlogin: {_eq: $_eq1}}) {
    cart {
      cartcreationtime
      cartitems {
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
    return QueryOptions(
        document: gql(query), variables: {"_eq1": courierLogin});
  }

  static SubscriptionOptions _checkActualOrders() {
    String query = r'''subscription OrdersChecker {
  orders(limit: 1) {
    id_order
    orderstatusname
  }
}



''';
    return SubscriptionOptions(document: gql(query));
  }

  static Future<QueryResult> findOrders(String userLogin) async {
    var response =
        await AppsGraphClient.client.query(_findOrdersById(userLogin));
    return response;
  }

  static Future<QueryResult> findCouriersOrders(String userLogin) async {
    var response =
        await AppsGraphClient.client.query(_findCouriersOrdersById(userLogin));
    return response;
  }

  static Future<QueryResult> findOrderProduct(List<int> productsIds) async {
    var response =
        await AppsGraphClient.client.query(_findProductsById(productsIds));
    return response;
  }

  static Stream<QueryResult<Object?>> checkActualOrders() {
    var response =
        AppsGraphClient.websocketclient.subscribe(_checkActualOrders());
    return response;
  }

  static Stream<QueryResult<Object?>> listenToCourierPlacement(int orderId) {
    var response =
        AppsGraphClient.websocketclient.subscribe(_listenCourierMoves(orderId));
    return response;
  }
}
