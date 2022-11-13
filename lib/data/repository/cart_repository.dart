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
}
