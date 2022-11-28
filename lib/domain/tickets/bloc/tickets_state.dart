part of 'tickets_bloc.dart';

@freezed
abstract class TicketsState implements _$TicketsState {
  const factory TicketsState.initial() = _$TicketsInitialState;
  const factory TicketsState.errored(String error) = _$TicketsErroredState;
  const factory TicketsState.loaded(List<TicketModel> loadedTickets) =
      _$TicketsLoadedState;
  const factory TicketsState.added(TicketModel loadedTicket) =
      _$TicketsAddedState;

  const factory TicketsState.loading(bool isMass) = _$TicketsLoadingState;
}
