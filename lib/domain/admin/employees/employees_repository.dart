part of 'employees_cubit.dart';

class EmployeesRepository {
  static Future<List<Map<String, dynamic>>> loadUsers() async {
    var loadedResponse = await EmployeesProvider.loadEmployees();
    if (loadedResponse.exception != null) {
      throw Exception(loadedResponse.exception);
    }
    var parsedMap = (loadedResponse.data!['employee'] as List<Object?>)
        .cast<Map<String, dynamic>>()
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

  Future<Map<String, dynamic>> changeEmployees(
      {required List<Map<String, dynamic>> editedEmployees,
      required List<Map<String, dynamic>> deletedEmployees}) async {
    //* Добавление пользователей
    var editCompleter = Completer<List<Map<String, dynamic>>>();
    if (editedEmployees.isEmpty) {
      editCompleter.complete([]);
    }
    //* Изменение пользователей
    List<Map<String, dynamic>> updatedEmployeesResult = [];
    for (var element in editedEmployees) {
      EmployeesProvider.updateEmployee(
              userLogin: element['userlogin'],
              postName: element['postname'],
              status: element['status'])
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

  Future<Map<String, dynamic>> insertEmployees({
    required List<Map<String, dynamic>> addedEmployees,
  }) async {
    //* Добавление пользователей
    var addCompleter = Completer<List<Map<String, dynamic>>>();
    if (addedEmployees.isEmpty) {
      addCompleter.complete([]);
    }
    //* Изменение пользователей
    List<Map<String, dynamic>> addedEmployeesResult = [];
    for (var element in addedEmployees) {
      EmployeesProvider.addEmployee(
              userLogin: element['userlogin'],
              postName: element['postname'],
              status: element['status'])
          .then((value) {
        if (value.hasException) {
          throw Exception(value.exception.toString());
        }
        addedEmployeesResult.add(value.data!['insert_employee']);
        if (addedEmployeesResult.length == addedEmployees.length) {
          addCompleter.complete(addedEmployeesResult);
        }
      });
    }
    var completed = await addCompleter.future;
    return {"added": completed};
  }
}
