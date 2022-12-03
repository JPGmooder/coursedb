part of '../../../domain/cart/bloc/cart_bloc.dart';

class CartRepository {
  static Future<CartItemModel> manageCartItem(
      {required String userLogin,
      required int productId,
      required int quantity}) async {
    var loadedResponse =
        await CartProvider.addProductToCart(productId, quantity, userLogin);
    if (loadedResponse.hasException) {
      throw Exception();
    }
    List<CartItemModel> listToReturn = <CartItemModel>[];
    var manageBody = loadedResponse.data!['cartmanage'] as Map<String, dynamic>;

    return CartItemModel.fromMap(manageBody);
  }

  static Future<List<Map<String, dynamic>>> loadProductsById(List<int> ids) {
    var completer = Completer<List<Map<String, dynamic>>>();
    List<Map<String, dynamic>> listToReturn = [];
    for (var id in ids) {
      CartProvider.loadProductById(id: id).then((response) {
        if (response.hasException) {
          throw Exception(response.exception.toString());
        }
        var decodedProduct =
            ProductModel.fromMap(response.data!['product_by_pk']);
        var decodedCompany = OrganizationModel.fromMap(
            response.data!['product_by_pk']['company']);
        listToReturn
            .add({'product': decodedProduct, 'company': decodedCompany});
        if (ids.length == listToReturn.length) {
          completer.complete(listToReturn);
        }
      });
    }
    return completer.future;
  }

  static Future<CartModel> findActualCart({
    required String userLogin,
  }) async {
    var response = await CartProvider.findActualCard(userLogin);
    if (response.hasException ||
        response.data == null ||
        response.data!.isEmpty) {
      throw Exception("Ошибка какая-та");
    }
    return CartModel.fromMap((response.data!['cart'] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .first);
  }

  static Future<void> clearCart({
    required int cardId,
  }) async {
    var response = await CartProvider.clearCartById(id: cardId);
    if (response.hasException ||
        response.data == null ||
        response.data!.isEmpty) {
      throw Exception("Ошибка какая-та");
    }
  }

  static Future<OrderModel> createNewOrder(
      {required int cartId,
      required double deliveryPrice,
      required double cartSum,
      required int addressId}) async {
    var response = await CartProvider.convertCartToOrder(
        cartId, addressId, deliveryPrice + cartSum);
    if (response.hasException ||
        response.data == null ||
        response.data!.isEmpty) {
      throw Exception("Ошибка какая-та");
    }
    return OrderModel.fromMap(response.data!['orders_addnew']);
  }
}
