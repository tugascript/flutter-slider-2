// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'delete_image.data.gql.g.dart';

abstract class GDeleteImageData
    implements Built<GDeleteImageData, GDeleteImageDataBuilder> {
  GDeleteImageData._();

  factory GDeleteImageData([Function(GDeleteImageDataBuilder b) updates]) =
      _$GDeleteImageData;

  static void _initializeBuilder(GDeleteImageDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GDeleteImageData_deleteImage get deleteImage;
  static Serializer<GDeleteImageData> get serializer =>
      _$gDeleteImageDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteImageData.serializer, this)
          as Map<String, dynamic>);
  static GDeleteImageData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteImageData.serializer, json);
}

abstract class GDeleteImageData_deleteImage
    implements
        Built<GDeleteImageData_deleteImage,
            GDeleteImageData_deleteImageBuilder> {
  GDeleteImageData_deleteImage._();

  factory GDeleteImageData_deleteImage(
          [Function(GDeleteImageData_deleteImageBuilder b) updates]) =
      _$GDeleteImageData_deleteImage;

  static void _initializeBuilder(GDeleteImageData_deleteImageBuilder b) =>
      b..G__typename = 'Message';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get message;
  static Serializer<GDeleteImageData_deleteImage> get serializer =>
      _$gDeleteImageDataDeleteImageSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GDeleteImageData_deleteImage.serializer, this) as Map<String, dynamic>);
  static GDeleteImageData_deleteImage? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GDeleteImageData_deleteImage.serializer, json);
}
