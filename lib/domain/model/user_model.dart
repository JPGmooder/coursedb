import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/cart_model.dart';
import 'package:kursach/domain/model/order_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class UserModel with ChangeNotifier {
  static UserModel? _context;
  String login;
  String password;
  String email;
  User? supaUser;
  UserPersonalDataModel? personalData;
  OrganizationModel? organizationModel;
  List<CartModel> carts;
  List<AddressModel>? addresses = [];
  List<OrderModel>? orders = [];

  UserModel._({
    required this.login,
    required this.password,
    required this.email,
    required this.carts,
    this.organizationModel,
    this.addresses,
    this.personalData,
  });

  void addNewCart(CartModel cart) {
    cart.isActive = true;
    carts[carts.indexWhere((element) => element.isActive)].isActive = false;
    carts = [...carts, cart];
    notifyListeners();
  }

  factory UserModel.get(
          {String? login,
          String? password,
          String? email,
          UserPersonalDataModel? pd,
          List<CartModel>? carts,
          List<AddressModel>? addresses,
          OrganizationModel? orgmodel}) =>
      _context ??= UserModel._(
          email: email!,
          login: login!,
          password: password!,
          carts: carts ?? [],
          personalData: pd,
          addresses: addresses,
          organizationModel: orgmodel);

  static clearData() => _context = null;

  UserModel copyWith({
    String? login,
    String? password,
    String? email,
    List<CartModel>? carts,
    UserPersonalDataModel? personalData,
  }) {
    return UserModel._(
      carts: carts ?? this.carts,
      login: login ?? this.login,
      password: password ?? this.password,
      email: email ?? this.email,
      personalData: personalData ?? this.personalData,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userlogin': login,
      'userpassword': password,
      'emailaddress': email,
      'personaldatum': personalData?.toMap(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel._(
      carts: map['client']['carts'] ?? [],
      login: map['userlogin'] ?? '',
      password: map['userpassword'] ?? '',
      email: map['emailaddress'] ?? '',
      personalData: UserPersonalDataModel.fromMap(map['personaldatum']),
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserModel &&
        other.login == login &&
        other.password == password &&
        other.email == email &&
        other.personalData == personalData;
  }

  @override
  int get hashCode {
    return login.hashCode ^
        password.hashCode ^
        email.hashCode ^
        personalData.hashCode;
  }
}

class UserPersonalDataModel {
  String name;
  String fname;
  String? patronymic;
  DateTime dateOfBirth;
  String mobileNumber;
  UserPersonalDataModel({
    required this.name,
    required this.fname,
    this.patronymic,
    required this.dateOfBirth,
    required this.mobileNumber,
  });

  UserPersonalDataModel copyWith({
    String? name,
    String? fname,
    String? patronymic,
    DateTime? dateOfBirth,
    String? mobileNumber,
  }) {
    return UserPersonalDataModel(
      name: name ?? this.name,
      fname: fname ?? this.fname,
      patronymic: patronymic ?? this.patronymic,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      mobileNumber: mobileNumber ?? this.mobileNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'personalname': name,
      'personallname': fname,
      'personalpatronymic': patronymic,
      'personaldateofbirth': dateOfBirth.millisecondsSinceEpoch,
      'personalmobilenumber': mobileNumber,
    };
  }

  factory UserPersonalDataModel.fromMap(Map<String, dynamic> map) {
    return UserPersonalDataModel(
      name: map['personalname'] ?? '',
      fname: map['personallname'] ?? '',
      patronymic: map['personalpatronymic'],
      dateOfBirth: DateTime.parse(map['personaldateofbirth']),
      mobileNumber: map['personalmobilenumber'] ?? '',
    );
  }

  @override
  String toString() {
    return 'UserPersonalDataModel(name: $name, fname: $fname, patronymic: $patronymic, dateOfBirth: $dateOfBirth, mobileNumber: $mobileNumber)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UserPersonalDataModel &&
        other.name == name &&
        other.fname == fname &&
        other.patronymic == patronymic &&
        other.dateOfBirth == dateOfBirth &&
        other.mobileNumber == mobileNumber;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        fname.hashCode ^
        patronymic.hashCode ^
        dateOfBirth.hashCode ^
        mobileNumber.hashCode;
  }
}
