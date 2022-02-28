import '../../models/local_message.dart';
import '../constants.dart';

Future<LocalMessage> errorMessage(Future<LocalMessage> future) async {
  try {
    return await future;
  } catch (e) {
    String message = 'Something went wrong.';

    if (e is String) message = e;

    return LocalMessage(
      id: kErrorID,
      message: message,
    );
  }
}
