import 'dart:convert';

class BrandModel {
  String name;
  String description;
  String imagePath;
  BrandModel({
    required this.name,
    required this.description,
    required this.imagePath,
  });

  BrandModel copyWith({
    String? name,
    String? description,
    String? imagePath,
  }) {
    return BrandModel(
      name: name ?? this.name,
      description: description ?? this.description,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'imagePath': imagePath,
    };
  }

  factory BrandModel.fromMap(Map<String, dynamic> map) {
    return BrandModel(
      name: map['brandname'] ?? '',
      description: map['branddescription'] ?? '',
      imagePath: map['brandlogo'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BrandModel.fromJson(String source) => BrandModel.fromMap(json.decode(source));

  @override
  String toString() => 'BrandModel(name: $name, description: $description, imagePath: $imagePath)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is BrandModel &&
      other.name == name &&
      other.description == description &&
      other.imagePath == imagePath;
  }

  @override
  int get hashCode => name.hashCode ^ description.hashCode ^ imagePath.hashCode;
}
