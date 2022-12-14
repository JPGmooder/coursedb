part of 'org_bloc.dart';

@freezed
abstract class OrganizationState with _$OrganizationState {
  const factory OrganizationState.loading() = _$OrganizationLoadingState;
  const factory OrganizationState.initial() = _$OrganizationInitialState;
    const factory OrganizationState.loaded(OrganizationModel model) = _$OrganizationLoadedState;
        const factory OrganizationState.usersOrganizationsLoaded(List<OrganizationModel> models) = _$OrganizationUserOrganizationsLoadedState;

    const factory OrganizationState.stuffLoaded(List<ProductModel> stuff) = _$OrganizationStuffLoadedState;
  const factory OrganizationState.errored(
      String errorTitle, String errorSubtitle) = _$OrganizationErroredState;
      const factory OrganizationState.statisticLoaded(
      Map<ProductModel, Map<DateTime, int>> statisticMap) = _$OrganizationStatisticLoadedState;
}
