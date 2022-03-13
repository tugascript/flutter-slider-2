import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

import '../../utilities/constants.dart';

class GqlClient {
  static const _url = kHost + 'graphql';
  static HttpLink get _httpLink => HttpLink(
        'http://' + _url,
        defaultHeaders: {'Authorization': 'Bearer $_token'},
      );
  static String _token = '';

  Client get client => Client(
        link: _httpLink,
      );

  static void updateToken(String tk) {
    _token = tk;
  }
}
