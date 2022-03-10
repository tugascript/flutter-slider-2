import '../../models/app_notification.dart';
import '../actions/notifications_actions.dart';

List<AppNotification> notificationsReducer(
  List<AppNotification> state,
  dynamic action,
) {
  if (action is AddNotification) {
    return [...state, action.notification];
  } else if (action is DismissNotification) {
    final newState = <AppNotification>[];

    for (int i = 0; i < state.length; i++) {
      if (i != action.index) {
        newState.add(state[i]);
      }
    }

    return newState;
  }

  return state;
}
