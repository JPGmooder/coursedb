part of '../../domain/auth/bloc/auth_bloc.dart';

class AuthRepository {
  static Future<Map<String, dynamic>> authUser(
      String login, String password) async {
    var rawData = await AuthProvider.authUser(login, password);

    if (rawData!.data == null ||
        rawData.data!['users_login']['employee'] == null) {
      throw Exception(
          "Сотрудник с введенными данными не найден, повторите попытку");
    }
    if (rawData.data!['users_login']['employee']['status'] == "Уволен") {
      throw Exception(
          "Вы не можете авторизоваться, поскольку были уволены. Обратитесь за поддержкой к администратору базы данных.");
    }
    if (rawData.data!['users_login']['employee']['status'] ==
        "На рассмотрении") {
      throw Exception(
          "Вы не можете авторизоваться, поскольку вашу кандидатуру все еще рассматривают в качестве работника. Проявите терпение.");
    }

    return {
      'postName': rawData.data!['users_login']['employee']['postname'],
      'login': rawData.data!['users_login']['userlogin'],
      'password': rawData.data!['users_login']['userpassword'],
      'email': rawData.data!['users_login']['emailaddress'],
      'pd': rawData.data!['users_login']['personaldatum'] != null
          ? UserPersonalDataModel.fromMap(
              rawData.data!['users_login']['personaldatum'],
            )
          : null
    };
  }
}
