import '../actions/auth_actions.dart';
import '../states/auth_state.dart';

AuthState authReducer(AuthState state, dynamic action) {
  if (action is Authenticate) {
    return state.copyWith(
      authenticated: true,
      user: action.user,
    );
  } else if (action is SetAuthLoading) {
    return state.copyWith(loading: true);
  } else if (action is Logout) {
    return state.copyWith(
      user: null,
      loading: false,
      authenticated: false,
    );
  } else if (action is SetAuthEmail) {
    return state.copyWith(
      email: action.email,
      loading: false,
    );
  } else if (action is RemoveAuthEmail) {
    return state.copyWith(email: null);
  } else if (action is AddAuthNotification) {
    return state.copyWith(notification: action.notification);
  } else if (action is DismissAuthNotification) {
    return state.dismissNotification();
  }

  return state;
}
