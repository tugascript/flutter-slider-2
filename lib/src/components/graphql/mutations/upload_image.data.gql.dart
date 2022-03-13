// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'upload_image.data.gql.g.dart';

abstract class GUploadImageData
    implements Built<GUploadImageData, GUploadImageDataBuilder> {
  GUploadImageData._();

  factory GUploadImageData([Function(GUploadImageDataBuilder b) updates]) =
      _$GUploadImageData;

  static void _initializeBuilder(GUploadImageDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GUploadImageData_addImage get addImage;
  static Serializer<GUploadImageData> get serializer =>
      _$gUploadImageDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUploadImageData.serializer, this)
          as Map<String, dynamic>);
  static GUploadImageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GUploadImageData.serializer, json);
}

abstract class GUploadImageData_addImage
    implements
        Built<GUploadImageData_addImage, GUploadImageData_addImageBuilder> {
  GUploadImageData_addImage._();

  factory GUploadImageData_addImage(
          [Function(GUploadImageData_addImageBuilder b) updates]) =
      _$GUploadImageData_addImage;

  static void _initializeBuilder(GUploadImageData_addImageBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get url;
  static Serializer<GUploadImageData_addImage> get serializer =>
      _$gUploadImageDataAddImageSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GUploadImageData_addImage.serializer, this)
          as Map<String, dynamic>);
  static GUploadImageData_addImage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GUploadImageData_addImage.serializer, json);
}
