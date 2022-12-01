import 'dart:convert';

import 'package:kursach/domain/model/order_model.dart';

class CourierStatistic {
  DateTime deliverTime;
  DateTime acceptTime;
  double distance;
  OrderModel orderModel;
  String userLogin;
  String cityName;
  CourierStatistic({
    required this.deliverTime,
    required this.acceptTime,
    required this.distance,
    required this.orderModel,
    required this.userLogin,
    required this.cityName,
  });

  CourierStatistic copyWith({
    DateTime? deliverTime,
    DateTime? acceptTime,
    double? distance,
    OrderModel? orderModel,
    String? userLogin,
    String? cityName,
  }) {
    return CourierStatistic(
      deliverTime: deliverTime ?? this.deliverTime,
      acceptTime: acceptTime ?? this.acceptTime,
      distance: distance ?? this.distance,
      orderModel: orderModel ?? this.orderModel,
      userLogin: userLogin ?? this.userLogin,
      cityName: cityName ?? this.cityName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'deliverTime': deliverTime.millisecondsSinceEpoch,
      'acceptTime': acceptTime.millisecondsSinceEpoch,
      'distance': distance,
      'orderModel': orderModel.toMap(),
      'userLogin': userLogin,
      'cityName': cityName,
    };
  }

  factory CourierStatistic.fromMap(Map<String, dynamic> map) {
    return CourierStatistic(
      deliverTime: DateTime.parse(map['delivertime']).toLocal(),
      acceptTime: DateTime.parse(map['accepttime']).toLocal(),
      distance: map['distance']?.toDouble() ?? 0.0,
      orderModel: OrderModel.fromMap(map['order']),
      userLogin: map['userlogin'] ?? '',
      cityName: map['order']['address']['addresscity'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory CourierStatistic.fromJson(String source) =>
      CourierStatistic.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CourierStatistic(deliverTime: $deliverTime, acceptTime: $acceptTime, distance: $distance, orderModel: $orderModel, userLogin: $userLogin, cityName: $cityName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CourierStatistic &&
        other.deliverTime == deliverTime &&
        other.acceptTime == acceptTime &&
        other.distance == distance &&
        other.orderModel == orderModel &&
        other.userLogin == userLogin &&
        other.cityName == cityName;
  }

  @override
  int get hashCode {
    return deliverTime.hashCode ^
        acceptTime.hashCode ^
        distance.hashCode ^
        orderModel.hashCode ^
        userLogin.hashCode ^
        cityName.hashCode;
  }
}
