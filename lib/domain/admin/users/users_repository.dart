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
              'isBanned': (e['banlists'] as List<Object?>?)?.isNotEmpty ?? false
                  ? "Заблокирован"
                  : "Функционирует",
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

  Future<List<Map<String, dynamic>>> findUnhiredUsers(String userLogin) async {
    var response = await UsersProvider.findUsersByLogin(userLogin: userLogin);
    if (response.hasException) {
      throw response.exception!;
    }
    var listToReturn = (response.data!['users'] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .where((element) =>
            element['banlist'] == null &&
            element['employee'] == null &&
            element['personaldatum'] != null)
        .toList();
    return listToReturn;
  }

  Future<Map<String, dynamic>> changeUsers(
      {required List<Map<String, dynamic>> editedUsers,
      required List<Map<String, dynamic>> deletedUsers,
      required List<Map<String, dynamic>> addedUsers}) async {
    //* Добавление пользователей
    var addCompleter = Completer<List<Map<String, dynamic>>>();
    List<Map<String, dynamic>> addedUsersResult = [];
    if (addedUsers.isEmpty) {
      addCompleter.complete([]);
    }
    for (var userToAdd in addedUsers) {
      UsersProvider.addUsers(
              userLogin: userToAdd['userlogin'],
              userEmail: userToAdd['emailaddress'])
          .then((authData) {
        if (authData.hasException) {
          throw Exception(authData.exception.toString());
        }
        UsersProvider.addPersonalData(
                userLogin: authData.data!['users_add']['userlogin'],
                patronymic: userToAdd["personalpatronymic"],
                name: userToAdd["personalname"],
                lastName: userToAdd["personallname"],
                dateOfBirth: DateTime.parse(userToAdd["personaldateofbirth"]),
                mobileNumber: userToAdd["personalmobilenumber"])
            .then((value) {
          if (value.hasException) {
            throw Exception(value.exception.toString());
          }
          addedUsersResult.addAll([
            (authData.data!['users_add'] as List<Object?>)
                .cast<Map<String, dynamic>>()
                .first,
            (value.data!['personaldata_addnew'] as List<Object?>)
                .cast<Map<String, dynamic>>()
                .first
          ]);
          if (addedUsers.length == addedUsersResult.length) {
            addCompleter.complete(addedUsersResult);
          }
        });
      });
    }
    var editCompleter = Completer<List<Map<String, dynamic>>>();
    if (editedUsers.isEmpty) {
      editCompleter.complete([]);
    }
    //* Изменение пользователей
    List<Map<String, dynamic>> updatedUsersResult = [];
    for (var element in editedUsers) {
      if (DateTime.tryParse(element["personaldateofbirth"]) != null) {
        UsersProvider.updateUser(
                userLogin: element['userlogin'],
                userEmail: element['emailaddress'],
                patronymic: element["personalpatronymic"],
                name: element["personalname"],
                lastName: element["personallname"],
                dateOfBirth: DateTime.parse(element["personaldateofbirth"]),
                mobileNumber: element["personalmobilenumber"])
            .then((value) {
          if (value.hasException) {
            throw Exception(value.exception.toString());
          }
          updatedUsersResult.add(value.data!['users_complexupdate']);
          if (updatedUsersResult.length == editedUsers.length) {
            editCompleter.complete(updatedUsersResult);
          }
        });
      } else {
        updatedUsersResult.add({'aboba': 'boba'});
        if (updatedUsersResult.length == editedUsers.length) {
          editCompleter.complete(updatedUsersResult);
        }
      }
    }

    //* Блокирование пользователей
    var banCompleter = Completer<List<Map<String, dynamic>?>>();
    if (deletedUsers.isEmpty) {
      banCompleter.complete([]);
    }

    List<Map<String, dynamic>?> removedUsersResult = [];
    for (var element in deletedUsers) {
      UsersProvider.banUser(
              userLogin: element['userlogin'],
              isBan: element['isBanned'] == "Заблокирован")
          .then((value) {
        if (value.hasException) {
          throw Exception(value.exception.toString());
        }
        removedUsersResult.add(element['isBanned'] == "Заблокирован"
            ? value.data!['insert_banlist_one']
            : value.data!['delete_banlist_by_pk']);
        if (removedUsersResult.length == deletedUsers.length) {
          banCompleter.complete(removedUsersResult);
        }
      });
    }

    var bebra = Completer<Map<String, dynamic>>();

    banCompleter.future.whenComplete(() {
      if (editCompleter.isCompleted && editCompleter.isCompleted) {
        bebra.complete({
          'added': addedUsersResult,
          'updated': updatedUsersResult,
          'banned': removedUsersResult
        });
      }
    });

    addCompleter.future.whenComplete(() {
      if (editCompleter.isCompleted && banCompleter.isCompleted) {
        bebra.complete({
          'added': addedUsersResult,
          'updated': updatedUsersResult,
          'banned': removedUsersResult
        });
      }
    });
    editCompleter.future.whenComplete(() {
      if (addCompleter.isCompleted && banCompleter.isCompleted) {
        bebra.complete({
          'added': addedUsersResult,
          'updated': updatedUsersResult,
          'banned': removedUsersResult
        });
      }
    });
    return bebra.future;
  }
}
