part of '../../../domain/tickets/bloc/tickets_bloc.dart';

class TicketsRepository {
  static Future<List<TicketModel>> loadTickets(
      {required String userLogin}) async {
    var loadedResponse =
        await TicketsProvider.loadTickets(userLogin: userLogin);
    if (loadedResponse.hasException) {
      throw loadedResponse.exception!;
    }

    var parsedList = (loadedResponse.data!['supportrequest'] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .map((e) => TicketModel.fromMap(e))
        .toList();
    return parsedList;
  }

  static Future<TicketModel> addTicket(
      {required String userLogin, required String content}) async {
    var loadedResponse =
        await TicketsProvider.addTicket(userLogin: userLogin, content: content);
    if (loadedResponse.hasException) {
      throw loadedResponse.exception!;
    }

    var parsedModel = TicketModel.fromMap(
        (loadedResponse.data!['addnewticket'] as Map<String, dynamic>));
    return parsedModel;
  }
}
