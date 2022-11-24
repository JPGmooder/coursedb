part of '../../../domain/auth/bloc/auth_bloc.dart';

class AuthProvider {
  static const String authMut = r'''
mutation Authentificate($p_userlogin: String = "", $p_userpassword: String = "") {
  users_login(args: {p_userlogin: $p_userlogin, p_userpassword: $p_userpassword}, where: {employee: {postname: {_neq: "Курьер"}}}) {
    userlogin
    userpassword
    emailaddress
    employee {
      postname
      status
    }
    personaldatum {
      personaldateofbirth
      personallname
      personalmobilenumber
      personalname
      personalpatronymic
      userlogin
    }
  }
}
''';

  static Future<QueryResult?> authUser(String login, String password) async {
    var response = await AppsGraphClient.client
        .query(
          QueryOptions(
              document: gql(authMut),
              variables: {'p_userlogin': login, 'p_userpassword': password}),
        )
        .timeout(Duration(seconds: 10),
            onTimeout: () => throw Exception(
                "Невозможно получить ответ от сервера, проверьте интернет-соединение и повторите попытку"));
    return response;
  }
}
