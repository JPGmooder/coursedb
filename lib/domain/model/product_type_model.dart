import 'dart:convert';

import 'package:flutter/animation.dart';

class ProductTypeModel {
  String label;
  Color color;
  bool isSelected;
  bool isNew;
  ProductTypeModel({
    this.isNew = false,
    required this.label,
    required this.color,
    required this.isSelected,
  });

  ProductTypeModel copyWith({
    String? label,
    Color? color,
    bool? isSelected,
  }) {
    return ProductTypeModel(
      label: label ?? this.label,
      color: color ?? this.color,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'producttypename': label,
      'color': color.value,
      'isSelected': isSelected,
    };
  }

  factory ProductTypeModel.fromMap(Map<String, dynamic> map) {
    return ProductTypeModel(
      label: map['producttypename'] ?? '',
      color: Color(map['color']),
      isSelected: map['isSelected'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductTypeModel.fromJson(String source) =>
      ProductTypeModel.fromMap(json.decode(source));

  @override
  String toString() =>
      'ProductTypeModel(label: $label, color: $color, isSelected: $isSelected)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ProductTypeModel &&
        other.label == label &&
        other.color == color &&
        other.isSelected == isSelected;
  }

  @override
  int get hashCode => label.hashCode ^ color.hashCode ^ isSelected.hashCode;
}
