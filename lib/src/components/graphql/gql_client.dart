import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

import '../../utilities/constants.dart';

class GqlClient {
  static const _url = kHost + 'graphql';
  static HttpLink get _httpLink => HttpLink(
        'http://' + _url,
        defaultHeaders: {'Authorization': 'Bearer $_token'},
      );
  static String get token => _token;
  static String _token = '';
  static Client get client => Client(
        link: _httpLink,
        defaultFetchPolicies: {
          OperationType.mutation: FetchPolicy.NoCache,
          OperationType.query: FetchPolicy.NoCache,
          OperationType.subscription: FetchPolicy.NoCache,
        },
      );

  static void updateToken(String tk) {
    _token = tk;
  }
}
