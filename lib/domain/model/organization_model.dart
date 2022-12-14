import 'dart:convert';

import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/product_model.dart';

class OrganizationModel {
  int idCompany;
  int companyDeliveryPrice;
  String companyName;
  String companyStatusName;
  String companyTypeName;
  AddressModel addressModel;
  List<ProductModel> loadedProduct = [];
  OrganizationModel({
    List<ProductModel>? loadedProduct,
    required this.idCompany,
    required this.companyDeliveryPrice,
    required this.companyName,
    required this.companyStatusName,
    required this.companyTypeName,
    required this.addressModel,
  }) {
    if (loadedProduct != null) {
      this.loadedProduct = loadedProduct;
    }
  }

  OrganizationModel copyWith({
    int? idCompany,
    int? companyDeliveryPrice,
    String? companyName,
    String? companyImagePath,
    String? companyLogoPath,
    String? companyStatusName,
    String? companyTypeName,
    AddressModel? addressModel,
  }) {
    return OrganizationModel(
      idCompany: idCompany ?? this.idCompany,
      companyDeliveryPrice: companyDeliveryPrice ?? this.companyDeliveryPrice,
      companyName: companyName ?? this.companyName,
      companyStatusName: companyStatusName ?? this.companyStatusName,
      companyTypeName: companyTypeName ?? this.companyTypeName,
      addressModel: addressModel ?? this.addressModel,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'idCompany': idCompany,
      'companydeliveryprice': companyDeliveryPrice,
      'companyname': companyName,
      'companystatusname': companyStatusName,
      'companytypename': companyTypeName,
      'address': addressModel.toMap(),
    };
  }

  factory OrganizationModel.fromMap(Map<String, dynamic> map) {
    return OrganizationModel(
      idCompany: map['id_company']?.toInt() ?? 0,
      companyDeliveryPrice: map['companydeliveryprice']?.toInt() ?? 0,
      companyName: map['companyname'] ?? '',
      companyStatusName: map['companystatusname'] ?? '',
      companyTypeName: map['companytypename'] ?? '',
      addressModel: AddressModel.fromMap(map['address']),
    );
  }
}
