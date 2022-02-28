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
  } else if (action is SetAuthMessage) {
    return state.copyWith(
      message: action.message,
      loading: false,
    );
  } else if (action is SetAuthEmail) {
    return state.copyWith(
      email: action.email,
      message: action.message,
      loading: false,
    );
  } else if (action is RemoveAuthEmail) {
    return state.copyWith(email: null);
  }

  return state;
}
