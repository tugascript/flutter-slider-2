import 'package:v1/src/components/models/user.dart';

import '../actions/users_actions.dart';
import '../states/users_state.dart';

UsersState usersReducer(UsersState state, dynamic action) {
  if (action is UsersLoading) {
    return state.copyWith(loading: true);
  } else if (action is UsersStopLoading) {
    return state.copyWith(loading: false);
  } else if (action is LoadUsers) {
    late final List<User> users;

    if (action.search == null || state.search == action.search) {
      users = [...state.users, ...action.users];
    } else {
      users = action.users;
    }

    return state.copyWith(
      users: users,
      hasNextPage: action.hasNextPage,
      cursor: action.endCursor,
      loading: false,
      search: action.search,
    );
  } else if (action is LoadProfile) {
    return state.copyWith(
      profile: action.profile,
      loading: false,
    );
  } else if (action is LoadProfileRecords) {
    if (state.profile == null) return state;

    final profile = state.profile!;
    final recordsList = profile.recordsList;
    return state.copyWith(
      profile: profile.copyWith(
        recordsList: recordsList.copyWith(
          records: recordsList.level == action.level
              ? [...recordsList.records, ...action.records]
              : action.records,
          hasNextPage: action.hasNextPage,
          cursor: action.cursor,
          level: action.level,
          loading: action.loading,
        ),
      ),
    );
  } else if (action is ProfileLoading) {
    if (state.profile == null) return state;

    return state.copyWith(
      profile: state.profile!.copyWith(
        recordsList: state.profile!.recordsList.copyWith(
          loading: true,
        ),
      ),
    );
  } else if (action is ProfileStopLoading) {
    if (state.profile == null) return state;

    return state.copyWith(
      profile: state.profile!.copyWith(
        recordsList: state.profile!.recordsList.copyWith(
          loading: false,
        ),
      ),
    );
  } else if (action is ProfileAddPicture) {
    if (state.profile == null) return state;

    return state.copyWith(
      profile: state.profile!.copyWith(
        user: state.profile!.user.copyWith(picture: action.url),
      ),
    );
  }

  return state;
}
