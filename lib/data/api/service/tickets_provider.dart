part of '../../../domain/tickets/bloc/tickets_bloc.dart';

class TicketsProvider {
  static QueryOptions _loadUsersTickers(String userlogin) {
    String query = r'''query MyQuery($_login: String!) {
  supportrequest(where: {userlogin: {_eq: $_login}}, order_by: {supportrequestdate: desc}) {
    id_supportrequest
    supportrequestanswer
    supportrequestcontent
    supportrequestdate
    supportrequeststatusname
  }
}

''';
    return QueryOptions(
        document: gql(query),
        variables: {"_login": userlogin},
        fetchPolicy: FetchPolicy.networkOnly);
  }

  static MutationOptions _addNewTicket(String userlogin, String content) {
    String query = r'''
mutation MyMutation($p_userlogin: String!, $ticketcontent: String!) {
  addnewticket(args: {p_userlogin: $p_userlogin, ticketcontent: $ticketcontent}) {
    userlogin
    supportrequeststatusname
    supportrequestdate
    supportrequestcontent
    supportrequestanswer
    id_supportrequest
  }
}
''';
    return MutationOptions(
        document: gql(query),
        variables: {"p_userlogin": userlogin, "ticketcontent": content},
        fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult> addTicket(
      {required String userLogin, required String content}) async {
    var response =
        await AppsGraphClient.client.mutate(_addNewTicket(userLogin, content));
    return response;
  }

  static Future<QueryResult> loadTickets({required String userLogin}) async {
    var response =
        await AppsGraphClient.client.query(_loadUsersTickers(userLogin));
    return response;
  }
}
