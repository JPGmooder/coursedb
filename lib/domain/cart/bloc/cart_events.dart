part of 'cart_bloc.dart';
@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.manageCartItem(
      {required String userLogin,
      required int productQuantity,
      required int productId}) = _$CartManageCartItemEvent;

        const factory CartEvent.loadProductsById(
      List<int> ids) = _$CartLoadProductsByIdEvent;
}
