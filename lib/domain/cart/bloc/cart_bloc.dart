import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';

part 'cart_events.dart';
part 'cart_states.dart';
part '../../../data/api/service/cart_provider.dart';
part '../../../data/repository/cart_repository.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(const CartState.initial()) {
    on<CartEvent>((event, emit) async {
      await event.maybeWhen(
        orElse: () => null,
        createOrder: (cartId, itemsPrice, deliveryPrice, addressId) async {
          emit(const CartState.loading());
          var loadedOrder = await CartRepository.createNewOrder(
              cartId: cartId,
              deliveryPrice: deliveryPrice,
              cartSum: itemsPrice,
              addressId: addressId);
          var newCart = await CartRepository.findActualCart(
              userLogin: UserModel.get().login);
          emit(CartState.cartToOrderCompleted(loadedOrder, newCart));
        },
        manageCartItem: (userLogin, productQuantity, productId) async {
          var loadedItem = await CartRepository.manageCartItem(
              userLogin: userLogin,
              productId: productId,
              quantity: productQuantity);
          emit(CartState.itemManaged(loadedItem));
        },
        clearCartEvent: (cardId) async {
          await CartRepository.clearCart(cardId: cardId);
          emit(CartState.empty());
        },
        loadProductsById: ((ids) async {
          emit(const CartState.loading());
          if (ids.isEmpty) {
            emit(const CartState.empty());
          } else {
            var loadedProducts = await CartRepository.loadProductsById(ids);
            emit(CartState.productsByIdLoaded(
                loadedProducts
                    .map((e) => e['product'])
                    .toList()
                    .cast<ProductModel>(),
                loadedProducts
                    .map((e) => e['company'])
                    .toList()
                    .cast<OrganizationModel>()));
          }
        }),
      );
    });
  }
}
