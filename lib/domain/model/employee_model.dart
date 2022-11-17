import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:kursach/domain/model/order_model.dart';

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
  OrderModel? currentOrder;
  double deliverField;
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
      currentOrder: map['courierOrder'],
      deliverField: map['deliverarea']?.toDouble() ?? 0.0,
    );
  }
}
