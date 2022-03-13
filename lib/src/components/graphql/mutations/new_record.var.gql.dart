// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/schema.schema.gql.dart' as _i1;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i2;

part 'new_record.var.gql.g.dart';

abstract class GNewRecordVars
    implements Built<GNewRecordVars, GNewRecordVarsBuilder> {
  GNewRecordVars._();

  factory GNewRecordVars([Function(GNewRecordVarsBuilder b) updates]) =
      _$GNewRecordVars;

  _i1.GRecordInput get input;
  static Serializer<GNewRecordVars> get serializer =>
      _$gNewRecordVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GNewRecordVars.serializer, this)
          as Map<String, dynamic>);
  static GNewRecordVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GNewRecordVars.serializer, json);
}
