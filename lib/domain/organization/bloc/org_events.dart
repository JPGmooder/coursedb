part of 'org_bloc.dart';

@freezed
abstract class OrganizationEvent with _$OrganizationEvent {
  const factory OrganizationEvent.createNew(
      {required AddressModel addressModel,
      required String name,
      required double deliveryPrice,
      required Uint8List logoImage,
      required Uint8List cardImage}) = _$OrganizationCreateNewEvent;
}
