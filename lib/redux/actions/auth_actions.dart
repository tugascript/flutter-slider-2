import 'dart:async';

import 'package:graphql/client.dart' as gql;
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../models/auth/auth.dart';
import '../../models/auth/forms/confirm_login_form.dart';
import '../../models/auth/forms/login_form.dart';
import '../../models/auth/forms/register_form.dart';
import '../../models/local_message.dart';
import '../../models/user.dart';
import '../../utilities/constants.dart';
import '../../utilities/gql/gql_client.dart';
import '../../utilities/gql/queries.dart';
import '../../utilities/helpers/error_message.dart';
import '../app_selectors.dart';
import '../app_state.dart';

class Authenticate {
  final User user;

  Authenticate(this.user);
}

class SetAuthLoading {}

class Logout {}

class SetAuthMessage {
  final LocalMessage message;

  const SetAuthMessage(this.message);
}

class SetAuthEmail {
  final LocalMessage message;
  final String email;

  const SetAuthEmail({
    required this.message,
    required this.email,
  });
}

class RemoveAuthEmail {}

ThunkAction<AppState> registerUser(RegisterForm form) {
  return (Store<AppState> store) async {
    final authState = selectAuthState(store);

    if (authState.authenticated) return;

    store.dispatch(SetAuthLoading());
    final message = await errorMessage(Auth.register(form));

    if (message.id == kErrorID) {
      store.dispatch(SetAuthMessage(message));
      return;
    }

    store.dispatch(
      SetAuthEmail(
        message: message,
        email: form.email,
      ),
    );
  };
}

ThunkAction<AppState> loginUser(LoginForm form) {
  return (Store<AppState> store) async {
    final authState = selectAuthState(store);

    if (authState.authenticated) return;

    store.dispatch(SetAuthLoading());
    final message = await errorMessage(Auth.login(form));

    if (message.id == kErrorID) {
      store.dispatch(SetAuthMessage(message));
      return;
    }

    store.dispatch(
      SetAuthEmail(
        message: message,
        email: form.email,
      ),
    );
  };
}

ThunkAction<AppState> confirmUserLogin(ConfirmLoginForm form) {
  return (Store<AppState> store) async {
    final authState = selectAuthState(store);

    if (authState.authenticated) return;

    store.dispatch(SetAuthLoading());

    try {
      final authRes = await Auth.confirmLogin(form);
      GqlClient.updateToken(authRes.accessToken);
      final client = GqlClient().client;
      final result = await client.query(
        gql.QueryOptions(
          document: gql.gql(kGqlCurrentUser),
        ),
      );

      if (result.hasException) {
        store.dispatch(
          const SetAuthMessage(
            LocalMessage(
              id: kErrorID,
              message: 'Something went wrong.',
            ),
          ),
        );
        return;
      }

      store.dispatch(
        Authenticate(
          User.fromJson(result.data!['me']!),
        ),
      );
      _RefreshAction.startRefreshing();
    } catch (e) {
      store.dispatch(
        const SetAuthMessage(
          LocalMessage(
            id: kErrorID,
            message: 'Incorrect or invalid access code',
          ),
        ),
      );
    }
  };
}

ThunkAction<AppState> logoutUser() {
  return (Store<AppState> store) async {
    final authState = selectAuthState(store);

    if (!authState.authenticated) return;

    store.dispatch(SetAuthLoading());
    final message = await errorMessage(Auth.logout());

    if (message.id == kErrorID) {
      store.dispatch(SetAuthMessage(message));
      return;
    }

    GqlClient.updateToken('');
    store.dispatch(
      Logout(),
    );
    _RefreshAction.stopRefreshing();
  };
}

ThunkAction<AppState> refreshSession() {
  return (Store<AppState> store) async {
    final authState = selectAuthState(store);

    if (authState.authenticated) return;

    try {
      final authRes = await Auth.refreshAccess();
      GqlClient.updateToken(authRes.accessToken);
      final client = GqlClient().client;
      final result = await client.query(
        gql.QueryOptions(
          document: gql.gql(kGqlCurrentUser),
        ),
      );

      if (result.hasException) {
        store.dispatch(
          const SetAuthMessage(
            LocalMessage(
              id: kErrorID,
              message: 'Something went wrong.',
            ),
          ),
        );
        return;
      }

      store.dispatch(
        Authenticate(
          User.fromJson(result.data!['me']!),
        ),
      );
      _RefreshAction.startRefreshing();
    } catch (e) {
      return;
    }
  };
}

class _RefreshAction {
  static Timer? _timer;

  static void startRefreshing() {
    _timer = Timer.periodic(
      const Duration(
        minutes: 9,
        seconds: 50,
      ),
      (_) async {
        try {
          final authRes = await Auth.refreshAccess();
          GqlClient.updateToken(authRes.accessToken);
        } catch (e) {
          _timer?.cancel();
        }
      },
    );
  }

  static void stopRefreshing() {
    _timer?.cancel();
  }
}
