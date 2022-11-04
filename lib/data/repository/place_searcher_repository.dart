part of '../../../domain/place_searcher/bloc/place_searcher_bloc.dart';

class PlaceSearcherRepository {
  static Future<List<AddressModel>> getPlaces(String querry) async {
    var rawRes = await PlaceSearcherProvider.findPlaceByName(querry);
    var listToReturn = <AddressModel>[];
    for (var element in rawRes.items!) {
      var meta = element.toponymMetadata!.address.addressComponents;
      var street = meta[SearchComponentKind.street];
      var county = meta[SearchComponentKind.area];
      var state = meta[SearchComponentKind.region];
      var city = meta[SearchComponentKind.locality];
      var housenumber = meta[SearchComponentKind.house];
      var entrance = meta[SearchComponentKind.entrance];
      listToReturn.add(AddressModel(
          street: street ?? "",
          housenumber: housenumber ?? "",
          county: county ?? "",
          state: state ?? "",
          city: city ?? "",
          enterance: entrance,
          lat: element.toponymMetadata!.balloonPoint.latitude,
          id_address: -1,
          lon: element.toponymMetadata!.balloonPoint.longitude));
    }
    print(listToReturn);
    return listToReturn;
  }

  static Future<AddressModel> getPlaceByCoord(double lat, double lon) async {
    var rawRes = await PlaceSearcherProvider.findPlaceCoordinates(lat, lon);
    late AddressModel currentModel;

      var meta = rawRes.items!.first.toponymMetadata!.address.addressComponents;
      var street = meta[SearchComponentKind.street];
      var county = meta[SearchComponentKind.area];
      var state = meta[SearchComponentKind.region];
      var city = meta[SearchComponentKind.locality];
      var housenumber = meta[SearchComponentKind.house];
      var entrance = meta[SearchComponentKind.entrance];
      currentModel = AddressModel(
        id_address: -1,
          street: street ?? "",
          housenumber: housenumber ?? "",
          county: county ?? "",
          state: state ?? "",
          city: city ?? "",
          enterance: entrance,
          lat: rawRes.items!.first.toponymMetadata!.balloonPoint.latitude,
          lon: rawRes.items!.first.toponymMetadata!.balloonPoint.longitude);
    
    return currentModel;
  }
}
