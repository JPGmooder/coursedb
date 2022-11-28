part of 'support_cubit.dart';

class SupportProvider {
  static QueryOptions _loadTickets() {
    String query = r'''
query MyQuery {
  supportrequest(order_by: {supportrequestdate: desc}) {
    userlogin
    supportrequeststatusname
    supportrequestdate
    supportrequestcontent
    supportrequestanswer
    id_supportrequest
    client {
      user {
        banlist {
          userlogin
        }
      }
    }
  }
}
''';
    return QueryOptions(
        document: gql(query), fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult<Object?>> loadTickets() async {
    var response = await AppsGraphClient.client.query(_loadTickets());
    return response;
  }

  static MutationOptions _updateTicket(
      int id, String statusName, String? answer) {
    String query;
    if (answer == null) {
      query = r'''
mutation MyMutation($_id: Int!, $supportrequeststatusname: String!) {
  update_supportrequest(where: {id_supportrequest: {_eq: $_id}}, _set: {supportrequeststatusname: $supportrequeststatusname}) {
    returning {
      userlogin
    }
  }
}

''';
    } else {
      query =
          r'''mutation MyMutation($_id: Int!, $supportrequeststatusname: String!, $supportrequestanswer: String!) {
  update_supportrequest(where: {id_supportrequest: {_eq: $_id}}, _set: {supportrequeststatusname: $supportrequeststatusname, supportrequestanswer: $supportrequestanswer}) {
    returning {
      userlogin
    }
  }
}
''';
    }
    return MutationOptions(
        document: gql(query),
        variables: answer == null
            ? {
                "_id": id,
                "supportrequeststatusname": statusName,
              }
            : {
                "_id": id,
                "supportrequeststatusname": statusName,
                "supportrequestanswer": answer
              },
        fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult<Object?>> updateTicket(
      {required int ticketId,
      required String status,
      required String? answer}) async {
    var response = await AppsGraphClient.client
        .mutate(_updateTicket(ticketId, status, answer));
    return response;
  }
}
