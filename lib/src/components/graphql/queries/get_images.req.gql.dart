// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/queries/get_images.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/queries/get_images.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/queries/get_images.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'get_images.req.gql.g.dart';

abstract class GGetImagesReq
    implements
        Built<GGetImagesReq, GGetImagesReqBuilder>,
        _i1.OperationRequest<_i2.GGetImagesData, _i3.GGetImagesVars> {
  GGetImagesReq._();

  factory GGetImagesReq([Function(GGetImagesReqBuilder b) updates]) =
      _$GGetImagesReq;

  static void _initializeBuilder(GGetImagesReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetImages')
    ..executeOnListen = true;
  _i3.GGetImagesVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetImagesData? Function(_i2.GGetImagesData?, _i2.GGetImagesData?)?
      get updateResult;
  _i2.GGetImagesData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetImagesData? parseData(Map<String, dynamic> json) =>
      _i2.GGetImagesData.fromJson(json);
  static Serializer<GGetImagesReq> get serializer => _$gGetImagesReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetImagesReq.serializer, this)
          as Map<String, dynamic>);
  static GGetImagesReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetImagesReq.serializer, json);
}
