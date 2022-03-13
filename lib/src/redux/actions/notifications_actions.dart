import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../../components/models/app_notification.dart';
import '../app_state.dart';

class AddNotification {
  final AppNotification notification;

  AddNotification(this.notification);
}

class DismissNotification {
  final int index;

  DismissNotification(this.index);
}

ThunkAction<AppState> dismissNotification(int index) {
  return (Store<AppState> store) async {
    store.dispatch(DismissNotification(index));
  };
}
