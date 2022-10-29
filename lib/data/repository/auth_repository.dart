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

  static Future<UserPersonalDataModel> addPersonalData(
      {required String name,
      required String lname,
      String? patronymic,
      required DateTime birthday,
      required String mobileNumber}) async {
    var rawData = await AuthProvider.addPersonalInfo(
        name: name,
        lname: lname,
        patronymic: patronymic,
        birthday: birthday,
        mobileNumber: mobileNumber);
    if (rawData!.exception != null) {
      throw Exception(rawData.exception!.graphqlErrors.first
          .extensions!['internal']['error']['message']);
    }
    var currentPersonalData =
        UserPersonalDataModel.fromMap(rawData.data!['personaldata_add']);
    return currentPersonalData;
  }

  static Future<Map<String, dynamic>> addAddressData(
      {required AddressModel model, required String userID}) async {
    var rawData = await AuthProvider.addAddressInfo(
        county: model.county,
        state: model.state,
        lat: model.lat!,
        lon: model.lon!,
        addressStreetName: model.street,
        buildingNum: model.housenumber,
        city: model.city,
        apartament: model.apartament ?? "",
        addressName: model.name ?? "dssfsdf",
        enterance: model.enterance ?? "",
        floor: model.floor ?? "",
        userID: userID);
    if (rawData!.data == null) {
      throw Exception("Пользователи не найдены, повторите попытку");
    }
    return {
      'personalData': AddressModel.fromMap(
        rawData.data!['address_addnew'],
      )
    };
  }

  static Future<List<AddressModel>> findAddressByUser(
      {required String userID}) async {
    var rawData = await AuthProvider.findAddressByLogin(userID: userID);
    if (rawData!.data == null) {
      throw Exception("Адреса не найдены, повторите попытку");
    }

    List<AddressModel> addressesToReturn = [];

    for (var element in rawData.data!['address']) {
      addressesToReturn.add(AddressModel.fromMap(element));
    }

    return [];
  }
}
