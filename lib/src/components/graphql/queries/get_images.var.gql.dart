// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'get_images.var.gql.g.dart';

abstract class GGetImagesVars
    implements Built<GGetImagesVars, GGetImagesVarsBuilder> {
  GGetImagesVars._();

  factory GGetImagesVars([Function(GGetImagesVarsBuilder b) updates]) =
      _$GGetImagesVars;

  int get first;
  String? get after;
  static Serializer<GGetImagesVars> get serializer =>
      _$gGetImagesVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetImagesVars.serializer, this)
          as Map<String, dynamic>);
  static GGetImagesVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetImagesVars.serializer, json);
}
