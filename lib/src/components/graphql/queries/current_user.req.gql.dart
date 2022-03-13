// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/queries/current_user.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/queries/current_user.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/queries/current_user.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'current_user.req.gql.g.dart';

abstract class GCurrentUserReq
    implements
        Built<GCurrentUserReq, GCurrentUserReqBuilder>,
        _i1.OperationRequest<_i2.GCurrentUserData, _i3.GCurrentUserVars> {
  GCurrentUserReq._();

  factory GCurrentUserReq([Function(GCurrentUserReqBuilder b) updates]) =
      _$GCurrentUserReq;

  static void _initializeBuilder(GCurrentUserReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'CurrentUser')
    ..executeOnListen = true;
  _i3.GCurrentUserVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GCurrentUserData? Function(_i2.GCurrentUserData?, _i2.GCurrentUserData?)?
      get updateResult;
  _i2.GCurrentUserData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GCurrentUserData? parseData(Map<String, dynamic> json) =>
      _i2.GCurrentUserData.fromJson(json);
  static Serializer<GCurrentUserReq> get serializer =>
      _$gCurrentUserReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GCurrentUserReq.serializer, this)
          as Map<String, dynamic>);
  static GCurrentUserReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GCurrentUserReq.serializer, json);
}
