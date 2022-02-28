import 'dart:io';
import 'dart:typed_data';

import 'package:image_picker/image_picker.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../app_state.dart';

class OpenEditor {}

class CloseEditor {}

class EditorLoading {}

class EditorStopLoading {}

class SetImage {
  final Uint8List image;

  SetImage(this.image);
}

ThunkAction<AppState> addImage(XFile file) {
  return (Store<AppState> store) async {
    store.dispatch(EditorLoading());
    final bytes = await file.readAsBytes();
    store.dispatch(SetImage(bytes));
  };
}
