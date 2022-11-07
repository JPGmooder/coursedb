import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/auth/bloc/auth_bloc.dart';
import 'package:kursach/domain/model/address_model.dart';
import 'package:kursach/domain/model/organization_model.dart';
import 'package:kursach/domain/model/product_model.dart';
import 'package:kursach/domain/model/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:translit/translit.dart';

part 'org_events.dart';
part 'org_states.dart';
part '../../../data/api/service/org_provider.dart';
part '../../../data/repository/org_repository.dart';
part 'org_bloc.freezed.dart';

class OrganizationBloc extends Bloc<OrganizationEvent, OrganizationState> {
  OrganizationBloc() : super(OrganizationState.initial()) {
    on<OrganizationEvent>((event, emit) async {
      emit(const OrganizationState.loading());
      await event.maybeWhen(
        orElse: () => null,
        createNew:
            (addressModel, name, deliveryPrice, logoImage, cardImage) async {
          
            var isValidName =
                await OrganiztionRepository.checkOrganiztion(name);
            if (!isValidName) {
              emit(OrganizationState.errored('Ошибка',
                  'Данное название организации уже занято, повторите попытку'));
            } else {
              var address = await AuthRepository.addAddressData(
                  model: addressModel, userID: null);
              var loadedOrg = await OrganiztionRepository.addNewCompany(
                  companyName: name,
                  status: "",
                  type: "",
                  addressId: address.id_address,
                  deliveryPrice: deliveryPrice.toInt());
              await OrganizationProvider.loadCardsInfo(
                  cardImage, logoImage, loadedOrg.idCompany);
              emit(OrganizationState.loaded(loadedOrg));
            }
          
        },
      );
    });
  }
}
