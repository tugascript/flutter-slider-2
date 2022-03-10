import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../models/app_notification.dart';
import '../../models/enums/notification_type_enum.dart';
import '../../models/enums/theme_enum.dart';
import '../../models/extra_colors.dart';
import '../../redux/actions/auth_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/sizes/auth_snackbar_sizes.dart';
import '../../utilities/theme_generator.dart';

class AuthSnackbar extends StatelessWidget {
  const AuthSnackbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final width = MediaQuery.of(context).size.width;
    final sizes = AuthSnackbarSizes.getAuthSnackbarSizes(width);
    Timer? _timer;

    return StoreConnector<AppState, _AuthSnackbarViewModel>(
      distinct: true,
      converter: (store) => _AuthSnackbarViewModel.fromStore(store),
      builder: (_, viewModel) {
        if (viewModel.notification != null) {
          late final Color bgColor;

          switch (viewModel.notification?.type) {
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

          final style = TextStyle(
            fontSize: sizes.fontSize,
            color: viewModel.theme == ThemeEnum.dark
                ? colorScheme.primary
                : colorScheme.onPrimary,
          );

          _timer = Timer.periodic(const Duration(seconds: 3), (_) {
            viewModel.dismissNotification();
            _timer?.cancel();
          });

          return Container(
            decoration: BoxDecoration(
              color: bgColor,
              borderRadius: BorderRadius.all(
                Radius.circular(sizes.radius),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(sizes.padding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    viewModel.notification!.message,
                    style: style,
                  ),
                  TextButton(
                    onPressed: viewModel.dismissNotification,
                    child: Text(
                      'dismiss',
                      style: style,
                    ),
                  ),
                ],
              ),
            ),
          );
        }

        return const SizedBox.shrink();
      },
    );
  }
}

class _AuthSnackbarViewModel {
  final ThemeEnum theme;
  final ExtraColors colors;
  final AppNotification? notification;
  final VoidCallback dismissNotification;

  _AuthSnackbarViewModel({
    required this.theme,
    required this.colors,
    required this.notification,
    required this.dismissNotification,
  });

  factory _AuthSnackbarViewModel.fromStore(Store<AppState> store) {
    final theme = selectThemeState(store);
    return _AuthSnackbarViewModel(
      theme: theme,
      colors: ThemeGenerator(theme).getExtraColors,
      notification: selectAuthState(store).notification,
      dismissNotification: () {
        store.dispatch(DismissAuthNotification());
      },
    );
  }

  @override
  int get hashCode => theme.index + (notification != null ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
