// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/queries/find_users.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/queries/find_users.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/queries/find_users.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'find_users.req.gql.g.dart';

abstract class GFindUsersReq
    implements
        Built<GFindUsersReq, GFindUsersReqBuilder>,
        _i1.OperationRequest<_i2.GFindUsersData, _i3.GFindUsersVars> {
  GFindUsersReq._();

  factory GFindUsersReq([Function(GFindUsersReqBuilder b) updates]) =
      _$GFindUsersReq;

  static void _initializeBuilder(GFindUsersReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FindUsers')
    ..executeOnListen = true;
  _i3.GFindUsersVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFindUsersData? Function(_i2.GFindUsersData?, _i2.GFindUsersData?)?
      get updateResult;
  _i2.GFindUsersData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFindUsersData? parseData(Map<String, dynamic> json) =>
      _i2.GFindUsersData.fromJson(json);
  static Serializer<GFindUsersReq> get serializer => _$gFindUsersReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFindUsersReq.serializer, this)
          as Map<String, dynamic>);
  static GFindUsersReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFindUsersReq.serializer, json);
}
