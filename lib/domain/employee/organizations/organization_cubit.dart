import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';
import 'package:kursachdesktop/data/api/service/model/graphclient.dart';
part 'organization_provider.dart';
part 'organization_repository.dart';
part 'organization_states.dart';
part 'organization_cubit.freezed.dart';

class OrganizationCubit extends Cubit<OrganizationState> {
  OrganizationCubit() : super(OrganizationState.initial());

  Future<void> loadOrganizations() async {
    var loadedOrganizations = await OrganizationRepository.loadCompanies();
    emit(OrganizationState.loaded(loadedOrganizations));
  }

  Future<void> changeStatus({
    required List<Map<String, dynamic>> editedOrganizations,
  }) async {
    emit(const OrganizationState.loading());
    await OrganizationRepository.changeCouriers(
        editedStatuses: editedOrganizations);
    emit(const OrganizationState.updated());
  }
}
