import 'dart:convert';

import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:http/http.dart' as http;

import 'package:bloc/bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

part 'place_searcher_events.dart';
part 'place_searcher_states.dart';
part '../../../data/api/service/place_searcher_provider.dart';
part '../../../data/repository/place_searcher_repository.dart';

part 'place_searcher_bloc.freezed.dart';

class PlaceSearcherBloc extends Bloc<PlaceSearcherEvents, PlaceSearcherStates> {
  PlaceSearcherBloc() : super(PlaceSearcherStates.initial()) {
    on<PlaceSearcherEvents>((event, emit) async {
      emit(const PlaceSearcherStates.loading());
      await event.maybeWhen(
          orElse: () => null,
          searchByCoord: (lon, lat, isInitial) async {
            var place = await PlaceSearcherRepository.getPlaceByCoord(lat, lon);
            emit(PlaceSearcherStates.searchedCoords(place, isInitial));
          },
          
          search: (querry) async {
            var places = await PlaceSearcherRepository.getPlaces(querry);
            emit(PlaceSearcherStates.searched(places));
          });
    });
  }
}
