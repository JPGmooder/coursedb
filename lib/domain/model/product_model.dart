import 'dart:convert';

import 'package:collection/collection.dart';

class ProductModel {
  int productId;
  String description;
  double price;
  String name;
  List<String> photoAlbum;
  String productType;
  int quantity;
  String brandName;
  String brandLogoPath;
  ProductModel({
    required this.productId,
    required this.description,
    required this.price,
    required this.name,
    required this.photoAlbum,
    required this.productType,
    required this.quantity,
    required this.brandName,
    required this.brandLogoPath,
  });

  ProductModel copyWith({
    int? productId,
    String? description,
    double? price,
    String? name,
    List<String>? photoAlbum,
    String? productType,
    int? quantity,
    String? brandName,
    String? brandLogoPath,
  }) {
    return ProductModel(
      productId: productId ?? this.productId,
      description: description ?? this.description,
      price: price ?? this.price,
      name: name ?? this.name,
      photoAlbum: photoAlbum ?? this.photoAlbum,
      productType: productType ?? this.productType,
      quantity: quantity ?? this.quantity,
      brandName: brandName ?? this.brandName,
      brandLogoPath: brandLogoPath ?? this.brandLogoPath,
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
      'brandName': brandName,
      'brandLogoPath': brandLogoPath,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      productId: map['productId']?.toInt() ?? 0,
      description: map['description'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      name: map['name'] ?? '',
      photoAlbum: List<String>.from(map['photoAlbum']),
      productType: map['productType'] ?? '',
      quantity: map['quantity']?.toInt() ?? 0,
      brandName: map['brandName'] ?? '',
      brandLogoPath: map['brandLogoPath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) => ProductModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductModel(productId: $productId, description: $description, price: $price, name: $name, photoAlbum: $photoAlbum, productType: $productType, quantity: $quantity, brandName: $brandName, brandLogoPath: $brandLogoPath)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is ProductModel &&
      other.productId == productId &&
      other.description == description &&
      other.price == price &&
      other.name == name &&
      listEquals(other.photoAlbum, photoAlbum) &&
      other.productType == productType &&
      other.quantity == quantity &&
      other.brandName == brandName &&
      other.brandLogoPath == brandLogoPath;
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
      brandName.hashCode ^
      brandLogoPath.hashCode;
  }
}
