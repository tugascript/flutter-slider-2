import 'records_list.dart';
import 'user.dart';

class UserProfile {
  final User user;
  final RecordsList recordsList;

  const UserProfile({
    required this.user,
    required this.recordsList,
  });

  UserProfile copyWith({
    User? user,
    RecordsList? recordsList,
  }) {
    return UserProfile(
      user: user ?? this.user,
      recordsList: recordsList ?? this.recordsList,
    );
  }
}
