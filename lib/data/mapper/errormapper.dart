import 'package:graphql_flutter/graphql_flutter.dart';

class ErrorMapper {
  static Map<String, String?> getReadableException(
      OperationException currentException) {
    String message = currentException
        .graphqlErrors.first.extensions!['internal']['error']['message'];
    String? hint = currentException.graphqlErrors.first.extensions!['internal']
        ['error']['hint'];
    return {'message': message, 'hint': hint};
  }
}
