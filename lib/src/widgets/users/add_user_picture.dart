import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';
import 'package:redux/redux.dart';

import '../../../screens/image_editor_screen.dart';
import '../../redux/actions/image_editor_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';
import '../../utilities/arguments/image_editor_screen_arguments.dart';
import 'user_avatar.dart';

class AddUserPicture extends StatefulWidget {
  final double size;
  final String username;
  final bool invert;
  final String? picture;

  const AddUserPicture({
    Key? key,
    required this.size,
    required this.username,
    this.invert = false,
    this.picture,
  }) : super(key: key);

  @override
  State<AddUserPicture> createState() => _AddUserPictureState();
}

class _AddUserPictureState extends State<AddUserPicture> {
  final ImagePicker _picker = ImagePicker();
  bool _entered = false;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _AddUserPictureViewModel>(
      distinct: true,
      converter: (store) => _AddUserPictureViewModel.fromStore(store),
      onWillChange: (_, viewModel) {
        if (viewModel.editorOpen) {
          GoRouter.of(context).push(
            ImageEditorScreen.routeName,
            extra: const ImageEditorScreenArguments(true),
          );
        }
      },
      builder: (_, viewModel) => MouseRegion(
        onEnter: (_) {
          setState(() {
            _entered = true;
          });
        },
        onExit: (_) {
          setState(() {
            _entered = false;
          });
        },
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: () async {
            final file = await _picker.pickImage(
              source: ImageSource.gallery,
            );

            if (file != null) {
              viewModel.uploadImage(file);
            }
          },
          child: Stack(
            children: [
              UserAvatar(
                size: widget.size,
                username: widget.username,
                picture: widget.picture,
                invert: widget.invert,
              ),
              SizedBox(
                height: widget.size,
                width: widget.size,
                child: AnimatedOpacity(
                  opacity: _entered ? 0.25 : 0,
                  duration: const Duration(milliseconds: 250),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade800,
                    child: Icon(
                      Icons.add_photo_alternate_rounded,
                      size: widget.size / 3,
                      color: Colors.grey.shade200,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _AddUserPictureViewModel {
  final bool editorOpen;
  final void Function(XFile) uploadImage;

  _AddUserPictureViewModel({
    required this.editorOpen,
    required this.uploadImage,
  });

  factory _AddUserPictureViewModel.fromStore(Store<AppState> store) {
    return _AddUserPictureViewModel(
      editorOpen: selectImageEditorState(store).open,
      uploadImage: (file) => store.dispatch(addImage(file)),
    );
  }

  @override
  int get hashCode => (editorOpen ? 1 : 0);

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
