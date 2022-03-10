import 'package:graphql/client.dart';
import '../constants.dart';

class GqlClient {
  // Private Static
  static const _url = kHost + 'graphql';
  static final _httpLink = HttpLink('http://' + _url);
  static final _wsLink = WebSocketLink('ws://' + _url);
  static String _token = '';

  // Link generation
  Link get _authLink =>
      AuthLink(getToken: () => 'Bearer $_token').concat(_httpLink);
  Link get _link => Link.split(
        (request) => request.isSubscription,
        _wsLink,
        _authLink,
      );

  // Public methods
  GraphQLClient get client => GraphQLClient(
        link: _link,
        cache: GraphQLCache(),
      );

  static void updateToken(String tk) {
    _token = tk;
  }
}
