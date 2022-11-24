part of 'users_cubit.dart';

class UsersRepository {
  Future<List<Map<String, dynamic>>> loadUsers() async {
    var loadedResponse = await UsersProvider.loadUsers();
    if (loadedResponse.exception != null) {
      throw Exception(loadedResponse.exception);
    }
    var parsedMap = (loadedResponse.data!['users'] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .map((e) => {
              'emailaddress': e['emailaddress'],
              'userlogin': e['userlogin'],
              'personaldateofbirth': e['personaldatum']?['personaldateofbirth'],
              'personallname': e['personaldatum']?['personallname'],
              'personalmobilenumber': e['personaldatum']
                  ?['personalmobilenumber'],
              'personalname': e['personaldatum']?['personalname'],
              'personalpatronymic': e['personaldatum']?['personalpatronymic'],
            })
        .toList();
    return parsedMap;
  }
}
