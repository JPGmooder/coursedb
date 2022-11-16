import 'dart:convert';

import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/cart_model.dart';

class OrderModel {
  int idOrder;
  double orderPrice;
  int addressId;
  int cartId;
  _CourierContactData? courierData;
  OrderStatusName orderStatusName;
  OrderModel({
    required this.idOrder,
    required this.orderPrice,
    required this.addressId,
    required this.cartId,
    this.courierData,
    required this.orderStatusName,
  });

  OrderModel copyWith({
    int? idOrder,
    double? orderPrice,
    int? addressId,
    int? cartId,
    _CourierContactData? courierData,
    OrderStatusName? orderStatusName,
  }) {
    return OrderModel(
      idOrder: idOrder ?? this.idOrder,
      orderPrice: orderPrice ?? this.orderPrice,
      addressId: addressId ?? this.addressId,
      cartId: cartId ?? this.cartId,
      courierData: courierData ?? this.courierData,
      orderStatusName: orderStatusName ?? this.orderStatusName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idOrder': idOrder,
      'orderPrice': orderPrice,
      'addressId': addressId,
      'cartId': cartId,
      'courierData': courierData?.toMap(),
      'orderStatusName': orderStatusName.toMap(),
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    return OrderModel(
      idOrder: map['id_order']?.toInt() ?? 0,
      orderPrice: map['orderprice']?.toDouble() ?? 0.0,
      addressId: map['id_address']?.toInt() ?? 0,
      cartId: map['cart_id']?.toInt() ?? 0,
      courierData: map['employee'] != null ? _CourierContactData.fromMap(map['employee']['user']) : null,
      orderStatusName: OrderStatusName.fromMap(map['orderstatus']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderModel.fromJson(String source) => OrderModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'OrderModel(idOrder: $idOrder, orderPrice: $orderPrice, addressId: $addressId, cartId: $cartId, courierData: $courierData, orderStatusName: $orderStatusName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is OrderModel &&
      other.idOrder == idOrder &&
      other.orderPrice == orderPrice &&
      other.addressId == addressId &&
      other.cartId == cartId &&
      other.courierData == courierData &&
      other.orderStatusName == orderStatusName;
  }

  @override
  int get hashCode {
    return idOrder.hashCode ^
      orderPrice.hashCode ^
      addressId.hashCode ^
      cartId.hashCode ^
      courierData.hashCode ^
      orderStatusName.hashCode;
  }
}

class _CourierContactData {
  String userLogin;
  String name;
  String lName;
  String? patronymic;
  String mobileNumber;
  _CourierContactData({
    required this.name,
    required this.lName,
    required this.userLogin,
    this.patronymic,
    required this.mobileNumber,
  });

  _CourierContactData copyWith({
    String? name,
    String? lName,
    String? patronymic,
    String? mobileNumber,
  }) {
    return _CourierContactData(
      userLogin: userLogin,
      name: name ?? this.name,
      lName: lName ?? this.lName,
      patronymic: patronymic ?? this.patronymic,
      mobileNumber: mobileNumber ?? this.mobileNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userLogin' : userLogin,
      'personalname': name,
      'personallname': lName,
      'personalpatronymic': patronymic,
      'personalmobilenumber': mobileNumber,
    };
  }

  factory _CourierContactData.fromMap(Map<String, dynamic> map) {
    return _CourierContactData(
      userLogin: map['userlogin'] ?? '',
      name: map['personaldatum']['personalname'] ?? '',
      lName: map['personaldatum']['personallname'] ?? '',
      patronymic: map['personaldatum']['personalpatronymic'],
      mobileNumber: map['personaldatum']['personalmobilenumber'] ?? '',
    );
  }


}

enum OrderStep {
  waiting('На рассмотрении'),
  searching('Поиск курьера'),  
  delivery('Доставка');

  final String text;
  const OrderStep(this.text);

  Map<String, dynamic> toMap() {
    return {
      'step': text,
    };
  }

  factory OrderStep.fromMap(String map) {
    return OrderStep.values.firstWhere((element) => element.text == map);
  }
}

class OrderStatusName {
  String name;
  OrderStep step;
  OrderStatusName({
    required this.name,
    required this.step,
  });

  OrderStatusName copyWith({
    String? name,
    OrderStep? step,
  }) {
    return OrderStatusName(
      name: name ?? this.name,
      step: step ?? this.step,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'step': step.toMap(),
    };
  }

  factory OrderStatusName.fromMap(Map<String, dynamic> map) {
    return OrderStatusName(
      name: map['orderstatusname'] ?? '',
      step: OrderStep.fromMap(map['orderstep']),
    );
  }

  String toJson() => json.encode(toMap());

  factory OrderStatusName.fromJson(String source) =>
      OrderStatusName.fromMap(json.decode(source));

  @override
  String toString() => 'OrderStatusName(name: $name, step: $step)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is OrderStatusName && other.name == name && other.step == step;
  }

  @override
  int get hashCode => name.hashCode ^ step.hashCode;
}
