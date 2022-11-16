part of 'cart_bloc.dart';
@freezed
class CartState with _$CartState {
  const factory CartState.itemManaged(CartItemModel? managedItem) =
      _$CartItemManagedState;
  const factory CartState.initial() = _$CartItemInitialState;
    const factory CartState.loading() = _$CartItemLoadingState;
    const factory CartState.errored(String error) = _$CartItemErroredState;
     const factory CartState.cartToOrderCompleted(OrderModel order, CartModel newCart) = _$CartCartToOrderCompletedState;
const factory CartState.empty() = _$CartEmptyState;
     const factory CartState.productsByIdLoaded(
      List<ProductModel> products, List<OrganizationModel> organizations) = _$CartProductsByIdLoadedState;

}
