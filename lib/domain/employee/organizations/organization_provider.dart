part of 'organization_cubit.dart';

class OrganizationProvider {
  static QueryOptions _loadOrganizationInfo() {
    String query = r'''
query MyQuery {
  company {
    address {
      addressstreetname
      addressstate
      addressname
      addresslon
      addresslat
      addressfloor
      addressentrance
      addresscounty
      addresscity
      addressbuildingnum
      addressapartament
    }
    companydeliveryprice
    companyname
    companystatusname
    companytypename
    id_company
  }
  client(where: {id_company: {_is_null: false}}) {
    userlogin
    id_company
    user {
      banlist {
        userlogin
      }
      personaldatum {
        personaldateofbirth
        personallname
        personalmobilenumber
        personalname
        personalpatronymic
      }
    }
  }
}

''';
    return QueryOptions(
        document: gql(query), fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult<Object?>> loadCouriers() async {
    var response = await AppsGraphClient.client.query(_loadOrganizationInfo());
    return response;
  }

  static MutationOptions _updateOrganizationStatus(
      {required String statusName, required String userLogin}) {
    String query = r'''
mutation MyMutation($p_statusname: String!, $p_userlogin: String!) {
  company_changestatus(args: {p_statusname: $p_statusname, p_userlogin: $p_userlogin}) {
    id_company
  }
}
''';
    return MutationOptions(
        document: gql(query),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {"p_statusname": statusName, "p_userlogin": userLogin});
  }

  static Future<QueryResult<Object?>> updateOrganizationStatus(
      {required String statusName, required String userLogin}) async {
    var response = await AppsGraphClient.client.mutate(
        _updateOrganizationStatus(
            statusName: statusName, userLogin: userLogin));
    return response;
  }
}
