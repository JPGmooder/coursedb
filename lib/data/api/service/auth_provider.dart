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
    personalname,
    personallname,
    personalpatronymic,
    personaldateofbirth,
    personalmobilenumber
  }
}


''';

  static MutationOptions getAddressAddMutationOptions(
      {String? floor,
      String? apartament,
      String? enterance,
      String? addressName,
      String? userID,
      required String buildingNum,
      required String city,
      required String addressStreetName}) {
    String document = r'''
mutation MyMutation($p_addressstreetname: String!, $p_userlogin: String, $p_addressname: String!, $p_addressfloor: String, $p_addressentrance: String, $p_addresscity: String!, $p_addressbuildingnum: String = "-", $p_addressapartament: String) {
  address_addnew(args: {p_addressapartament: $p_addressapartament, p_addressbuildingnum: $p_addressbuildingnum, p_addresscity: $p_addresscity, p_addressentrance: $p_addressentrance, p_addressfloor: $p_addressfloor, p_addressname: $p_addressname, p_addressstreetname: $p_addressstreetname, p_userlogin: $p_userlogin}) {
    addressapartament,
    addressbuildingnum,
    addresscity,
    addressentrance,
    addressfloor,
    addressname,
    addressstreetname
    userlogin
  }
}
''';
    return MutationOptions(document: gql(document), variables: {
      "p_addressapartament": apartament,
      "p_addresscity": city,
      "p_addressbuildingnum": buildingNum,
      "p_addressentrance": enterance,
      "p_addressfloor": floor,
      "p_addressname": addressName,
      "p_addressstreetname": addressStreetName,
      "p_userlogin": userID
    });
  }

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

  static Future<QueryResult?> addPersonalInfo(
      {required String name,
      required String lname,
      String? patronymic,
      required DateTime birthday,
      required String mobileNumber}) async {
    var response = await AppsGraphClient.client
        .mutate(MutationOptions(document: gql(addPD), variables: {
          "p_personaldateofbirth": birthday.toString(),
          "p_personallname": lname,
          "p_personalmobilenumber": mobileNumber,
          "p_personalname": name,
          "p_personalpatronymic": patronymic,
          "p_userlogin": UserModel.get().login
        }))
        .timeout(Duration(seconds: 10),
            onTimeout: () => throw Exception(
                "Невозможно получить ответ от сервера, проверьте интернет-соединение и повторите попытку"));
    return response;
  }

  static Future<QueryResult?> addAddressInfo(
      {String? floor,
      String? apartament,
      String? enterance,
      String? addressName,
      required String buildingNum,
      required String city,
      required String addressStreetName,
      required String userID}) async {
    var response = await AppsGraphClient.client
        .mutate(getAddressAddMutationOptions(
            buildingNum: buildingNum,
            city: city,
            addressStreetName: addressStreetName,
            floor: floor,
            addressName: addressName,
            enterance: enterance,
            apartament: apartament,
            userID: userID))
        .timeout(Duration(seconds: 10),
            onTimeout: () => throw Exception(
                "Невозможно получить ответ от сервера, проверьте интернет-соединение и повторите попытку"));
    return response;
  }
}
