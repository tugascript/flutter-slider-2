// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'find_records.var.gql.g.dart';

abstract class GFindRecordsVars
    implements Built<GFindRecordsVars, GFindRecordsVarsBuilder> {
  GFindRecordsVars._();

  factory GFindRecordsVars([Function(GFindRecordsVarsBuilder b) updates]) =
      _$GFindRecordsVars;

  int get userId;
  int get level;
  String? get after;
  static Serializer<GFindRecordsVars> get serializer =>
      _$gFindRecordsVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFindRecordsVars.serializer, this)
          as Map<String, dynamic>);
  static GFindRecordsVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFindRecordsVars.serializer, json);
}
