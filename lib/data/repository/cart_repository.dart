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
}
