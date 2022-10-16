import 'package:graphql_flutter/graphql_flutter.dart';

class AppsGraphClient {
  static final client = GraphQLClient(
      link: HttpLink("https://massive-raven-89.hasura.app/v1/graphql",
          defaultHeaders: {
            'x-hasura-admin-secret':
                '0ROBu6QENTh2SDcnC3Cysnbx1DOJCvcHvLDj0BH33BvphcJkQcxx2dapoZxVxnfn',
            'content-type': 'application/json'
          }),
      cache: GraphQLCache());
}
