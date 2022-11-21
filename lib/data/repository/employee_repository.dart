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
    bool isCurrentAvailable = true;
    var completer = Completer<List<Map<String, dynamic>>>();
    late QueryResult<Object?> response;
    List<Map<String, dynamic>> mapper;
    response = await EmployeeProvider.findCourierActiveOrder(userLogin);
    if (response.data == null ||
        (response.data!['orders'] as List<Object?>).isEmpty) {
      response = await EmployeeProvider.searchNearOrders(
          userLogin, latitude, longtitude);
      if (response.hasException) {
        throw Exception(
            "Что-то пошло не так (эмплойе репозитори) + ${response.toString()}");
      }

      isCurrentAvailable = false;
      mapper = (response.data!['findcouriernearorders'] as List<Object?>)
          .cast<Map<String, dynamic>>()
          .toList();
    } else {
      mapper = (response.data!['orders'] as List<Object?>)
          .cast<Map<String, dynamic>>()
          .toList();
    }

    List<Map<String, dynamic>> modelsToReturn = [];
    for (var order in mapper) {
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
          'isCurrent': isCurrentAvailable,
          'address':
              AddressModel.fromMap(addressResponse.data!['address_by_pk']),
          'order': currentOrder,
          'company': orderMetaData['company'],
          'cart': CartModel.fromMap(order['cart']),
          'products': orderMetaData['products']
        });
        if (modelsToReturn.length == mapper.length) {
          completer.complete(modelsToReturn);
        }
      });
    }

    return await completer.future;
  }

  static Future<Map<int, OrderStatusName>> changeOrderStatus(
      {required String userLogin,
      required int orderId,
      required String statusName}) async {
    var response = await EmployeeProvider.changeOrderStatus(
        userLogin, orderId, statusName);
    if (response.hasException) {
      throw Exception(
          "Что-то пошло не так (эмплойе репозитори) + ${response.toString()}");
    }
    var loadedModel =
        (response.data!['orders_changestatus'] as Map<String, dynamic>);

    return {
      loadedModel['id_order']:
          OrderStatusName.fromMap(loadedModel['orderstatus'])
    };
  }

  static Future<DateTime> regCourierPlacement(
      {required int orderId,
      required double lat,
      required double lon,
      required bool isCompanyPassed}) async {
    var response = await EmployeeProvider.regCourierPlacement(
        orderId, lat, lon, isCompanyPassed);
    if (response.hasException) {
      throw Exception(
          "Что-то пошло не так (эмплойе репозитори) + ${response.toString()}");
    }
    return DateTime.parse(
        response.data!['update_courierplacement_by_pk']['accepttime']);
  }

  static Future<UserPersonalDataModel> findPersonalDataByPK(
      {required int addressPK}) async {
    var response = await EmployeeProvider.findUserPKByAddress(addressPK);
    if (response.hasException) {
      throw Exception(
          "Что-то пошло не так (эмплойе репозитори) + ${response.toString()}");
    }
    var personalData = UserPersonalDataModel.fromMap(
        (response.data!['address'] as List<Object?>)
            .cast<Map<String, dynamic>>()
            .toList()
            .first['client']['user']['personaldatum']);
    return personalData;
  }
}
