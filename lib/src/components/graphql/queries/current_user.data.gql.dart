// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'current_user.data.gql.g.dart';

abstract class GCurrentUserData
    implements Built<GCurrentUserData, GCurrentUserDataBuilder> {
  GCurrentUserData._();

  factory GCurrentUserData([Function(GCurrentUserDataBuilder b) updates]) =
      _$GCurrentUserData;

  static void _initializeBuilder(GCurrentUserDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GCurrentUserData_me get me;
  static Serializer<GCurrentUserData> get serializer =>
      _$gCurrentUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCurrentUserData.serializer, this)
          as Map<String, dynamic>);
  static GCurrentUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCurrentUserData.serializer, json);
}

abstract class GCurrentUserData_me
    implements Built<GCurrentUserData_me, GCurrentUserData_meBuilder> {
  GCurrentUserData_me._();

  factory GCurrentUserData_me(
      [Function(GCurrentUserData_meBuilder b) updates]) = _$GCurrentUserData_me;

  static void _initializeBuilder(GCurrentUserData_meBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get username;
  String? get picture;
  int get maxLevel;
  static Serializer<GCurrentUserData_me> get serializer =>
      _$gCurrentUserDataMeSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GCurrentUserData_me.serializer, this)
          as Map<String, dynamic>);
  static GCurrentUserData_me? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GCurrentUserData_me.serializer, json);
}
