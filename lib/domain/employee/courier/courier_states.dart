part of 'courier_cubit.dart';

@freezed
class CourierState with _$CourierState {
  const factory CourierState.loaded(List<Map<String, dynamic>> employees) =
      _$CourierLoadedState;
  const factory CourierState.errored(String error) = _$CourierErroredState;
  const factory CourierState.loading() = _$CourierLoadingState;
  const factory CourierState.updated() = _$CourierUpdatedState;
  const factory CourierState.initial() = _$CourierInitialState;
}
