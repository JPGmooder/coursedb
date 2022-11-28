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

  static MutationOptions _loadUsersCompaniesMutation(
      {required int maxDistance,
      required int idUserAddress,
      String? companyName,
      String? companyTypeName,
      String? brandName}) {
    String signature =
        r'''mutation searchUsersCompanies($maxdistance: Int!, $p_id_useraddress: Int!''';
    String inputParams = r'''{
  searchnearcomapnies(args: {maxdistance: $maxdistance, p_id_useraddress: $p_id_useraddress}''';
    var variables = <String, dynamic>{
      "maxdistance": maxDistance,
      "p_id_useraddress": idUserAddress
    };
    if (companyName != null || companyTypeName != null || brandName != null) {
      inputParams += ', where{';
    }
    if (brandName != null) {
      signature += r', $_brandName: String = ""';
      inputParams += r', products: { brandname: {_like: $_brandName}}';
      variables.addEntries({"_brandName": brandName}.entries);
    }
    if (companyTypeName != null) {
      signature += r', $_companyTypeName: String = ""';
      inputParams += r', companytypename: {_like: $_companyTypeName}';
      variables.addEntries({"_companyTypeName": companyTypeName}.entries);
    }
    if (companyName != null) {
      signature += r', $_companyName: String = ""';
      inputParams += r', companyName: {_like: $_companyName}';
      variables.addEntries({"_companyName": companyName}.entries);
    }
    if (companyName != null || companyTypeName != null || brandName != null) {
      inputParams += '}';
    }
    signature += r')';
    inputParams += r')';

    String document = signature +
        inputParams +
        r'''{
    address{
      addresscity,
      addressstreetname,
      addressbuildingnum,
      id_address
    },
      companydeliveryprice,
      companyname,
      companytypename,
      id_company, 
      companystatusname
  }
}
''';

    return MutationOptions(document: gql(document), variables: variables);
  }

  static MutationOptions changeUsersCompanyMutation({
    required String userLogin,
    required int idCompany,
  }) {
    String document = r'''
mutation MyMutation($_similar: String = "", $id_company: Int = 10) {
  update_client(where: {userlogin: {_similar: $_similar}}, _set: {id_company: $id_company}) {
    returning {
      userlogin
      id_company
    }
  }
}

''';
    return MutationOptions(
        document: gql(document),
        variables: {"_similar": userLogin, "id_company": idCompany});
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
      idAddress: addressId,
    ));

    return response;
  }

  static Future<QueryResult> loadUsersCompanies(
      {required int addressId,
      required int maxDistance,
      String? companyName,
      String? companyTypeName,
      String? brandName}) async {
    var response = await AppsGraphClient.client.mutate(
        _loadUsersCompaniesMutation(
            idUserAddress: addressId,
            maxDistance: maxDistance,
            brandName: brandName,
            companyName: companyName,
            companyTypeName: companyTypeName));

    return response;
  }

  static Future<Map<String, String>> loadCardsInfo(
      Uint8List cardImage, Uint8List logoImage, int orgId) async {
    var cardString = await SupaBaseClient.client.storage
        .from('kursach')
        .uploadBinary('organiztion/$orgId/card.png', cardImage);
    var logoString = await SupaBaseClient.client.storage
        .from('kursach')
        .uploadBinary('organiztion/$orgId/logo.png', logoImage);

    return {'logo': logoString, 'card': cardString};
  }

  static Future<QueryResult> changeUsersCompany(
      {required int companyId, required String userLogin}) async {
    var response = await AppsGraphClient.client.mutate(
        changeUsersCompanyMutation(idCompany: companyId, userLogin: userLogin));
    return response;
  }

  static QueryOptions checkCompanyStatus({
    required int idCompany,
  }) {
    String document = r'''
query MyQuery($id_company: Int!) {
  company_by_pk(id_company: $id_company) {
    companystatusname
  }
}
''';
    return QueryOptions(document: gql(document), variables: {
      "id_company": idCompany,
    });
  }

  static Future<QueryResult> findCompanyStatusById(
      {required int companyId}) async {
    var response = await AppsGraphClient.client
        .query(checkCompanyStatus(idCompany: companyId));
    return response;
  }
}
