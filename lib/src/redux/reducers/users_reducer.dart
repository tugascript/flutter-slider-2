import 'package:v1/src/redux/actions/users_actions.dart';
import 'package:v1/src/redux/states/users_state.dart';

UsersState usersReducer(UsersState state, dynamic action) {
  if (action is UsersLoading) {
    return state.copyWith(loading: true);
  } else if (action is UsersStopLoading) {
    return state.copyWith(loading: false);
  } else if (action is LoadUsers) {
    return state.copyWith(
      users: state.search == null ||
              (action.search != null &&
                  state.search != null &&
                  state.search == action.search)
          ? [...state.users, ...action.users]
          : action.users,
      hasNextPage: action.hasNextPage,
      cursor: action.endCursor,
      loading: false,
    );
  } else if (action is LoadProfile) {
    return state.copyWith(profile: action.profile);
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
        ),
      ),
    );
  }

  return state;
}
