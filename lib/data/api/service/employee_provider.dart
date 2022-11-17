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
    cart_id
  }
}
''';
    return MutationOptions(document: gql(query), variables: {
      "userlogin": userLogin,
      "clat": latitude,
      'clon': longtitude
    });
  }

  static Future<QueryResult> regNewCourier(
      String userLogin, double deliverArea) async {
    var response = await AppsGraphClient.client
        .mutate(_regNewCourier(userLogin, deliverArea));
    return response;
  }

  static Future<QueryResult> searchNearOrders(
      String userLogin, double latitude, double longtitude) async {
    var response = await AppsGraphClient.client
        .mutate(_searchNearestOrders(userLogin, latitude, longtitude));
    return response;
  }
}
