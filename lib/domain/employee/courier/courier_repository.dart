part of 'courier_cubit.dart';

class EmployeesRepository {
  static Future<List<Map<String, dynamic>>> loadUsers() async {
    var loadedResponse = await CourierProvider.loadCouriers();
    if (loadedResponse.exception != null) {
      throw Exception(loadedResponse.exception);
    }
    var parsedMap = (loadedResponse.data!['employee'] as List<Object?>)
        .cast<Map<String, dynamic>>().where((element) => element['banlist'] == null)
        .map((e) => {
              'status': e['status'],
              'postname': e['postname'],
              'userlogin': e['userlogin'],
              'personaldateofbirth': e['user']['personaldatum']
                  ?['personaldateofbirth'],
              'fio': e['user']['personaldatum']?['personallname'] +
                  " " +
                  e['user']['personaldatum']?['personalname'] +
                  " " +
                  (e['user']['personaldatum']?['personalpatronymic'] ?? ""),
              'personalmobilenumber': e['user']['personaldatum']
                  ?['personalmobilenumber'],
            })
        .toList();
    return parsedMap;
  }

  Future<Map<String, dynamic>> changeCouriers({
    required List<Map<String, dynamic>> editedEmployees,
  }) async {
    //* Добавление пользователей
    var editCompleter = Completer<List<Map<String, dynamic>>>();
    if (editedEmployees.isEmpty) {
      editCompleter.complete([]);
    }
    //* Изменение пользователей
    List<Map<String, dynamic>> updatedEmployeesResult = [];
    for (var element in editedEmployees) {
      CourierProvider.updateEmployee(
              userLogin: element['userlogin'], status: element['status'])
          .then((value) {
        if (value.hasException) {
          throw Exception(value.exception.toString());
        }
        updatedEmployeesResult.add(value.data!['employeeupdatefun']);
        if (updatedEmployeesResult.length == editedEmployees.length) {
          editCompleter.complete(updatedEmployeesResult);
        }
      });
    }
    var completed = await editCompleter.future;
    return {"edited": completed};
  }
}
