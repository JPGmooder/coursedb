part of '../../../domain/employee/bloc/employee_bloc.dart';

class EmployeeRepository {
  static Future<CourierModel> regNewCourier(
      {required String userLogin, required double deliverAreaDiametr}) async {
    var response =
        await EmployeeProvider.regNewCourier(userLogin, deliverAreaDiametr);
    if (response.hasException) {
      throw Exception(
          "Что-то пошло не так (эмплойе репозитори) + ${response.toString()}");
    }
    var loadedModel =
        CourierModel.fromMap(response.data!['insert_employee_one']);
    return loadedModel;
  }

  static Future<List<Map<String, dynamic>>> searchCourierOrders(
      {required String userLogin,
      required double latitude,
      required double longtitude}) async {
    var completer = Completer<List<Map<String, dynamic>>>();
    var response = await EmployeeProvider.searchNearOrders(
        userLogin, latitude, longtitude);
    if (response.hasException) {
      throw Exception(
          "Что-то пошло не так (эмплойе репозитори) + ${response.toString()}");
    }

    List<Map<String, dynamic>> modelsToReturn = [];

    for (var order in response.data!['findcouriernearorders']) {
      var currentOrder = OrderModel.fromMap(order);
      var addressResponse =
          await EmployeeProvider.searchAddressByPk(currentOrder.addressId);
      List<Object?> loadedCartItems = order['cart']['cartitems'];
      OrdersRepository.loadOrdersProducts(
              ids: loadedCartItems
                  .cast<Map<String, dynamic>>()
                  .map((e) => e['id_product'] as int)
                  .toList())
          .then((orderMetaData) async {
        modelsToReturn.add({
          'address':
              AddressModel.fromMap(addressResponse.data!['address_by_pk']),
          'order': currentOrder,
          'company': orderMetaData['company'],
          'cart': CartModel.fromMap(order['cart']),
          'products': orderMetaData['products']
        });
        if (modelsToReturn.length ==
            (response.data!['findcouriernearorders'] as List<Object?>).length) {
          completer.complete(modelsToReturn);
        }
      });
    }

    return await completer.future;
  }
}
