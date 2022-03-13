// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/queries/get_single_user.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/queries/get_single_user.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/queries/get_single_user.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'get_single_user.req.gql.g.dart';

abstract class GGetSingleUserReq
    implements
        Built<GGetSingleUserReq, GGetSingleUserReqBuilder>,
        _i1.OperationRequest<_i2.GGetSingleUserData, _i3.GGetSingleUserVars> {
  GGetSingleUserReq._();

  factory GGetSingleUserReq([Function(GGetSingleUserReqBuilder b) updates]) =
      _$GGetSingleUserReq;

  static void _initializeBuilder(GGetSingleUserReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'GetSingleUser')
    ..executeOnListen = true;
  _i3.GGetSingleUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GGetSingleUserData? Function(
      _i2.GGetSingleUserData?, _i2.GGetSingleUserData?)? get updateResult;
  _i2.GGetSingleUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GGetSingleUserData? parseData(Map<String, dynamic> json) =>
      _i2.GGetSingleUserData.fromJson(json);
  static Serializer<GGetSingleUserReq> get serializer =>
      _$gGetSingleUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GGetSingleUserReq.serializer, this)
          as Map<String, dynamic>);
  static GGetSingleUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GGetSingleUserReq.serializer, json);
}
