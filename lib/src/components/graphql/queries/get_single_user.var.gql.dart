// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'get_single_user.var.gql.g.dart';

abstract class GGetSingleUserVars
    implements Built<GGetSingleUserVars, GGetSingleUserVarsBuilder> {
  GGetSingleUserVars._();

  factory GGetSingleUserVars([Function(GGetSingleUserVarsBuilder b) updates]) =
      _$GGetSingleUserVars;

  String get username;
  int get level;
  static Serializer<GGetSingleUserVars> get serializer =>
      _$gGetSingleUserVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetSingleUserVars.serializer, this)
          as Map<String, dynamic>);
  static GGetSingleUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetSingleUserVars.serializer, json);
}
