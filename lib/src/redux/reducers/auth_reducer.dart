import '../actions/auth_actions.dart';
import '../states/auth_state.dart';

AuthState authReducer(AuthState state, dynamic action) {
  if (action is Authenticate) {
    return state.copyWith(
      authenticated: true,
      user: action.user,
      loading: false,
    );
  } else if (action is SetAuthLoading) {
    return state.copyWith(loading: true);
  } else if (action is AuthStopLoading) {
    return state.copyWith(loading: false);
  } else if (action is Logout) {
    return AuthState.initialState();
  } else if (action is SetAuthEmail) {
    return state.copyWith(
      email: action.email,
      loading: false,
    );
  } else if (action is RemoveAuthEmail) {
    return state.setEmailNull();
  } else if (action is AddAuthNotification) {
    return state.copyWith(
      notification: action.notification,
      loading: false,
    );
  } else if (action is DismissAuthNotification) {
    return state.dismissNotification();
  } else if (action is UploadProfilePicture) {
    if (state.user == null) return state;

    return state.copyWith(
      user: state.user!.copyWith(
        picture: action.url,
      ),
      loading: false,
    );
  }

  return state;
}
