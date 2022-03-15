import '../actions/image_editor_actions.dart';
import '../states/image_editor_state.dart';

ImageEditorState imageEditorReducer(ImageEditorState state, dynamic action) {
  if (action is OpenEditor) {
    return state.copyWith(open: true);
  } else if (action is CloseEditor) {
    return state.copyWith(
      open: false,
      loading: false,
    );
  } else if (action is EditorLoading) {
    return state.copyWith(loading: true);
  } else if (action is EditorStopLoading) {
    return state.copyWith(loading: false);
  } else if (action is SetImage) {
    return state.copyWith(
      image: action.image,
      loading: false,
    );
  }

  return state;
}
