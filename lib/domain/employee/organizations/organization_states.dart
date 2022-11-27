part of 'organization_cubit.dart';

@freezed
class OrganizationState with _$OrganizationState {
  const factory OrganizationState.loaded(List<Map<String, dynamic>> organizations) =
      _$OrganizationStateLoadedState;
  const factory OrganizationState.errored(String error) = _$OrganizationStateErroredState;
  const factory OrganizationState.loading() = _$OrganizationStateLoadingState;
  const factory OrganizationState.updated() = _$OrganizationStateUpdatedState;
  const factory OrganizationState.initial() = _$OrganizationStateInitialState;
}
