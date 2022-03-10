import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_notification.dart';
import '../../models/enums/notification_type_enum.dart';
import '../../models/enums/theme_enum.dart';
import '../../models/extra_colors.dart';
import '../../redux/actions/notifications_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/sizes/font_size.dart';
import '../../utilities/theme_generator.dart';

class ShowNotifications extends StatelessWidget {
  const ShowNotifications({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final fontSize = FontSize.getFontSize(width);

    return StoreConnector<AppState, _ShowNotificationsViewModel>(
      distinct: true,
      converter: (store) => _ShowNotificationsViewModel.fromStore(store),
      builder: (_, viewModel) {
        for (int i = 0; i < viewModel.notifications.length; i++) {
          final notification = viewModel.notifications[i];
          late final Color bgColor;

          switch (notification.type) {
            case NotificationTypeEnum.success:
              bgColor = viewModel.colors.success;
              break;
            case NotificationTypeEnum.warning:
              bgColor = viewModel.colors.warning;
              break;
            case NotificationTypeEnum.error:
            default:
              bgColor = viewModel.colors.danger;
              break;
          }

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              backgroundColor: bgColor,
              content: Text(
                notification.message,
                style: TextStyle(fontSize: fontSize),
              ),
              action: SnackBarAction(
                label: 'Dismiss',
                onPressed: () {
                  viewModel.dismissNotification(i);
                },
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

class _ShowNotificationsViewModel {
  final List<AppNotification> notifications;
  final ThemeEnum theme;
  final ExtraColors colors;
  final void Function(int) dismissNotification;

  _ShowNotificationsViewModel({
    required this.notifications,
    required this.theme,
    required this.colors,
    required this.dismissNotification,
  });

  factory _ShowNotificationsViewModel.fromStore(Store<AppState> store) {
    final theme = selectThemeState(store);
    return _ShowNotificationsViewModel(
      notifications: selectNotifications(store),
      theme: theme,
      colors: ThemeGenerator(theme).getExtraColors,
      dismissNotification: (int index) {
        store.dispatch(DismissNotification(index));
      },
    );
  }

  @override
  int get hashCode => notifications.length + theme.index;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
