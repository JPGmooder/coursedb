
part of '../../../domain/cart/bloc/cart_bloc.dart';

class CartProvider {
  static MutationOptions _mutateProductToCart(
      int productId, int quantity, String userLogin) {
    String mutationQuery = r'''
mutation addProductToCart($p_id_product: Int!, $p_productquantity: Int!, $p_userlogin: String!) {
  cartmanage(args: {p_id_product: $p_id_product, p_productquantity: $p_productquantity, p_userlogin: $p_userlogin}) {
    cartitemquantity
    cartitem_id
    id_product
  }
}
''';
    var variables = <String, dynamic>{
      "p_id_product": productId,
      "p_productquantity": quantity,
      "p_userlogin": userLogin
    };
    return MutationOptions(document: gql(mutationQuery), variables: variables);
  }

  static Future<QueryResult> addProductToCart(
      int productId, int quantity, String userLogin) async {
    var response = await AppsGraphClient.client
        .mutate(_mutateProductToCart(productId, quantity, userLogin));
    return response;
  }
}
