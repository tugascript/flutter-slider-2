import 'enums/notification_type_enum.dart';

class AppNotification {
  final NotificationTypeEnum type;
  final String message;

  const AppNotification({
    required this.type,
    required this.message,
  });
}
