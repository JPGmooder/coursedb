import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kursach/domain/model/product_model.dart';

class CartModel {
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
