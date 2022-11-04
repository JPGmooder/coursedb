part of '../../../domain/organization/bloc/org_bloc.dart';

class OrganizationProvider {
  static MutationOptions addNewCompanyMutation(
      {required int deliveryPrice,
      required int idAddress,

      required String companyname,
      required String companystatus,
      required String companytype}) {
    String document = r'''
mutation MyMutation($p_companydeliveryprice: numeric = "",  $p_companyname: String = "", $p_companystatusname: String = "", $p_companytypename: String = "", $p_id_address: Int = 10) {
  company_addnew(args: {p_companydeliveryprice: $p_companydeliveryprice,  p_companyname: $p_companyname, p_companystatusname: $p_companystatusname, p_companytypename: $p_companytypename, p_id_address: $p_id_address}) {
         id_company,
    address{
      addressapartament,
      addressbuildingnum,
      addresscity,
      addresscounty,
      addressentrance,
      addressfloor,
      addresslat,
      addresslon,
      addressname,
      addressstate,
      addressstreetname,
      id_address
    },
    companydeliveryprice,
    companyname,
    companystatusname,
    companytypename

  }
}
''';
    return MutationOptions(document: gql(document), variables: {
      "p_companydeliveryprice": deliveryPrice,

      "p_companyname": companyname,
      "p_companystatusname": companystatus,
      "p_companytypename": companytype,
      "p_id_address": idAddress
    });
  }

  static Future<QueryResult> checkCompanyName(String name) async {
    var response = await AppsGraphClient.client
        .query(
          QueryOptions(document: gql(r'''query MyQuery($_similar: String = "") {
  company(where: {companyname: {_similar: $_similar}})
  {
    companyname
  }
}
'''), variables: {"_similar": name}),
        )
        .timeout(Duration(seconds: 10),
            onTimeout: () => throw Exception(
                "Невозможно получить ответ от сервера, проверьте интернет-соединение и повторите попытку"));
    return response;
  }

  static Future<QueryResult> addNewCompany(
      {required String companyName,
      required String status,
      required String type,
      required int addressId,
      required int deliveryPrice}) async {
    var response = await AppsGraphClient.client.mutate(addNewCompanyMutation(
        companyname: companyName,
        companystatus: 'На рассмотрении',
        companytype: 'Магазин продуктов',
        deliveryPrice: deliveryPrice,
        idAddress: addressId,));
    return response;
  }
}
