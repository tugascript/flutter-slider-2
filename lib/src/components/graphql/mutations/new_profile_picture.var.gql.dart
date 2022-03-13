// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:http/http.dart' as _i1;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i2;

part 'new_profile_picture.var.gql.g.dart';

abstract class GNewProfilePictureVars
    implements Built<GNewProfilePictureVars, GNewProfilePictureVarsBuilder> {
  GNewProfilePictureVars._();

  factory GNewProfilePictureVars(
          [Function(GNewProfilePictureVarsBuilder b) updates]) =
      _$GNewProfilePictureVars;

  _i1.MultipartFile get picture;
  static Serializer<GNewProfilePictureVars> get serializer =>
      _$gNewProfilePictureVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GNewProfilePictureVars.serializer, this)
          as Map<String, dynamic>);
  static GNewProfilePictureVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GNewProfilePictureVars.serializer, json);
}
