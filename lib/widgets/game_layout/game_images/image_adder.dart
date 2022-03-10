import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:image_picker/image_picker.dart';
import 'package:redux/redux.dart';

import '../../../models/enums/game_status_enum.dart';
import '../../../redux/actions/image_editor_actions.dart';
import '../../../redux/actions/single_player_actions.dart';
import '../../../redux/app_selectors.dart';
import '../../../redux/app_state.dart';
import '../../../screens/image_editor_screen.dart';
import '../../../widgets/game_layout/game_images/image_container.dart';
import '../../auth/login_modal_form.dart';

class ImageAdder extends StatefulWidget {
  const ImageAdder({Key? key}) : super(key: key);

  @override
  State<ImageAdder> createState() => _ImageAdderState();
}

class _ImageAdderState extends State<ImageAdder> {
  final ImagePicker _picker = ImagePicker();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ImageAdderViewModel>(
      distinct: true,
      converter: (store) => _ImageAdderViewModel.fromStore(store),
      onWillChange: (_, viewModel) {
        if (viewModel.editorOpen) {
          Navigator.pushNamed(context, ImageEditorScreen.routeName);
        }
      },
      builder: (_, viewModel) => ImageContainer(
        image: 'images/add.jpg',
        network: false,
        onPressed: viewModel.authenticated
            ? () async {
                viewModel.stopTimer();
                final file = await _picker.pickImage(
                  source: ImageSource.gallery,
                );

                if (file != null) {
                  viewModel.uploadImage(file);
                }
              }
            : () => showDialog<String>(
                  context: context,
                  builder: (context) => LoginModalForm(
                    ctx: context,
                  ),
                ),
        icon: Icons.add_photo_alternate_rounded,
      ),
    );
  }
}

class _ImageAdderViewModel {
  final GameStatusEnum gameStatus;
  final bool authenticated;
  final bool editorOpen;
  final VoidCallback stopTimer;
  final void Function(XFile) uploadImage;

  _ImageAdderViewModel({
    required this.gameStatus,
    required this.authenticated,
    required this.editorOpen,
    required this.stopTimer,
    required this.uploadImage,
  });

  factory _ImageAdderViewModel.fromStore(Store<AppState> store) {
    final gameStatus = selectSingleGameState(store).status;

    return _ImageAdderViewModel(
      gameStatus: gameStatus,
      authenticated: selectAuthState(store).authenticated,
      editorOpen: selectImageEditorState(store).open,
      stopTimer: () {
        if (gameStatus == GameStatusEnum.ongoing) {
          store.dispatch(TimerActions.stopTimer());
        }
      },
      uploadImage: (file) {
        store.dispatch(addImage(file));
      },
    );
  }

  @override
  int get hashCode =>
      gameStatus.index + (editorOpen ? 1 : 0) + (authenticated ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
