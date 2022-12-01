part of '../../../domain/employee/bloc/employee_bloc.dart';

class EmployeeProvider {
  static MutationOptions _regNewCourier(String userLogin, double deliverArea) {
    String query =
        r'''mutation addNewEmployee($status: employeestatus = "Рассмотрение", $postname: String = "Курьер", $userlogin: String!, $deliverarea: numeric = 0) {
  insert_employee_one(object: {status: $status, postname: $postname, userlogin: $userlogin, deliverarea: $deliverarea}) {
    userlogin
    status
    postname
    deliverarea
  }
}
''';
    return MutationOptions(
        document: gql(query),
        variables: {"userlogin": userLogin, "deliverarea": deliverArea});
  }

  static MutationOptions _searchNearestOrders(
      String userLogin, double latitude, double longtitude) {
    String query =
        r'''mutation searchNearOrders($clat: numeric!, $clon: numeric!, $p_userlogin: String!) {
  findcouriernearorders(args: {clat: $clat, clon: $clon, p_userlogin: $p_userlogin}) {
    orderprice
    id_order
    userlogin
    orderstatus {
      orderstatusname
      orderstep
    }
    id_address
    cart {
      cart_id
      cartcreationtime
      cartitems {
        id_product
        cartitemquantity
        cartitem_id
      }
    }
  }
}
''';
    return MutationOptions(document: gql(query), variables: {
      "p_userlogin": userLogin,
      "clat": latitude,
      'clon': longtitude
    });
  }

  static MutationOptions _changeCouriersDistance(
      String userLogin, double distance) {
    String query =
        r'''mutation MyMutation($userlogin: String!, $deliverarea: numeric!) {
  update_employee_by_pk(pk_columns: {userlogin: $userlogin}, _set: {deliverarea: $deliverarea}) {
    deliverarea
  }
}
''';
    return MutationOptions(
        document: gql(query),
        variables: {"userlogin": userLogin, "deliverarea": distance});
  }

  static QueryOptions _findActiveOrder(String userLogin) {
    String query = r'''query findActiveOrder($_eq: String!,) {
  orders(where: {userlogin: {_eq: $_eq}, orderstatusname: {_neq: "На рассмотрении"}, _and: {orderstatusname: {_neq: "Доставлено."}}}) {
    orderprice
    id_order
    userlogin
    orderstatus {
      orderstatusname
      orderstep
    }
    id_address
    cart {
      cartcreationtime
      cartitems {
        id_product
        cartitemquantity
        cartitem_id
      }
    }
  }
}

''';
    return QueryOptions(document: gql(query), variables: {
      "_eq": userLogin,
    });
  }

  static QueryOptions _findStatusById(String userLogin) {
    String query = r'''
query MyQuery($_eq: String!) {
  employee(where: {userlogin: {_eq: $_eq}}) {
    status
  }
}
''';
    return QueryOptions(
        document: gql(query),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {
          "_eq": userLogin,
        });
  }

  static Future<QueryResult> findStatusById(String userLogin) async {
    var response = await AppsGraphClient.client.query(
      _findStatusById(userLogin),
    );
    return response;
  }

  static MutationOptions _changeOrderStatus(
      String userLogin, int orderId, String statusName) {
    String query =
        r'''mutation MyMutation($p_id_order: Int!, $p_orderstatusname: String!, $p_userlogin: String!) {
  orders_changestatus(args: {p_id_order: $p_id_order, p_orderstatusname: $p_orderstatusname, p_userlogin: $p_userlogin}) {
    id_order
     orderstatus {
      orderstatusname
      orderstep
    }
  }
}

''';
    return MutationOptions(document: gql(query), variables: {
      "p_id_order": orderId,
      "p_orderstatusname": statusName,
      'p_userlogin': userLogin
    });
  }

