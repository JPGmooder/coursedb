part of '../../../domain/organization/bloc/org_bloc.dart';

class OrganiztionRepository {
  static final supabaseUrl = 'https://xomxmkboeuoupjkirjnh.supabase.co';
  static final supabaseKey = String.fromEnvironment('bqcccZS4hECsxy2T');

  static Future<bool> checkOrganiztion(String orgname) async {
    var response = await OrganizationProvider.checkCompanyName(orgname);
    return response.data!['company']!.isEmpty;
  }

  static Future<Map<String, String>> loadCardsInfo(
      Uint8List cardImage, Uint8List logoImage, int orgId) async {
    var client = SupabaseClient(supabaseUrl, supabaseKey, );
    var cardString = await client.storage.from('kursach').uploadBinary(

        'kursach/organiztion/$orgId/card.png',

        cardImage);
    var logoString = await client.storage.from('kursach').uploadBinary(
        'kursach/organiztion/$orgId/logo.png',
        logoImage);

    return {'logo': logoString, 'card': cardString};
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
    return modelToReturn;
  }
}
