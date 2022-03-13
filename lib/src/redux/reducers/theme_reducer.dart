import '../../components/models/enums/theme_enum.dart';
import '../actions/theme_actions.dart';

ThemeEnum themeReducer(ThemeEnum state, dynamic action) {
  if (action is ChangeTheme) {
    return action.themeEnum;
  }

  return state;
}
