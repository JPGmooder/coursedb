part of 'place_searcher_bloc.dart';

@freezed
class PlaceSearcherStates with _$PlaceSearcherStates {
  const factory PlaceSearcherStates.initial() = _$PlaceSearcherInitialState;
  const factory PlaceSearcherStates.loading() = _$PlaceSearcherLoadingState;
    const factory PlaceSearcherStates.errored() = _$PlaceSearcherErroredState;

  const factory PlaceSearcherStates.searchedCoords(AddressModel place, bool isInitial) =
      _$PlaceSearcherSearchedCoordslState;
  const factory PlaceSearcherStates.searched(List<AddressModel> places) =
      _$PlaceSearcherSearchedState;
}
