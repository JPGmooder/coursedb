import 'dart:convert';

class AddressModel {
  int id_address;
  bool isActive = true;
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
    required this.id_address,
    required this.street,
    required this.housenumber,
    required this.county,
    required this.state,
    required this.city,
    this.lon,
    this.lat,
  });

  AddressModel copyWith(
      {int? id_address,
      String? name,
      String? street,
      String? housenumber,
      String? county,
      String? state,
      String? city,
      double? lon,
      double? lat,
      String? enterance,
      String? apartament,
      String? floor}) {
    return AddressModel(
        id_address: id_address ?? this.id_address,
        name: name ?? this.name,
        street: street ?? this.street,
        housenumber: housenumber ?? this.housenumber,
        county: county ?? this.county,
        state: state ?? this.state,
        city: city ?? this.city,
        lon: lon ?? this.lon,
        lat: lat ?? this.lat,
        enterance: enterance,
        floor: floor,
        apartament: apartament);
  }

  Map<String, dynamic> toMap() {
    return {
      'id_address': id_address,
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
      id_address: map['id_address'],
      name: map['addressname'],
      street: map['addressstreetname'] ?? '',
      housenumber: map['addressbuildingnum'] ?? '',
      county: map['addresscounty'] ?? '',
      state: map['addressstate'] ?? '',
      city: map['addresscity'] ?? '',
      lon: map['addresslon']?.toDouble(),
      lat: map['addresslat']?.toDouble(),
      apartament: map['addressapartament'] ?? '',
      enterance: map['addressentrance'] ?? '',
      floor: map['addressfloor'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory AddressModel.fromJson(String source) =>
      AddressModel.fromMap(json.decode(source));

  @override
  String toString() {
    return '$street $housenumber';
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
