part of '../../../domain/place_searcher/bloc/place_searcher_bloc.dart';

class PlaceSearcherProvider {
  static Future<http.Response> findPlaceByName(String querry) async {
    var response = await http
        .get(
          Uri.https("api.geoapify.com", "v1/geocode/autocomplete",
              {"text": querry, "apiKey": "8df8c1280c844bff9aef4a5a663f8995"}),
        )
        .timeout(Duration(seconds: 5));
    return response;
  }

  static Future<http.Response> findPlaceCoordinates(
      double lat, double lon) async {
    var response = await http
        .get(
          Uri.https("api.geoapify.com", "v1/geocode/reverse", {
            "lat": lat.toString(),
            "lon": lon.toString(),
            "format": "json",
            "apiKey": "8df8c1280c844bff9aef4a5a663f8995"
          }),
        )
        .timeout(Duration(seconds: 5));
    return response;
  }
}
