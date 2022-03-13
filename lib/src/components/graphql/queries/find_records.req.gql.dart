// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/queries/find_records.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/queries/find_records.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/queries/find_records.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'find_records.req.gql.g.dart';

abstract class GFindRecordsReq
    implements
        Built<GFindRecordsReq, GFindRecordsReqBuilder>,
        _i1.OperationRequest<_i2.GFindRecordsData, _i3.GFindRecordsVars> {
  GFindRecordsReq._();

  factory GFindRecordsReq([Function(GFindRecordsReqBuilder b) updates]) =
      _$GFindRecordsReq;

  static void _initializeBuilder(GFindRecordsReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'FindRecords')
    ..executeOnListen = true;
  _i3.GFindRecordsVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GFindRecordsData? Function(_i2.GFindRecordsData?, _i2.GFindRecordsData?)?
      get updateResult;
  _i2.GFindRecordsData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GFindRecordsData? parseData(Map<String, dynamic> json) =>
      _i2.GFindRecordsData.fromJson(json);
  static Serializer<GFindRecordsReq> get serializer =>
      _$gFindRecordsReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GFindRecordsReq.serializer, this)
          as Map<String, dynamic>);
  static GFindRecordsReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GFindRecordsReq.serializer, json);
}
