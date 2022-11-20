import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';

enum EmployeeStatus {
  waiting('Рассмотрение'),
  fired('Уволен'),
  accepted('Принят');

  final String name;

  const EmployeeStatus(this.name);

  factory EmployeeStatus.fromMap(String name) =>
      EmployeeStatus.values.firstWhere((element) => element.name == name);
}

abstract class _Employee {
  String postName;
  EmployeeStatus status;
  _Employee(
    this.postName,
    this.status,
  );
}

class CourierModel extends _Employee {
  double deliverField;
  CurrentCouriersOrder? currentOrder;
  CourierModel(
      {required String postName,
      required EmployeeStatus status,
      required this.currentOrder,
      required this.deliverField})
      : super(postName, status);

  factory CourierModel.fromMap(Map<String, dynamic> map) {
    return CourierModel(
      postName: map['postname'],
      status: EmployeeStatus.fromMap(map['status']),
      currentOrder: null,
      deliverField: map['deliverarea']?.toDouble() ?? 0.0,
    );
  }
}

class CurrentCouriersOrder {
  final AddressModel addressModel;
  final OrderModel order;
  final List<ProductModel> products;
  final OrganizationModel organization;
  final CartModel cart;
  CurrentCouriersOrder({
    required this.addressModel,
    required this.order,
    required this.products,
    required this.organization,
    required this.cart,
  });

  CurrentCouriersOrder copyWith({
    AddressModel? addressModel,
    OrderModel? order,
    List<ProductModel>? products,
    OrganizationModel? organization,
    CartModel? cart,
  }) {
    return CurrentCouriersOrder(
      addressModel: addressModel ?? this.addressModel,
      order: order ?? this.order,
      products: products ?? this.products,
      organization: organization ?? this.organization,
      cart: cart ?? this.cart,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'addressModel': addressModel.toMap(),
      'order': order.toMap(),
      'products': products.map((x) => x.toMap()).toList(),
      'organization': organization.toMap(),
      'cart': cart.toMap(),
    };
  }

  factory CurrentCouriersOrder.fromMap(Map<String, dynamic> map) {
    return CurrentCouriersOrder(
      addressModel: AddressModel.fromMap(map['addressModel']),
      order: OrderModel.fromMap(map['order']),
      products: List<ProductModel>.from(
          map['products']?.map((x) => ProductModel.fromMap(x))),
      organization: OrganizationModel.fromMap(map['organization']),
      cart: CartModel.fromMap(map['cart']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrentCouriersOrder.fromJson(String source) =>
      CurrentCouriersOrder.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CurrentCouriersOrder(addressModel: $addressModel, order: $order, products: $products, organization: $organization, cart: $cart)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CurrentCouriersOrder &&
        other.addressModel == addressModel &&
        other.order == order &&
        listEquals(other.products, products) &&
        other.organization == organization &&
        other.cart == cart;
  }

  @override
  int get hashCode {
    return addressModel.hashCode ^
        order.hashCode ^
        products.hashCode ^
        organization.hashCode ^
        cart.hashCode;
  }
}
