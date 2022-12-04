part of '../../../domain/orders/bloc/orders_bloc.dart';

class OrdersRepository {
  static Future<List<Map<String, dynamic>>> loadUsersOrders(
      {required String userLogin}) async {
    var loadedResponse = await OrdersProvider.findOrders(userLogin);
    if (loadedResponse.hasException) {
      throw Exception("Что-то пошло не так");
    }
    var loadedData = (loadedResponse.data!['orders'] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .toList();
    List<Map<String, dynamic>> listToReturn = [];
    for (var element in loadedData) {
      var orderCart = CartModel.fromMap(element['cart']);
      if (orderCart.items.isNotEmpty) {
        var orderModel = OrderModel.fromMap(element);

        listToReturn.add({"order": orderModel, "cart": orderCart});
      }
    }
    return listToReturn;
  }

  static Future<List<Map<String, dynamic>>> loadCouriesOrders(
      {required String userLogin}) async {
    var loadedResponse = await OrdersProvider.findCouriersOrders(userLogin);
    if (loadedResponse.hasException) {
      throw Exception("Что-то пошло не так");
    }
    var loadedData = (loadedResponse.data!['orders'] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .toList();
    List<Map<String, dynamic>> listToReturn = [];
    for (var element in loadedData) {
      var orderModel = OrderModel.fromMap(element);
      var orderCart = CartModel.fromMap(element['cart']);
      listToReturn.add({"order": orderModel, "cart": orderCart});
    }
    return listToReturn;
  }

  static Future<Map<String, dynamic>> loadOrdersProducts(
      {required List<int> ids}) async {
    var loadedProducts = await OrdersProvider.findOrderProduct(ids);
    if (loadedProducts.hasException) {
      throw Exception("Что-то пошло не так");
    }
    var parsedList = (loadedProducts.data!['product'] as List<Object?>)
        .cast<Map<String, dynamic>>();
    return {
      'products': parsedList.map((e) => ProductModel.fromMap(e)).toList(),
      'company': OrganizationModel.fromMap(parsedList.first['company'])
    };
  }
}
