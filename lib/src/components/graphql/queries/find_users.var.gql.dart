// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/schema.schema.gql.dart' as _i1;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i2;

part 'find_users.var.gql.g.dart';

abstract class GFindUsersVars
    implements Built<GFindUsersVars, GFindUsersVarsBuilder> {
  GFindUsersVars._();

  factory GFindUsersVars([Function(GFindUsersVarsBuilder b) updates]) =
      _$GFindUsersVars;

  String? get search;
  int? get first;
  String? get after;
  _i1.GUsersCursor? get cursor;
  static Serializer<GFindUsersVars> get serializer =>
      _$gFindUsersVarsSerializer;
  Map<String, dynamic> toJson() =>
      (_i2.serializers.serializeWith(GFindUsersVars.serializer, this)
          as Map<String, dynamic>);
  static GFindUsersVars? fromJson(Map<String, dynamic> json) =>
      _i2.serializers.deserializeWith(GFindUsersVars.serializer, json);
}
