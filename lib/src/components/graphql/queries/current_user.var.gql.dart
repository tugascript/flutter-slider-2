// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'current_user.var.gql.g.dart';

abstract class GCurrentUserVars
    implements Built<GCurrentUserVars, GCurrentUserVarsBuilder> {
  GCurrentUserVars._();

  factory GCurrentUserVars([Function(GCurrentUserVarsBuilder b) updates]) =
      _$GCurrentUserVars;

  static Serializer<GCurrentUserVars> get serializer =>
      _$gCurrentUserVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCurrentUserVars.serializer, this)
          as Map<String, dynamic>);
  static GCurrentUserVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCurrentUserVars.serializer, json);
}
