// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as _i1;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i2;

part 'upload_image.var.gql.g.dart';

abstract class GUploadImageVars
    implements Built<GUploadImageVars, GUploadImageVarsBuilder> {
  GUploadImageVars._();

  factory GUploadImageVars([Function(GUploadImageVarsBuilder b) updates]) =
      _$GUploadImageVars;

  _i1.MultipartFile get image;
  static Serializer<GUploadImageVars> get serializer =>
      _$gUploadImageVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GUploadImageVars.serializer, this)
          as Map<String, dynamic>);
  static GUploadImageVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GUploadImageVars.serializer, json);
}
