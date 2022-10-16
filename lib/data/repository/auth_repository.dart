part of '../../domain/auth/bloc/auth_bloc.dart';

class AuthRepository {
  static Future<Map<String, dynamic>> authUser(
      String login, String password) async {
    var rawData = await AuthProvider.authUser(login, password);
    if (rawData!.data == null) {
      throw Exception("Пользователи не найдены, повторите попытку");
    }
    return {
      'login': rawData.data!['users_login']['userlogin'],
      'password': rawData.data!['users_login']['userpassword'],
      'email': rawData.data!['users_login']['emailaddress'],
      'pd': rawData.data!['users_login']['personaldatum'] == null
          ? null
          : UserPersonalDataModel.fromMap(
              rawData.data!['users_login']['personaldatum'],
            )
    };
  }

  static Future<Map<String, dynamic>> regUser(
      String login, String password, String email) async {
    var rawData = await AuthProvider.regUser(login, password, email);
    if (rawData!.data == null) {
      throw Exception("Пользователи не найдены, повторите попытку");
    }
    return {
      'login': rawData.data!['users_register']['userlogin'],
      'password': rawData.data!['users_register']['userpassword'],
      'email': rawData.data!['users_register']['emailaddress']
    };
  }

  // static Future<Map<String, dynamic>> addPersonalData(String name, String lname,
  //     String? patronymic, DateTime birthday, String mobileNumber) async {
  //   var rawData = await AuthProvider.regUser(login, password, email);
  //   if (rawData!.data == null) {
  //     throw Exception("Пользователи не найдены, повторите попытку");
  //   }
  //   return {
  //     'login': rawData.data!['users_register']['userlogin'],
  //     'password': rawData.data!['users_register']['userpassword'],
  //     'email': rawData.data!['users_register']['emailaddress']
  //   };
  // }
}
