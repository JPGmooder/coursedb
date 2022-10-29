part of '../../../domain/place_searcher/bloc/place_searcher_bloc.dart';

class PlaceSearcherProvider {
  static Future<SearchSessionResult> findPlaceByName(String querry) async {
    var searcher = YandexSearch.searchByText(
        searchText: querry,
        geometry: Geometry.fromPoint(Point(latitude: 36, longitude: 36)),
        searchOptions: SearchOptions());

    var result = await searcher.result;
 
    return result;
  }

  static Future<SearchSessionResult> findPlaceCoordinates(
      double lat, double lon) async {
     var searcher =    YandexSearch.searchByPoint(
     point: Point(latitude: lat, longitude: lon),
        searchOptions: SearchOptions());
        
    // var response = await http
    //     .get(
    //       Uri.https("api.geoapify.com", "v1/geocode/reverse", {
    //         "lat": lat.toString(),
    //         "lon": lon.toString(),
    //         "format": "json",
    //         "apiKey": "8df8c1280c844bff9aef4a5a663f8995"
    //       }),
    //     )
    //     .timeout(Duration(seconds: 5));
    return await searcher.result;
  }
}
