part of 'users_cubit.dart';

class UsersProvider {
  static QueryOptions _loadUsers() {
    String query = r'''
query MyQuery {
  users(where: {userlogin: {_neq: "Admin"}}) {
    emailaddress
    userlogin
    personaldatum {
      personaldateofbirth
      personallname
      personalmobilenumber
      personalname
      personalpatronymic
    }
  }
}

''';
    return QueryOptions(document: gql(query));
  }

  static Future<QueryResult<Object?>> loadUsers() async {
    var response = await AppsGraphClient.client.query(_loadUsers());
    return response;
  }
}
