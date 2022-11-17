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
        document: gql(query), variables: {"userlogin": userLogin, "deliverarea" : deliverArea});
  }

  static Future<QueryResult> regNewCourier(String userLogin, double deliverArea) async {
    var response =
        await AppsGraphClient.client.mutate(_regNewCourier(userLogin, deliverArea));
    return response;
  }
}
