import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql/client.dart';
import 'package:kursachdesktop/data/api/service/model/graphclient.dart';

part 'support_provider.dart';
part 'support_repository.dart';
part 'support_states.dart';
part 'support_cubit.freezed.dart';

class SupportCubit extends Cubit<SupportState> {
  SupportCubit() : super(SupportState.initial());

  Future<void> loadTickets() async {
    var loadedTickets = await SupportRepository.loadTickets();
    emit(SupportState.loaded(loadedTickets));
  }

  Future<void> updateTicket(
      {required List<Map<String, dynamic>> editedRows}) async {
    await SupportRepository.changeTickets(editedTickets: editedRows);
    emit(SupportState.changed());
  }
}
