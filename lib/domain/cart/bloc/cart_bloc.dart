import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/cart_model.dart';

part 'cart_events.dart';
part 'cart_states.dart';
part '../../../data/api/service/cart_provider.dart';
part '../../../data/repository/cart_repository.dart';
part 'cart_bloc.freezed.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartState.initial()) {
    on<CartEvent>((event, emit) async {
      await event.maybeWhen(
        orElse: () => null,
        manageCartItem: (userLogin, productQuantity, productId) async {
          var loadedItem = await CartRepository.manageCartItem(
              userLogin: userLogin,
              productId: productId,
              quantity: productQuantity);
          emit(CartState.itemManaged(loadedItem));
        },
      );
    });
  }
}
