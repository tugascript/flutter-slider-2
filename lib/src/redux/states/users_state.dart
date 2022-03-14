import '../../components/models/base/paginated_state.dart';
import '../../components/models/user.dart';
import '../../components/models/user_profile.dart';

class UsersState implements PaginatedState {
  final List<User> users;
  final UserProfile? profile;
  final String? search;
  @override
  final bool hasNextPage;
  @override
  final bool loading;
  @override
  final String? cursor;

  const UsersState({
    required this.users,
    required this.hasNextPage,
    required this.loading,
    this.cursor,
    this.profile,
    this.search,
  });

  factory UsersState.initialState() {
    return const UsersState(
      users: [],
      hasNextPage: false,
      loading: false,
    );
  }

  @override
  UsersState copyWith({
    List<User>? users,
    bool? hasNextPage,
    String? cursor,
    bool? loading,
    UserProfile? profile,
    String? search,
  }) {
    return UsersState(
      users: users ?? this.users,
      hasNextPage: hasNextPage ?? this.hasNextPage,
      cursor: cursor ?? this.cursor,
      loading: loading ?? this.loading,
      profile: profile ?? this.profile,
      search: search ?? this.search,
    );
  }
}
