part of 'organization_cubit.dart';

class OrganizationRepository {
  static Future<List<Map<String, dynamic>>> loadCompanies() async {
    var loadedResponse = await OrganizationProvider.loadCouriers();
    if (loadedResponse.exception != null) {
      throw Exception(loadedResponse.exception);
    }
    var parsedOrganizations = (loadedResponse.data!['company'] as List<Object?>)
        .cast<Map<String, dynamic>>();
    var parsedMap = (loadedResponse.data!['client'] as List<Object?>)
        .cast<Map<String, dynamic>>()
        .where((element) => element['banlist'] == null)
        .map((e) {
      Map<String, dynamic> currentOrganization;
      var loadedOrgs = parsedOrganizations
          .where((element) => element['id_company'] == e['id_company']);
      if (loadedOrgs.isNotEmpty) {
        currentOrganization = loadedOrgs.first;
        return {
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
          'addressstreetname': currentOrganization['address']
              ['addressstreetname'],
          'addressstate': currentOrganization['address']['addresslon'],
          'addresslon': currentOrganization['address']['addresslon'],
          'addresslat': currentOrganization['address']['addresslat'],
          'addressfloor': currentOrganization['address']['addressfloor'],
          'addressentrance': currentOrganization['address']['addressentrance'],
          'addresscounty': currentOrganization['address']['addresscounty'],
          'addresscity': currentOrganization['address']['addresscity'],
          'addressbuildingnum': currentOrganization['address']
              ['addressbuildingnum'],
          'addressapartament': currentOrganization['address']
              ['addressapartament'],
          'companydeliveryprice': currentOrganization['companydeliveryprice'],
          'companyname': currentOrganization['companyname'],
          'companystatusname': currentOrganization['companystatusname'],
          'companytypename': currentOrganization['companytypename'],
        };
      }
    }).toList();
    parsedMap.removeWhere((element) => element == null);
    return parsedMap.cast<Map<String, dynamic>>();
  }

  static Future<Map<String, dynamic>> changeCouriers({
    required List<Map<String, dynamic>> editedStatuses,
  }) async {
    //* Добавление пользователей
    var editCompleter = Completer<List<Map<String, dynamic>>>();
    if (editedStatuses.isEmpty) {
      editCompleter.complete([]);
    }
    //* Изменение пользователей
    List<Map<String, dynamic>> updatedStatusesResult = [];
    for (var element in editedStatuses) {
      OrganizationProvider.updateOrganizationStatus(
              userLogin: element['userlogin'],
              statusName: element['companystatusname'])
          .then((value) {
        if (value.hasException) {
          throw Exception(value.exception.toString());
        }
        updatedStatusesResult.add(value.data!['company_changestatus']);
        if (editedStatuses.length == updatedStatusesResult.length) {
          editCompleter.complete(editedStatuses);
        }
      });
    }
    var completed = await editCompleter.future;
    return {"edited": completed};
  }
}
