// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:ferry_exec/ferry_exec.dart' as _i1;
import 'package:gql_exec/gql_exec.dart' as _i4;
import 'package:v1/src/components/graphql/queries/high_scores.ast.gql.dart'
    as _i5;
import 'package:v1/src/components/graphql/queries/high_scores.data.gql.dart'
    as _i2;
import 'package:v1/src/components/graphql/queries/high_scores.var.gql.dart'
    as _i3;
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i6;

part 'high_scores.req.gql.g.dart';

abstract class GHighScoresReq
    implements
        Built<GHighScoresReq, GHighScoresReqBuilder>,
        _i1.OperationRequest<_i2.GHighScoresData, _i3.GHighScoresVars> {
  GHighScoresReq._();

  factory GHighScoresReq([Function(GHighScoresReqBuilder b) updates]) =
      _$GHighScoresReq;

  static void _initializeBuilder(GHighScoresReqBuilder b) => b
    ..operation =
        _i4.Operation(document: _i5.document, operationName: 'HighScores')
    ..executeOnListen = true;
  _i3.GHighScoresVars get vars;
  _i4.Operation get operation;
  _i4.Request get execRequest =>
      _i4.Request(operation: operation, variables: vars.toJson());
  String? get requestId;
  @BuiltValueField(serialize: false)
  _i2.GHighScoresData? Function(_i2.GHighScoresData?, _i2.GHighScoresData?)?
      get updateResult;
  _i2.GHighScoresData? get optimisticResponse;
  String? get updateCacheHandlerKey;
  Map<String, dynamic>? get updateCacheHandlerContext;
  _i1.FetchPolicy? get fetchPolicy;
  bool get executeOnListen;
  @override
  _i2.GHighScoresData? parseData(Map<String, dynamic> json) =>
      _i2.GHighScoresData.fromJson(json);
  static Serializer<GHighScoresReq> get serializer =>
      _$gHighScoresReqSerializer;
  Map<String, dynamic> toJson() =>
      (_i6.serializers.serializeWith(GHighScoresReq.serializer, this)
          as Map<String, dynamic>);
  static GHighScoresReq? fromJson(Map<String, dynamic> json) =>
      _i6.serializers.deserializeWith(GHighScoresReq.serializer, json);
}
