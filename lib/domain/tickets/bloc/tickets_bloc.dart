import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:kursach/data/api/model/graphclient.dart';
import 'package:kursach/domain/model/ticket_model.dart';

part 'tickets_event.dart';
part 'tickets_state.dart';
part '../../../data/repository/tickets_repository.dart';
part '../../../data/api/service/tickets_provider.dart';
part 'tickets_bloc.freezed.dart';

class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  TicketsBloc() : super(TicketsState.initial()) {
    on<TicketsEvent>((event, emit) async {
      await event.maybeWhen(
          orElse: () => null,
          addTicket: (content, userLogin) async {
            var loadedTicket = await TicketsRepository.addTicket(
                userLogin: userLogin, content: content);
            emit(TicketsState.added(loadedTicket));
          },
          loadTickets: (userLogin) async {
            var loadedTickets =
                await TicketsRepository.loadTickets(userLogin: userLogin);
            emit(TicketsState.loaded(loadedTickets));
          });
    });
  }
}
