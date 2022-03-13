// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'new_profile_picture.data.gql.g.dart';

abstract class GNewProfilePictureData
    implements Built<GNewProfilePictureData, GNewProfilePictureDataBuilder> {
  GNewProfilePictureData._();

  factory GNewProfilePictureData(
          [Function(GNewProfilePictureDataBuilder b) updates]) =
      _$GNewProfilePictureData;

  static void _initializeBuilder(GNewProfilePictureDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNewProfilePictureData_updateProfilePicture get updateProfilePicture;
  static Serializer<GNewProfilePictureData> get serializer =>
      _$gNewProfilePictureDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GNewProfilePictureData.serializer, this)
          as Map<String, dynamic>);
  static GNewProfilePictureData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GNewProfilePictureData.serializer, json);
}

abstract class GNewProfilePictureData_updateProfilePicture
    implements
        Built<GNewProfilePictureData_updateProfilePicture,
            GNewProfilePictureData_updateProfilePictureBuilder> {
  GNewProfilePictureData_updateProfilePicture._();

  factory GNewProfilePictureData_updateProfilePicture(
      [Function(GNewProfilePictureData_updateProfilePictureBuilder b)
          updates]) = _$GNewProfilePictureData_updateProfilePicture;

  static void _initializeBuilder(
          GNewProfilePictureData_updateProfilePictureBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String? get picture;
  static Serializer<GNewProfilePictureData_updateProfilePicture>
      get serializer => _$gNewProfilePictureDataUpdateProfilePictureSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GNewProfilePictureData_updateProfilePicture.serializer, this)
      as Map<String, dynamic>);
  static GNewProfilePictureData_updateProfilePicture? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GNewProfilePictureData_updateProfilePicture.serializer, json);
}
