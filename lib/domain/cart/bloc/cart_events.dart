part of 'cart_bloc.dart';
@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.manageCartItem(
      {required String userLogin,
      required int productQuantity,
      required int productId}) = _$CartManageCartItemEvent;
   const factory CartEvent.clearCartEvent(
      {required int cartId}) = _$CartClearEvent;

        const factory CartEvent.loadProductsById(
      List<int> ids) = _$CartLoadProductsByIdEvent;
      const factory CartEvent.createOrder({required int cartId, required double itemsPrice, required double deliveryPrice, required int addressId}) = _$CartCreateOrderEvent;
}
