part of 'org_bloc.dart';

enum sortType { descending, ascending, none }

@freezed
abstract class OrganizationEvent with _$OrganizationEvent {
  const factory OrganizationEvent.createNew(
      {required AddressModel addressModel,
      required String name,
      required String type,
      required double deliveryPrice,
      required Uint8List logoImage,
      required Uint8List cardImage}) = _$OrganizationCreateNewEvent;
  const factory OrganizationEvent.loadStuff({
    required int organizationId,
    required sortType sort,
    String? category,
    String? brand,
    String? name,
  }) = _$OrganizationLoadStuffEvent;
  const factory OrganizationEvent.loadOrganizations({
    required sortType sort,
    required AddressModel address,
    String? category,
    String? brand,
    String? name,
  }) = _$OrganizationLoadOrganizationsEvent;

  const factory OrganizationEvent.loadOrganizationStatistic({
    required int companyId
  }) = _$OrganizationLoadStatisticEvent;
}
