import '../../models/app_notification.dart';
import '../../models/enums/notification_type_enum.dart';

Future<AppNotification> newErrorNotification(
  Future<AppNotification> future,
) async {
  try {
    return await future;
  } catch (e) {
    String message = 'Something went wrong.';

    if (e is String) message = e;

    return AppNotification(
      type: NotificationTypeEnum.error,
      message: message,
    );
  }
}
