part of '../../../domain/organization/bloc/org_bloc.dart';

class OrganiztionRepository {
  static final supabaseUrl = 'https://xomxmkboeuoupjkirjnh.supabase.co';
  static final supabaseKey = String.fromEnvironment('bqcccZS4hECsxy2T');

  static Future<bool> checkOrganiztion(String orgname) async {
    var response = await OrganizationProvider.checkCompanyName(orgname);
    return response.data!['company']!.isEmpty;
  }

  static Future<OrganizationModel> addNewCompany(
      {required String companyName,
      required String status,
      required String type,
      required int addressId,
      required int deliveryPrice}) async {
    var response = await OrganizationProvider.addNewCompany(
        companyName: companyName,
        status: status,
        type: type,
        addressId: addressId,
        deliveryPrice: deliveryPrice);
    var modelToReturn =
        OrganizationModel.fromMap(response.data!['company_addnew']);
    await OrganizationProvider.changeUsersCompany(
        companyId: modelToReturn.idCompany, userLogin: UserModel.get().login);

    return modelToReturn;
  }

  static Future<List<OrganizationModel>> loadUsersCompanies(
      {required int addressId,
      required int maxDistance,
      String? companyName,
      String? companyTypeName,
      String? brandName}) async {
    var response = await OrganizationProvider.loadUsersCompanies(
        addressId: addressId,
        maxDistance: maxDistance,
        brandName: brandName,
        companyName: companyName,
        companyTypeName: companyTypeName);
    if (response.hasException) {
      throw Exception(response.exception.toString());
    }
    List<OrganizationModel> modelsToReturn = [];
    for (var organization in response.data!['searchnearcomapnies']) {
      modelsToReturn.add(OrganizationModel.fromMap(organization));
    }
    return modelsToReturn;
  }

  static Future<Map<ProductModel, Map<DateTime, int>>> loadCompanyStatistic(
      {required int companyId}) async {
    var response = await OrganizationProvider.findCompanysOrderedItems(
        companyId: companyId);
    if (response.hasException) {
      throw Exception(response.exception.toString());
    }
    List<int> itemsToLoad = [];
    var loadedList =
        (response.data!['getcompanysproductsfromorders'] as List<Object?>?)!
            .cast<Map<String, dynamic>>()
            .toList();
    loadedList.forEach((element) {
      var currentCartItems = ((element['cartitems'] as List<Object?>)
          .cast<Map<String, dynamic>>());
      if (currentCartItems.isNotEmpty) {
        itemsToLoad.addAll(
            currentCartItems.map((e) => e['id_product']! as int).toList());
      }
    });
    itemsToLoad = itemsToLoad.toSet().toList();
    Map<ProductModel, Map<DateTime, int>> mapToReturn = {};
    var loadedProducts =
        await ProductRepository.loadProductModels(idCompany: companyId);
    for (var orderedItemId in itemsToLoad) {
      var curItemIndex = loadedProducts
          .indexWhere((element) => element.productId == orderedItemId);
      if (curItemIndex != -1) {
        Map<ProductModel, Map<DateTime, int>> mapToAdd = {
          loadedProducts[curItemIndex]: {}
        };
        var filteredList = loadedList.where((element) {
          var currentCartItems = (element['cartitems'] as List<Object?>?)!
              .cast<Map<String, dynamic>>();

          return currentCartItems.isNotEmpty &&
              currentCartItems
                  .where((item) => item['id_product'] == orderedItemId)
                  .isNotEmpty;
        });
        for (var items in filteredList) {
          var currentDate =
              DateUtils.dateOnly(DateTime.parse(items['cartcreationtime']));
          int currentItemCount = (items['cartitems'] as List<Object?>)
              .cast<Map<String, dynamic>>()
              .firstWhere((element) =>
                  element['id_product'] ==
                  loadedProducts[curItemIndex].productId)['cartitemquantity'];
          if (mapToAdd[loadedProducts[curItemIndex]]!
              .keys
              .contains(currentDate)) {
            mapToAdd[loadedProducts[curItemIndex]]![currentDate] =
                mapToAdd[loadedProducts[curItemIndex]]![currentDate]! +
                    currentItemCount;
          } else {
            var currentItems = (items['cartitems'] as List<Object?>)
                .cast<Map<String, dynamic>>();
            mapToAdd[loadedProducts[curItemIndex]]!
                .addAll({currentDate: currentItemCount});
          }
          mapToReturn.addAll(mapToAdd);
        }
      }
    }
    return mapToReturn;
    // return modelsToReturn;
  }
}
