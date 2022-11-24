import 'package:graphql/client.dart';
import 'package:supabase/supabase.dart';

class AppsGraphClient {
  static final client = GraphQLClient(
      link: HttpLink("https://massive-raven-89.hasura.app/v1/graphql",
          defaultHeaders: {
            'x-hasura-admin-secret':
                '0ROBu6QENTh2SDcnC3Cysnbx1DOJCvcHvLDj0BH33BvphcJkQcxx2dapoZxVxnfn',
            'content-type': 'application/json'
          }),
      cache: GraphQLCache());

  static final websocketclient = GraphQLClient(
      link: WebSocketLink(
        'wss://massive-raven-89.hasura.app/v1/graphql',
        config: SocketClientConfig(
          autoReconnect: true,
          headers: {
            'x-hasura-admin-secret':
                '0ROBu6QENTh2SDcnC3Cysnbx1DOJCvcHvLDj0BH33BvphcJkQcxx2dapoZxVxnfn',
            'content-type': 'application/json'
          },
          inactivityTimeout: Duration(seconds: 30),
        ),
      ),
      cache: GraphQLCache());
}

class SupaBaseClient {
  static final supabaseUrl = 'https://xomxmkboeuoupjkirjnh.supabase.co';
  static final supabaseKey = String.fromEnvironment('bqcccZS4hECsxy2T');
  static final client = SupabaseClient(
    supabaseUrl,
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InhvbXhta2JvZXVvdXBqa2lyam5oIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjcwNTU0MjQsImV4cCI6MTk4MjYzMTQyNH0.VgT2SbVvihcVnBoHSNN7NYch5TYY-N_zgO0JAXWLImY",
  );
}
