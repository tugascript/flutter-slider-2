const kGqlUploadImage = r'''
  mutation UploadImage($image: Upload!) {
    addImage(image: $image) {
      id
      url
    }
  }
''';

const kGqlDeleteImage = r'''
  mutation DeleteImage($imageId: Int!) {
    deleteImage(imageId: $imageId) {
      message
    }
  }
''';
