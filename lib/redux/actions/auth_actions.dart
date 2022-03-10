import 'dart:async';

import 'package:graphql/client.dart' show QueryOptions, gql;
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../models/app_notification.dart';
import '../../models/auth/auth.dart';
import '../../models/auth/forms/confirm_login_form.dart';
import '../../models/auth/forms/login_form.dart';
import '../../models/auth/forms/register_form.dart';
import '../../models/enums/notification_type_enum.dart';
import '../../models/user.dart';
import '../../utilities/gql/gql_client.dart';
import '../../utilities/gql/queries.dart';
import '../../utilities/helpers/new_error_notification.dart';
import '../app_selectors.dart';
import '../app_state.dart';

class Authenticate {
  final User user;

  Authenticate(this.user);
}

class AddAuthNotification {
  final AppNotification notification;

  AddAuthNotification(this.notification);
}

class SetAuthLoading {}

class Logout {}

class SetAuthEmail {
  final String email;

  const SetAuthEmail({
    required this.email,
  });
}

class RemoveAuthEmail {}

class DismissAuthNotification {}

ThunkAction<AppState> dismissAuthNotification() {
  return (Store<AppState> store) async {
    store.dispatch(DismissAuthNotification());
  };
}

ThunkAction<AppState> registerUser(RegisterForm form) {
  return (Store<AppState> store) async {
    final authState = selectAuthState(store);

    if (authState.authenticated) return;

    store.dispatch(SetAuthLoading());
    final notification = await newErrorNotification(Auth.register(form));
    store.dispatch(AddAuthNotification(notification));

    if (notification.type == NotificationTypeEnum.error) return;

    store.dispatch(
      SetAuthEmail(
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
    final notification = await newErrorNotification(Auth.login(form));
    store.dispatch(AddAuthNotification(notification));

    if (notification.type == NotificationTypeEnum.error) return;

    store.dispatch(
      SetAuthEmail(
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
        QueryOptions(
          document: gql(kGqlCurrentUser),
        ),
      );

      if (result.hasException) {
        store.dispatch(
          AddAuthNotification(
            const AppNotification(
              type: NotificationTypeEnum.error,
              message: 'Incorrect or invalid access code',
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
        AddAuthNotification(
          const AppNotification(
            type: NotificationTypeEnum.error,
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
    final notification = await newErrorNotification(Auth.logout());
    store.dispatch(AddAuthNotification(notification));

    if (notification.type == NotificationTypeEnum.error) return;

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
        QueryOptions(
          document: gql(kGqlCurrentUser),
        ),
      );

      if (result.hasException) {
        store.dispatch(
          AddAuthNotification(
            const AppNotification(
              type: NotificationTypeEnum.error,
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
