part of 'place_searcher_bloc.dart';

@freezed
class PlaceSearcherEvents with _$PlaceSearcherEvents {
  const factory PlaceSearcherEvents.search(String searchString) =
      _$PlaceSearcherSearchEvent;
   const factory PlaceSearcherEvents.searchByCoord(double lon, double lat, bool isInitial) =
      _$PlaceSearcherSearchByCoordEvent;
}