  static QueryOptions _searchAddressByPk(int addressPk) {
    String query = r'''query MyQuery($id_address: Int!) {
  address_by_pk(id_address: $id_address) {
    userlogin
    id_address
    addressstreetname
    addressstate
    addressname
    addresslon
    addresslat
    addressfloor
    addressentrance
    addresscounty
    addresscity
    addressbuildingnum
    addressapartament
  }
}
''';
    return QueryOptions(document: gql(query), variables: {
      "id_address": addressPk,
    });
  }

  static QueryOptions _searchUserPDByAddress(int addressPk) {
    String query = r'''query MyQuery($_eq: Int!) {
  address(where: {id_address: {_eq: $_eq}}) {
    client {
      user {
        personaldatum {
          personallname
          personalmobilenumber
          personalname
          personalpatronymic
          personaldateofbirth
        }
      }
    }
  }
}

''';
    return QueryOptions(document: gql(query), variables: {
      "_eq": addressPk,
    });
  }

  static MutationOptions _regCourierPlacement(
      int idOrder, double lat, double lon, bool isPassed) {
    String query =
        r'''mutation MyMutation($id_order: Int!, $latitude: numeric!, $longtitude: numeric!, $ispassedcompany: Boolean = false) {
  update_courierplacement_by_pk(pk_columns: {id_order: $id_order}, _set: {latitude: $latitude, longtitude: $longtitude, isactive: true, ispassedcompany: $ispassedcompany}) {
    id_order,
    accepttime
  }
}
''';
    return MutationOptions(document: gql(query), variables: {
      "id_order": idOrder,
      "latitude": lat,
      "longtitude": lon,
      "ispassedcompany": isPassed
    });
  }

  static QueryOptions _loadCouriersStatistict() {
    String query = r'''
query MyQuery {
  courierstatistic {
    order {
      orderprice
      address {
        addresscity
      }
      id_order
      id_address
      cart_id
      orderstatus {
        orderstatusname
        orderstep
      }
    }
    distance
    delivertime
    accepttime
    userlogin
  }
}


''';
    return QueryOptions(
        document: gql(query), fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult> regNewCourier(
      String userLogin, double deliverArea) async {
    var response = await AppsGraphClient.client
        .mutate(_regNewCourier(userLogin, deliverArea));
    return response;
  }

  static Future<QueryResult> findUserPKByAddress(int addressPK) async {
    var response =
        await AppsGraphClient.client.query(_searchUserPDByAddress(addressPK));
    return response;
  }

  static Future<QueryResult> searchAddressByPk(int addressPK) async {
    var response =
        await AppsGraphClient.client.query(_searchAddressByPk(addressPK));
    return response;
  }

  static Future<QueryResult> searchNearOrders(
      String userLogin, double latitude, double longtitude) async {
    var response = await AppsGraphClient.client
        .mutate(_searchNearestOrders(userLogin, latitude, longtitude));
    return response;
  }

  static Future<QueryResult> changeCourierDistance(
      String userLogin, double distance) async {
    var response = await AppsGraphClient.client
        .mutate(_changeCouriersDistance(userLogin, distance));
    return response;
  }

  static Future<QueryResult> findCourierActiveOrder(String userLogin) async {
    var response =
        await AppsGraphClient.client.query(_findActiveOrder(userLogin));
    return response;
  }

  static Future<QueryResult> changeOrderStatus(
      String userLogin, int orderId, String statusName) async {
    var response = await AppsGraphClient.client
        .mutate(_changeOrderStatus(userLogin, orderId, statusName));
    return response;
  }

  static Future<QueryResult> regCourierPlacement(
      int orderId, double lat, double lon, bool isCompanyPassed) async {
    var response = await AppsGraphClient.client
        .mutate(_regCourierPlacement(orderId, lat, lon, isCompanyPassed));
    return response;
  }

  static Future<QueryResult> loadCurierStatistic() async {
    var response =
        await AppsGraphClient.client.query(_loadCouriersStatistict());
    return response;
  }
}
