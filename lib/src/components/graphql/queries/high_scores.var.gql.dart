// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'high_scores.var.gql.g.dart';

abstract class GHighScoresVars
    implements Built<GHighScoresVars, GHighScoresVarsBuilder> {
  GHighScoresVars._();

  factory GHighScoresVars([Function(GHighScoresVarsBuilder b) updates]) =
      _$GHighScoresVars;

  int get level;
  int? get first;
  String? get after;
  static Serializer<GHighScoresVars> get serializer =>
      _$gHighScoresVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GHighScoresVars.serializer, this)
          as Map<String, dynamic>);
  static GHighScoresVars? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GHighScoresVars.serializer, json);
}
