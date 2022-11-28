part of 'support_cubit.dart';

class SupportRepository {
  static Future<List<Map<String, dynamic>>> loadTickets() async {
    var loadedResponse = await SupportProvider.loadTickets();
    if (loadedResponse.exception != null) {
      throw Exception(loadedResponse.exception);
    }
    var parsedMap = (loadedResponse.data!['supportrequest'] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .where((element) => element['client']['user']['banlist'] == null)
        .map((e) => {
              'userlogin': e['userlogin'],
              'status': e['supportrequeststatusname'],
              'content': e['supportrequestcontent'],
              'date': e['supportrequestdate'],
              'answer': e['supportrequestanswer'],
              'id': e['id_supportrequest']
            })
        .toList();
    return parsedMap;
  }

  static Future<Map<String, dynamic>> changeTickets({
    required List<Map<String, dynamic>> editedTickets,
  }) async {
    var editCompleter = Completer<List<Map<String, dynamic>>>();
    if (editedTickets.isEmpty) {
      editCompleter.complete([]);
    }
    List<Map<String, dynamic>> updatedTicketsResult = [];
    for (var element in editedTickets) {
      SupportProvider.updateTicket(
              answer: element['answer'],
              ticketId: element['id'],
              status: element['status'])
          .then((value) {
        if (value.hasException) {
          throw Exception(value.exception.toString());
        }
        updatedTicketsResult.add(value.data!['update_supportrequest']);
        if (updatedTicketsResult.length == editedTickets.length) {
          editCompleter.complete(updatedTicketsResult);
        }
      });
    }
    var completed = await editCompleter.future;
    return {"edited": completed};
  }
}
