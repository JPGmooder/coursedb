part of '../../../domain/auth/bloc/auth_bloc.dart';

class AuthProvider {
  static const String authMut = r'''
mutation Authentificate($login: String!,  $password: String!) {
  users_login(args: {p_userlogin: $login, p_userpassword: $password}){
    userlogin,
    emailaddress,
    userpassword,
     personaldatum{
      personalname
      personallname
      personalpatronymic
      personalmobilenumber
      personaldateofbirth
    }
  }
}
''';

  static const String regMut = r'''
mutation RegUser($login: String!, $password: String!, $email: String!) {
  users_register(args: {p_useremail: $email, p_userlogin: $login, p_userpassword: $password}){
    userlogin,
    emailaddress,
    userpassword,
  }
}

''';

  static const String addPD = r'''

mutation addPD($p_personaldateofbirth : date, $p_personallname : String!, $p_personalmobilenumber : String!, $p_personalname : String!, $p_personalpatronymic : String, $p_userlogin : String) {
  personaldata_add(args: {p_personaldateofbirth: $p_personaldateofbirth, p_personallname: $p_personallname, p_personalmobilenumber: $p_personalmobilenumber, p_personalname: $p_personalname, p_personalpatronymic: $p_personalpatronymic, p_userlogin: $p_userlogin}){
    userlogin
  }
}


''';

  static Future<QueryResult?> authUser(String login, String password) async {
    var response = await AppsGraphClient.client
        .query(
          QueryOptions(
              document: gql(authMut),
              variables: {'login': login, 'password': password}),
        )
        .timeout(Duration(seconds: 10),
            onTimeout: () => throw Exception(
                "Невозможно получить ответ от сервера, проверьте интернет-соединение и повторите попытку"));
    return response;
  }

  static Future<QueryResult?> regUser(
      String login, String password, String email) async {
    var response = await AppsGraphClient.client
        .query(QueryOptions(
            document: gql(regMut),
            variables: {'login': login, 'password': password, 'email': email}))
        .timeout(Duration(seconds: 10),
            onTimeout: () => throw Exception(
                "Невозможно получить ответ от сервера, проверьте интернет-соединение и повторите попытку"));
    return response;
  }

  // static Future<QueryResult?> addPersonalInfo(String name, String lname,
  //     String? patronymic, DateTime birthday, String mobileNumber) async {
  //   var response = await AppsGraphClient.client
  //       .query(QueryOptions(
  //           document: gql(regMut),
  //           variables: {'login': login, 'password': password, 'email': email}))
  //       .timeout(Duration(seconds: 10),
  //           onTimeout: () => throw Exception(
  //               "Невозможно получить ответ от сервера, проверьте интернет-соединение и повторите попытку"));
  //   return response;
  // }
}
