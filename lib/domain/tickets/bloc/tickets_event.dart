part of 'tickets_bloc.dart';

@freezed
abstract class TicketsEvent implements _$TicketsEvent {
  const factory TicketsEvent.loadTickets(String userLogin) =
      _$TicketLoadTicketsEvent;
  const factory TicketsEvent.addTicket({required String content, required String userLogin}) =
      _$TicketAddTicketEvent;
}
