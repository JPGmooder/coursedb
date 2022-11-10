import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:kursach/domain/model/brand_model.dart';
import 'package:kursach/domain/model/product_type_model.dart';

class ProductModel {
  int productId;
  String description;
  double price;
  String name;
  List<String> photoAlbum;
  String productType;
  int quantity;
  BrandModel brand;
  ProductTypeModel category;
  ProductTypeModel? categoryS;
  ProductTypeModel? categoryT;
  ProductModel({
    required this.productId,
    required this.description,
    required this.price,
    required this.name,
    required this.photoAlbum,
    required this.productType,
    required this.quantity,
    required this.brand,
    required this.category,
    this.categoryS,
    this.categoryT,
  });

  ProductModel copyWith({
    int? productId,
    String? description,
    double? price,
    String? name,
    List<String>? photoAlbum,
    String? productType,
    int? quantity,
    BrandModel? brand,
    String? brandLogoPath,
    ProductTypeModel? category,
    ProductTypeModel? categoryS,
    ProductTypeModel? categoryT,
  }) {
    return ProductModel(
      productId: productId ?? this.productId,
      description: description ?? this.description,
      price: price ?? this.price,
      name: name ?? this.name,
      photoAlbum: photoAlbum ?? this.photoAlbum,
      productType: productType ?? this.productType,
      quantity: quantity ?? this.quantity,
      brand: brand ?? this.brand,
      category: category ?? this.category,
      categoryS: categoryS ?? this.categoryS,
      categoryT: categoryT ?? this.categoryT,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'productId': productId,
      'description': description,
      'price': price,
      'name': name,
      'photoAlbum': photoAlbum,
      'productType': productType,
      'quantity': quantity,
      'brand': brand,
      'categoryName': category,
      'categoryNameS': categoryS,
      'categoryNameT': categoryT,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      productId: map['id_product']?.toInt() ?? 0,
      description: map['productdescription'] ?? '',
      price: map['productprice']?.toDouble() ?? 0.0,
      name: map['productname'] ?? '',
      photoAlbum: ((map['productalbum']) as List<Object?>).cast<String>(),
      productType: map['productType'] ?? '',
      quantity: map['productquantity']?.toInt() ?? 0,
      brand: BrandModel.fromMap(map['brand']),
      category: ProductTypeModel.fromMap(map['producttype']!),
      categoryS: map['producttypeByProducttypenames'] != null
          ? ProductTypeModel.fromMap(map['producttypeByProducttypenames'])
          : null,
      categoryT: map['producttypeByProducttypenamet'] != null
          ? ProductTypeModel.fromMap(map['producttypeByProducttypenamet'])
          : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source));

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductModel &&
        other.productId == productId &&
        other.description == description &&
        other.price == price &&
        other.name == name &&
        listEquals(other.photoAlbum, photoAlbum) &&
        other.productType == productType &&
        other.quantity == quantity &&
        other.brand == brand &&
        other.category == category &&
        other.categoryS == categoryS &&
        other.categoryT == categoryT;
  }

  @override
  int get hashCode {
    return productId.hashCode ^
        description.hashCode ^
        price.hashCode ^
        name.hashCode ^
        photoAlbum.hashCode ^
        productType.hashCode ^
        quantity.hashCode ^
        brand.hashCode ^
        category.hashCode ^
        categoryS.hashCode ^
        categoryT.hashCode;
  }
}
