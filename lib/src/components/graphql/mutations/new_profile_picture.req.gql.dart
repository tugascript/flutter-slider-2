// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/mutations/new_profile_picture.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/mutations/new_profile_picture.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/mutations/new_profile_picture.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'new_profile_picture.req.gql.g.dart';

abstract class GNewProfilePictureReq
    implements
        Built<GNewProfilePictureReq, GNewProfilePictureReqBuilder>,
        _i1.OperationRequest<_i2.GNewProfilePictureData,
            _i3.GNewProfilePictureVars> {
  GNewProfilePictureReq._();

  factory GNewProfilePictureReq(
          [Function(GNewProfilePictureReqBuilder b) updates]) =
      _$GNewProfilePictureReq;

  static void _initializeBuilder(GNewProfilePictureReqBuilder b) => b
    ..operation = _i4.Operation(
        document: _i5.document, operationName: 'NewProfilePicture')
    ..executeOnListen = true;
  _i3.GNewProfilePictureVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GNewProfilePictureData? Function(
          _i2.GNewProfilePictureData?, _i2.GNewProfilePictureData?)?
      get updateResult;
  _i2.GNewProfilePictureData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GNewProfilePictureData? parseData(Map<String, dynamic> json) =>
      _i2.GNewProfilePictureData.fromJson(json);
  static Serializer<GNewProfilePictureReq> get serializer =>
      _$gNewProfilePictureReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GNewProfilePictureReq.serializer, this)
          as Map<String, dynamic>);
  static GNewProfilePictureReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GNewProfilePictureReq.serializer, json);
}
