import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import '../../redux/actions/image_editor_actions.dart';
import '../../redux/app_selectors.dart';
import '../../redux/app_state.dart';

class CloseEditorButton extends StatelessWidget {
  final double width;
  final double height;
  final double borderRadius;
  final double borderWidth;
  final double iconSize;
  final Color mainColor;

  const CloseEditorButton({
    Key? key,
    required this.width,
    required this.height,
    required this.borderRadius,
    required this.borderWidth,
    required this.iconSize,
    required this.mainColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: StoreConnector<AppState, _CloseEditorButtonViewModel>(
        distinct: true,
        converter: (store) => _CloseEditorButtonViewModel.fromStore(store),
        builder: (_, viewModel) {
          return OutlinedButton(
            onPressed: () {
              viewModel.closeEditor();
            },
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(borderRadius),
                ),
              ),
              side: BorderSide(
                color: mainColor,
                width: borderWidth,
              ),
            ),
            child: Icon(
              Icons.close_rounded,
              size: iconSize,
              color: mainColor,
            ),
          );
        },
      ),
    );
  }
}

class _CloseEditorButtonViewModel {
  final bool open;
  final VoidCallback closeEditor;

  _CloseEditorButtonViewModel({
    required this.open,
    required this.closeEditor,
  });

  factory _CloseEditorButtonViewModel.fromStore(Store<AppState> store) {
    return _CloseEditorButtonViewModel(
      open: selectImageEditorState(store).open,
      closeEditor: () {
        store.dispatch(CloseEditor());
      },
    );
  }

  @override
  int get hashCode => open ? 1 : 0;

  @override
  bool operator ==(Object other) {
    return hashCode == other.hashCode;
  }
}
