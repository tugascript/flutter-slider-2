import 'dart:convert' show utf8, base64Encode;

import '../actions/server_images_actions.dart';
import '../states/server_images_state.dart';

ServerImagesState serverImagesReducer(
  ServerImagesState state,
  dynamic action,
) {
  if (action is ImagesLoading) {
    return state.copyWith(loading: true);
  } else if (action is ImagesStopLoading) {
    return state.copyWith(loading: false);
  } else if (action is LoadImages) {
    return state.copyWith(
      images: [...state.images, ...action.images],
      hasNextPage: action.hasNextPage,
      cursor: action.endCursor,
      loading: false,
    );
  } else if (action is AddSingleImage) {
    final bytes = utf8.encode(action.image.id.toString());
    final base64 = base64Encode(bytes);
    return state.copyWith(
      images: [...state.images, action.image],
      cursor: base64,
      loading: false,
    );
  } else if (action is RemoveImage) {
    final images = state.images;
    final len = images.length;
    final index = images.indexWhere((img) => img.id == action.id);
    String? cursor;

    if (index < 0) return state;

    if (len > 1 && index == len - 1) {
      final image = images[len - 2];
      final bytes = utf8.encode(image.id.toString());
      cursor = base64Encode(bytes);
    }

    return state.copyWith(images: images, cursor: cursor, loading: false);
  }

  return state;
}
