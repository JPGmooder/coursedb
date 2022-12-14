part of '../../domain/auth/bloc/auth_bloc.dart';

class AuthRepository {
  static Future<Map<String, dynamic>> authUser(
      String login, String password) async {
    var rawData = await AuthProvider.authUser(login, password);

    if (rawData!.data == null) {
      throw rawData.exception!;
    }

    QueryResult<Object?>? companyRawData;
    if (rawData.data!['users_login']['client']['id_company'] != null) {
      companyRawData = await AuthProvider.findCompanyById(
          companyId: rawData.data!['users_login']['client']['id_company']);
    }
    OrganizationModel? modelToReturn;
    if (!(companyRawData == null ||
        companyRawData.data == null ||
        companyRawData.data!["company_by_pk"] == null)) {
      modelToReturn =
          OrganizationModel.fromMap(companyRawData.data!["company_by_pk"]);
    }
    return {
      'login': rawData.data!['users_login']['userlogin'],
      'password': rawData.data!['users_login']['userpassword'],
      'email': rawData.data!['users_login']['emailaddress'],
      'addresses': (rawData.data!['users_login']['client']['addresses']
              as List<Object?>?)
          ?.map((e) => AddressModel.fromMap(e as Map<String, dynamic>))
          .toList(),
      'employee': rawData.data!['users_login']['employee'] == null
          ? null
          : CourierModel.fromMap(rawData.data!['users_login']['employee']),
      'carts':
          (rawData.data!['users_login']['client']['carts'] as List<Object?>)
              .map((e) => CartModel.fromMap(e as Map<String, dynamic>))
              .toList(),
      'company': modelToReturn,
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
    if (rawData!.hasException) {
      throw rawData.exception!;
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
    if (rawData!.hasException) {
      throw rawData.exception!;
    }
    var currentPersonalData =
        UserPersonalDataModel.fromMap(rawData.data!['personaldata_add']);
    return currentPersonalData;
  }

  static Future<AddressModel> addAddressData(
      {required AddressModel model, required String? userID}) async {
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
    if (rawData!.hasException) {
      throw rawData.exception!;
    }
    return AddressModel.fromMap(rawData.data!['address_addnew']);
  }

  static Future<List<AddressModel>> findAddressByUser(
      {required String userID}) async {
    var rawData = await AuthProvider.findAddressByLogin(userID: userID);
    if (rawData!.data == null) {
      throw Exception("???????????? ???? ??????????????, ?????????????????? ??????????????");
    }

    List<AddressModel> addressesToReturn = [];

    for (var element in rawData.data!['address']) {
      addressesToReturn.add(AddressModel.fromMap(element));
    }

    return addressesToReturn;
  }

  static Future<UserPersonalDataModel> changeUsersPersonalData(
      {required String userLogin,
      required UserPersonalDataModel pdModel}) async {
    var rawData = await AuthProvider.updateUserPd(
        birthday: pdModel.dateOfBirth,
        lname: pdModel.fname,
        mobileNumber: pdModel.mobileNumber,
        name: pdModel.name,
        userLogin: userLogin,
        patronymic: pdModel.patronymic);
    if (rawData!.hasException) {
      throw rawData.exception!;
    }

    UserPersonalDataModel modelToReturn;

    modelToReturn =
        UserPersonalDataModel.fromMap(rawData.data!['personaldata_updateex']);

    return modelToReturn;
  }

  static Future<AddressModel> updateAddressById(
      {required AddressModel changedAddress}) async {
    var rawData = await AuthProvider.updateUsersAddressByPk(
        idAddress: changedAddress.id_address,
        addressApartament: changedAddress.apartament!,
        addressBuildingnum: changedAddress.housenumber,
        addressCity: changedAddress.city,
        addressEntrance: changedAddress.enterance!,
        addressFloor: changedAddress.floor!,
        addressLat: changedAddress.lat!,
        addressLon: changedAddress.lon!,
        addressName: changedAddress.name!,
        addressState: changedAddress.state,
        addressCounty: changedAddress.county,
        addressStreetname: changedAddress.street);
    if (rawData!.hasException) {
      throw rawData.exception!;
    }

    AddressModel modelToReturn;

    modelToReturn =
        AddressModel.fromMap(rawData.data!['update_address_by_pk']);

    return modelToReturn;
  }
}
