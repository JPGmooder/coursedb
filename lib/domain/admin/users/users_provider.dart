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
     banlists {
      userlogin
    }
  }
}

''';
    return QueryOptions(
        document: gql(query), fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult<Object?>> loadUsers() async {
    var response = await AppsGraphClient.client.query(_loadUsers());
    return response;
  }

  static MutationOptions _addUsers(String userLogin, String userEmail) {
    String query = r'''
mutation MyMutation($p_emailaddress: String!, $p_userlogin: String!) {
  users_add(args: {p_emailaddress: $p_emailaddress, p_userlogin: $p_userlogin}) {
    userlogin
    emailaddress
  }
}
''';
    return MutationOptions(
        document: gql(query),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {"p_emailaddress": userEmail, "p_userlogin": userLogin});
  }

  static MutationOptions _addPersonalData({
    required String userLogin,
    required String? patronymic,
    required String name,
    required String lastName,
    required DateTime dateOfBirth,
    required String mobileNumber,
  }) {
    String query = r'''
mutation MyMutation($p_userlogin: String!, $p_personalpatronymic: String = "-", $p_personalname: String!, $p_personalmobilenumber: String!, $p_personallname: String!, $p_personaldateofbirth: date!) {
  personaldata_addnew(args: {p_userlogin: $p_userlogin, p_personalpatronymic: $p_personalpatronymic, p_personalname: $p_personalname, p_personalmobilenumber: $p_personalmobilenumber, p_personallname: $p_personallname, p_personaldateofbirth: $p_personaldateofbirth}) {
    personalpatronymic
    personalname
    personalmobilenumber
    personallname
    personaldateofbirth
  }
}
''';
    return MutationOptions(
      document: gql(query),
      variables: {
        "p_userlogin": userLogin,
        "p_personalpatronymic": patronymic,
        "p_personalname": name,
        "p_personalmobilenumber": mobileNumber,
        "p_personallname": lastName,
        "p_personaldateofbirth": dateOfBirth.toString()
      },
    );
  }

  static MutationOptions _updateUser({
    required String userLogin,
    required String userEmail,
    required String? patronymic,
    required String name,
    required String lastName,
    required DateTime dateOfBirth,
    required String mobileNumber,
  }) {
    String query = r'''
mutation MyMutation($p_personaldateofbirth: date!, $p_personallname: String!, $p_personalmobilenumber: String!, $p_personalname: String!, $p_personalpatronymic: String = "-", $p_useremail: String!, $p_userlogin: String!) {
  users_complexupdate(args: {p_personaldateofbirth: $p_personaldateofbirth, p_personallname: $p_personallname, p_personalmobilenumber: $p_personalmobilenumber, p_personalname: $p_personalname, p_personalpatronymic: $p_personalpatronymic, p_useremail: $p_useremail, p_userlogin: $p_userlogin}) {
    userlogin
    emailaddress
    personaldatum {
      personaldateofbirth
      personallname
      personalmobilenumber
      personalname
      userlogin
      personalpatronymic
    }
  }
}
''';
    return MutationOptions(
        document: gql(query),
        variables: {
          "p_userlogin": userLogin,
          "p_useremail": userEmail,
          "p_personalpatronymic": patronymic,
          "p_personalname": name,
          "p_personalmobilenumber": mobileNumber,
          "p_personallname": lastName,
          "p_personaldateofbirth": dateOfBirth.toString()
        },
        fetchPolicy: FetchPolicy.networkOnly);
  }

  static MutationOptions _banUser({
    required String userLogin,
  }) {
    String query = r'''
mutation MyMutation($bandate: date!, $userlogin: String!) {
  insert_banlist_one(object: {bandate: $bandate, userlogin: $userlogin}) {
    bandate
    userlogin
  }
}

''';
    return MutationOptions(
        document: gql(query),
        variables: {
          "bandate": DateTime.now().toString(),
          "userlogin": userLogin,
        },
        fetchPolicy: FetchPolicy.networkOnly);
  }

  static MutationOptions _unBanUser({
    required String userLogin,
  }) {
    String query = r'''
mutation MyMutation($userlogin: String!) {
  delete_banlist_by_pk(userlogin: $userlogin) {
    userlogin
  }
}

''';
    return MutationOptions(
        document: gql(query),
        variables: {
          "userlogin": userLogin,
        },
        fetchPolicy: FetchPolicy.networkOnly);
  }

  static Future<QueryResult<Object?>> banUser(
      {required String userLogin, required bool isBan}) async {
    var response = await AppsGraphClient.client.mutate(isBan
        ? _banUser(userLogin: userLogin)
        : _unBanUser(userLogin: userLogin));
    return response;
  }

  static Future<QueryResult<Object?>> addUsers(
      {required String userLogin, required String userEmail}) async {
    var response =
        await AppsGraphClient.client.mutate(_addUsers(userLogin, userEmail));
    return response;
  }

  static Future<QueryResult<Object?>> addPersonalData({
    required String userLogin,
    required String? patronymic,
    required String name,
    required String lastName,
    required DateTime dateOfBirth,
    required String mobileNumber,
  }) async {
    var response = await AppsGraphClient.client.mutate(_addPersonalData(
        userLogin: userLogin,
        patronymic: patronymic,
        name: name,
        lastName: lastName,
        dateOfBirth: dateOfBirth,
        mobileNumber: mobileNumber));
    return response;
  }

  static Future<QueryResult<Object?>> updateUser({
    required String userLogin,
    required String userEmail,
    required String? patronymic,
    required String name,
    required String lastName,
    required DateTime dateOfBirth,
    required String mobileNumber,
  }) async {
    var response = await AppsGraphClient.client.mutate(_updateUser(
        userEmail: userEmail,
        userLogin: userLogin,
        patronymic: patronymic,
        name: name,
        lastName: lastName,
        dateOfBirth: dateOfBirth,
        mobileNumber: mobileNumber));
    return response;
  }

  static QueryOptions _findUnhiredUsers(String userlogin) {
    String query = r'''
query MyQuery($_like: String!) {
  users(where: {userlogin: {_like: $_like}}) {
    userlogin
    personaldatum {
      personallname
      personalname
      personalpatronymic
      personaldateofbirth
    }
    banlist {
      userlogin
    }
    employee {
      userlogin
    }
  }
}
''';
    return QueryOptions(
        document: gql(query),
        fetchPolicy: FetchPolicy.networkOnly,
        variables: {"_like": "%$userlogin%"});
  }

  static Future<QueryResult<Object?>> findUsersByLogin({
    required String userLogin,
  }) async {
    var response = await AppsGraphClient.client.query(_findUnhiredUsers(
      userLogin,
    ));
    return response;
  }
}
