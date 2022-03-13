// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'delete_image.var.gql.g.dart';

abstract class GDeleteImageVars
    implements Built<GDeleteImageVars, GDeleteImageVarsBuilder> {
  GDeleteImageVars._();

  factory GDeleteImageVars([Function(GDeleteImageVarsBuilder b) updates]) =
      _$GDeleteImageVars;

  int get imageId;
  static Serializer<GDeleteImageVars> get serializer =>
      _$gDeleteImageVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GDeleteImageVars.serializer, this)
          as Map<String, dynamic>);
  static GDeleteImageVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GDeleteImageVars.serializer, json);
}
