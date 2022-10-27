import 'dart:convert';

class AddressModel {
  String? name;
  String street;
  String housenumber;
  String county;
  String state;
  String city;
  String? enterance;
  String? apartament;
  String? floor;
  double? lon;
  double? lat;
  AddressModel({
    this.name,
    this.apartament,
    this.enterance,
    this.floor,
    required this.street,
    required this.housenumber,
    required this.county,
    required this.state,
    required this.city,
    this.lon,
    this.lat,
  });

  AddressModel copyWith({
    String? name,
    String? street,
    String? housenumber,
    String? county,
    String? state,
    String? city,
    double? lon,
    double? lat,
  }) {
    return AddressModel(
      name: name ?? this.name,
      street: street ?? this.street,
      housenumber: housenumber ?? this.housenumber,
      county: county ?? this.county,
      state: state ?? this.state,
      city: city ?? this.city,
      lon: lon ?? this.lon,
      lat: lat ?? this.lat,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'street': street,
      'housenumber': housenumber,
      'county': county,
      'state': state,
      'city': city,
      'lon': lon,
      'lat': lat,
    };
  }

  factory AddressModel.fromMap(Map<String, dynamic> map) {
    return AddressModel(
      name: map['name'],
      street: map['street'] ?? '',
      housenumber: map['housenumber'] ?? '',
      county: map['county'] ?? '',
      state: map['state'] ?? '',
      city: map['city'] ?? '',
      lon: map['lon']?.toDouble(),
      lat: map['lat']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source));

  @override
  String toString() {
    return '$county $city ул. $street $housenumber';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AddressModel &&
        other.name == name &&
        other.street == street &&
        other.housenumber == housenumber &&
        other.county == county &&
        other.state == state &&
        other.city == city &&
        other.lon == lon &&
        other.lat == lat;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        street.hashCode ^
        housenumber.hashCode ^
        county.hashCode ^
        state.hashCode ^
        city.hashCode ^
        lon.hashCode ^
        lat.hashCode;
  }
}
