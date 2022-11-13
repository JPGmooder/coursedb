import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kursach/domain/cart/bloc/cart_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';

class CartModel with ChangeNotifier {
  int cartID;
  DateTime creationDate;
  bool isActive;
  List<CartItemModel> items;
  CartModel({
    required this.cartID,
    required this.creationDate,
    required this.isActive,
    required this.items,
  });

  CartModel copyWith({
    int? cartID,
    DateTime? creationDate,
    bool? isActive,
    List<CartItemModel>? items,
  }) {
    return CartModel(
      cartID: cartID ?? this.cartID,
      creationDate: creationDate ?? this.creationDate,
      isActive: isActive ?? this.isActive,
      items: items ?? this.items,
    );
  }

  void addItemToList(CartItemModel cartItem) {
    var index = items
        .indexWhere((element) => element.cartItemId == cartItem.cartItemId);
    if (index == -1) {
      items.add(cartItem);
    } else {
      if (cartItem.amount == 0) {
        items.removeAt(index);
      } else {
        items[index] = cartItem;
      }
    }
    notifyListeners();
  }

  bool isCartFromSingleShop(List<ProductModel> products) =>
      products.any((element) =>
          items.isEmpty ||
          items.any((cartItem) => element.productId == cartItem.productId));

  void manageCartItems(BuildContext context, List<ProductModel> products,
      int productCount, int productId) {
    if (isCartFromSingleShop(products)) {
      context.read<CartBloc>().add(CartEvent.manageCartItem(
          userLogin: UserModel.get().login,
          productQuantity: productCount,
          productId: productId));
    } else {
      showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Корзина содержит товары другого магазина, однако заказ возможен только из одного.",
                        style: Theme.of(context).textTheme.labelMedium,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Удалить товары из корзины и добавить новые?",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                        textScaleFactor: 1.3,
                      )
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text("Назад")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Очистить корзину")),
                ],
              ));
    }
  }

  Map<String, dynamic> toMap() {
    return {
      'cartID': cartID,
      'creationDate': creationDate.millisecondsSinceEpoch,
      'isActive': isActive,
      'items': items.map((x) => x.toMap()).toList(),
    };
  }

  factory CartModel.fromMap(Map<String, dynamic> map) {
    return CartModel(
      cartID: map['cart_id']?.toInt() ?? 0,
      creationDate: DateTime.parse(map['cartcreationtime']),
      isActive: map['isactive'] ?? false,
      items: List<CartItemModel>.from(
          map['cartitems']?.map((x) => CartItemModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory CartModel.fromJson(String source) =>
      CartModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CartModel(cartID: $cartID, creationDate: $creationDate, isActive: $isActive, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartModel &&
        other.cartID == cartID &&
        other.creationDate == creationDate &&
        other.isActive == isActive &&
        listEquals(other.items, items);
  }

  @override
  int get hashCode {
    return cartID.hashCode ^
        creationDate.hashCode ^
        isActive.hashCode ^
        items.hashCode;
  }
}

class CartItemModel {
  int cartItemId;
  int productId;
  int amount;
  CartItemModel({
    required this.cartItemId,
    required this.productId,
    required this.amount,
  });

  CartItemModel copyWith({
    int? cartItemId,
    int? productId,
    int? amount,
  }) {
    return CartItemModel(
      cartItemId: cartItemId ?? this.cartItemId,
      productId: productId ?? this.productId,
      amount: amount ?? this.amount,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'cartitem_id': cartItemId,
      'id_product': productId,
      'cartitemquantity': amount,
    };
  }

  factory CartItemModel.fromMap(Map<String, dynamic> map) {
    return CartItemModel(
      cartItemId: map['cartitem_id']?.toInt() ?? 0,
      productId: map['id_product']?.toInt() ?? 0,
      amount: map['cartitemquantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CartItemModel.fromJson(String source) =>
      CartItemModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'CartItemModel(cartItemId: $cartItemId, productId: $productId, amount: $amount)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CartItemModel &&
        other.cartItemId == cartItemId &&
        other.productId == productId &&
        other.amount == amount;
  }

  @override
  int get hashCode =>
      cartItemId.hashCode ^ productId.hashCode ^ amount.hashCode;
}
