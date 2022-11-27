part of 'courier_cubit.dart';

class CourierProvider {
  static QueryOptions _loadCouriers() {
    String query = r'''
query MyQuery {
  employee(where: {postname: {_eq: "Курьер"}}) {
    userlogin
    user {
      personaldatum {
        personallname
        personalmobilenumber
        personalname
        personalpatronymic
        personaldateofbirth
      }
      banlist {
        userlogin
      }
    }
    status
    postname
  }
}

''';
    return QueryOptions(
        document: gql(query), fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult<Object?>> loadCouriers() async {
    var response = await AppsGraphClient.client.query(_loadCouriers());
    return response;
  }

//   static MutationOptions _addUsers(String userLogin, String userEmail) {
//     String query = r'''
// mutation MyMutation($p_emailaddress: String!, $p_userlogin: String!) {
//   users_add(args: {p_emailaddress: $p_emailaddress, p_userlogin: $p_userlogin}) {
//     userlogin
//     emailaddress
//   }
// }
// ''';
//     return MutationOptions(
//         document: gql(query),
//         fetchPolicy: FetchPolicy.networkOnly,
//         variables: {"p_emailaddress": userEmail, "p_userlogin": userLogin});
//   }

//   static MutationOptions _addPersonalData({
//     required String userLogin,
//     required String? patronymic,
//     required String name,
//     required String lastName,
//     required DateTime dateOfBirth,
//     required String mobileNumber,
//   }) {
//     String query = r'''
// mutation MyMutation($p_userlogin: String!, $p_personalpatronymic: String = "-", $p_personalname: String!, $p_personalmobilenumber: String!, $p_personallname: String!, $p_personaldateofbirth: date!) {
//   personaldata_addnew(args: {p_userlogin: $p_userlogin, p_personalpatronymic: $p_personalpatronymic, p_personalname: $p_personalname, p_personalmobilenumber: $p_personalmobilenumber, p_personallname: $p_personallname, p_personaldateofbirth: $p_personaldateofbirth}) {
//     personalpatronymic
//     personalname
//     personalmobilenumber
//     personallname
//     personaldateofbirth
//   }
// }
// ''';
//     return MutationOptions(
//       document: gql(query),
//       variables: {
//         "p_userlogin": userLogin,
//         "p_personalpatronymic": patronymic,
//         "p_personalname": name,
//         "p_personalmobilenumber": mobileNumber,
//         "p_personallname": lastName,
//         "p_personaldateofbirth": dateOfBirth.toString()
//       },
//     );
//   }

  static MutationOptions _updateEmployee({
    required String userLogin,
    required String status,
  }) {
    String query = r'''
mutation MyMutation($p_postname: String = "Курьер", $p_userlogin: String!, $status: employeestatus!) {
  employeeupdatefun(args: {p_postname: $p_postname, p_userlogin: $p_userlogin, status: $status}) {
    userlogin
  }
}

''';
    return MutationOptions(
        document: gql(query),
        variables: {"p_userlogin": userLogin, "status": status},
        fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult<Object?>> updateEmployee(
      {required String userLogin, required String status}) async {
    var response = await AppsGraphClient.client
        .mutate(_updateEmployee(userLogin: userLogin, status: status));
    return response;
  }

  static MutationOptions _addEmployee({
    required String postName,
    required String userLogin,
    required String status,
  }) {
    String query = r'''
mutation MyMutation($deliverarea: numeric!, $postname: String!, $status: employeestatus!, $userlogin: String!) {
  insert_employee(objects: {deliverarea: $deliverarea, postname: $postname, status: $status, userlogin: $userlogin}) {
    returning {
      userlogin
    }
  }
}

''';
    return MutationOptions(
        document: gql(query),
        variables: {
          "deliverarea": 0.0,
          "postname": postName,
          "status": status,
          "userlogin": userLogin
        },
        fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult<Object?>> addEmployee(
      {required String postName,
      required String userLogin,
      required String status}) async {
    var response = await AppsGraphClient.client.mutate(
        _addEmployee(postName: postName, userLogin: userLogin, status: status));
    return response;
  }

//   static MutationOptions _banUser({
//     required String userLogin,
//   }) {
//     String query = r'''
// mutation MyMutation($bandate: date!, $userlogin: String!) {
//   insert_banlist_one(object: {bandate: $bandate, userlogin: $userlogin}) {
//     bandate
//     userlogin
//   }
// }

// ''';
//     return MutationOptions(
//         document: gql(query),
//         variables: {
//           "bandate": DateTime.now().toString(),
//           "userlogin": userLogin,
//         },
//         fetchPolicy: FetchPolicy.networkOnly);
//   }

//   static MutationOptions _unBanUser({
//     required String userLogin,
//   }) {
//     String query = r'''
// mutation MyMutation($userlogin: String!) {
//   delete_banlist_by_pk(userlogin: $userlogin) {
//     userlogin
//   }
// }

// ''';
//     return MutationOptions(
//         document: gql(query),
//         variables: {
//           "userlogin": userLogin,
//         },
//         fetchPolicy: FetchPolicy.networkOnly);
//   }

//   static Future<QueryResult<Object?>> banUser(
//       {required String userLogin, required bool isBan}) async {
//     var response = await AppsGraphClient.client.mutate(isBan
//         ? _banUser(userLogin: userLogin)
//         : _unBanUser(userLogin: userLogin));
//     return response;
//   }

//   static Future<QueryResult<Object?>> addUsers(
//       {required String userLogin, required String userEmail}) async {
//     var response =
//         await AppsGraphClient.client.mutate(_addUsers(userLogin, userEmail));
//     return response;
//   }

//   static Future<QueryResult<Object?>> addPersonalData({
//     required String userLogin,
//     required String? patronymic,
//     required String name,
//     required String lastName,
//     required DateTime dateOfBirth,
//     required String mobileNumber,
//   }) async {
//     var response = await AppsGraphClient.client.mutate(_addPersonalData(
//         userLogin: userLogin,
//         patronymic: patronymic,
//         name: name,
//         lastName: lastName,
//         dateOfBirth: dateOfBirth,
//         mobileNumber: mobileNumber));
//     return response;
//   }

//   static Future<QueryResult<Object?>> updateUser({
//     required String userLogin,
//     required String userEmail,
//     required String? patronymic,
//     required String name,
//     required String lastName,
//     required DateTime dateOfBirth,
//     required String mobileNumber,
//   }) async {
//     var response = await AppsGraphClient.client.mutate(_updateUser(
//         userEmail: userEmail,
//         userLogin: userLogin,
//         patronymic: patronymic,
//         name: name,
//         lastName: lastName,
//         dateOfBirth: dateOfBirth,
//         mobileNumber: mobileNumber));
//     return response;
//   }
}
