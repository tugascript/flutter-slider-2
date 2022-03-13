// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/mutations/upload_image.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/mutations/upload_image.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/mutations/upload_image.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'upload_image.req.gql.g.dart';

abstract class GUploadImageReq
    implements
        Built<GUploadImageReq, GUploadImageReqBuilder>,
        _i1.OperationRequest<_i2.GUploadImageData, _i3.GUploadImageVars> {
  GUploadImageReq._();

  factory GUploadImageReq([Function(GUploadImageReqBuilder b) updates]) =
      _$GUploadImageReq;

  static void _initializeBuilder(GUploadImageReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'UploadImage')
    ..executeOnListen = true;
  _i3.GUploadImageVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GUploadImageData? Function(_i2.GUploadImageData?, _i2.GUploadImageData?)?
      get updateResult;
  _i2.GUploadImageData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GUploadImageData? parseData(Map<String, dynamic> json) =>
      _i2.GUploadImageData.fromJson(json);
  static Serializer<GUploadImageReq> get serializer =>
      _$gUploadImageReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GUploadImageReq.serializer, this)
          as Map<String, dynamic>);
  static GUploadImageReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GUploadImageReq.serializer, json);
}
