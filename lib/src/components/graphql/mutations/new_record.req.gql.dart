// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/mutations/new_record.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/mutations/new_record.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/mutations/new_record.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'new_record.req.gql.g.dart';

abstract class GNewRecordReq
    implements
        Built<GNewRecordReq, GNewRecordReqBuilder>,
        _i1.OperationRequest<_i2.GNewRecordData, _i3.GNewRecordVars> {
  GNewRecordReq._();

  factory GNewRecordReq([Function(GNewRecordReqBuilder b) updates]) =
      _$GNewRecordReq;

  static void _initializeBuilder(GNewRecordReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'NewRecord')
    ..executeOnListen = true;
  _i3.GNewRecordVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GNewRecordData? Function(_i2.GNewRecordData?, _i2.GNewRecordData?)?
      get updateResult;
  _i2.GNewRecordData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GNewRecordData? parseData(Map<String, dynamic> json) =>
      _i2.GNewRecordData.fromJson(json);
  static Serializer<GNewRecordReq> get serializer => _$gNewRecordReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GNewRecordReq.serializer, this)
          as Map<String, dynamic>);
  static GNewRecordReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GNewRecordReq.serializer, json);
}
