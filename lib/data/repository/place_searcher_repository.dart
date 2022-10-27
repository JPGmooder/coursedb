part of '../../../domain/place_searcher/bloc/place_searcher_bloc.dart';

class PlaceSearcherRepository {
  static Future<List<AddressModel>> getPlaces(String querry) async {
    var rawRes = await PlaceSearcherProvider.findPlaceByName(querry);
    var listToReturn = <AddressModel>[];
    var decodedBody = (jsonDecode(rawRes.body) as Map<String, dynamic>);
    for (var address in (decodedBody['features']) as List<dynamic>) {
      listToReturn.add(AddressModel.fromMap(address['properties']));
    }
    print(listToReturn);
    return listToReturn;
  }

  static Future<AddressModel> getPlaceByCoord(double lat, double lon) async {
    var rawRes = await PlaceSearcherProvider.findPlaceCoordinates(lat, lon);
    var listToReturn = <AddressModel>[];
    var decodedBody = (jsonDecode(rawRes.body) as Map<String, dynamic>);
   var addressToReturn =  AddressModel.fromMap(((decodedBody['results']) as List<dynamic>).first);

    return addressToReturn;
  }
}
