part of '../../../domain/employee/bloc/employee_bloc.dart';

class EmployeeRepository {
  static Future<CourierModel> regNewCourier({required String userLogin, required double deliverAreaDiametr}) async {
    var response = await EmployeeProvider.regNewCourier(userLogin, deliverAreaDiametr);
    if (response.hasException) {
      throw Exception(
          "Что-то пошло не так (эмплойе репозитори) + ${response.toString()}");
    }
    var loadedModel =
        CourierModel.fromMap(response.data!['insert_employee_one']);
    return loadedModel;
  }

  static Future<OrderModel> searchCourierOrders({required String userLogin, required double latitude, required double longtitude}) async {
    var response = await EmployeeProvider.searchNearOrders(userLogin, latitude, longtitude);
    if (response.hasException) {
      throw Exception(
          "Что-то пошло не так (эмплойе репозитори) + ${response.toString()}");
    }
    var loadedModel =
        OrderModel.fromMap(response.data!['findcouriernearorders']);
    return loadedModel;
  }
}
