// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'high_scores.data.gql.g.dart';

abstract class GHighScoresData
    implements Built<GHighScoresData, GHighScoresDataBuilder> {
  GHighScoresData._();

  factory GHighScoresData([Function(GHighScoresDataBuilder b) updates]) =
      _$GHighScoresData;

  static void _initializeBuilder(GHighScoresDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GHighScoresData_getHighScores get getHighScores;
  static Serializer<GHighScoresData> get serializer =>
      _$gHighScoresDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GHighScoresData.serializer, this)
          as Map<String, dynamic>);
  static GHighScoresData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GHighScoresData.serializer, json);
}

abstract class GHighScoresData_getHighScores
    implements
        Built<GHighScoresData_getHighScores,
            GHighScoresData_getHighScoresBuilder> {
  GHighScoresData_getHighScores._();

  factory GHighScoresData_getHighScores(
          [Function(GHighScoresData_getHighScoresBuilder b) updates]) =
      _$GHighScoresData_getHighScores;

  static void _initializeBuilder(GHighScoresData_getHighScoresBuilder b) =>
      b..G__typename = 'HighScores';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GHighScoresData_getHighScores_records get records;
  int? get currentRank;
  GHighScoresData_getHighScores_currentRecord? get currentRecord;
  static Serializer<GHighScoresData_getHighScores> get serializer =>
      _$gHighScoresDataGetHighScoresSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GHighScoresData_getHighScores.serializer, this) as Map<String, dynamic>);
  static GHighScoresData_getHighScores? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GHighScoresData_getHighScores.serializer, json);
}

abstract class GHighScoresData_getHighScores_records
    implements
        Built<GHighScoresData_getHighScores_records,
            GHighScoresData_getHighScores_recordsBuilder> {
  GHighScoresData_getHighScores_records._();

  factory GHighScoresData_getHighScores_records(
          [Function(GHighScoresData_getHighScores_recordsBuilder b) updates]) =
      _$GHighScoresData_getHighScores_records;

  static void _initializeBuilder(
          GHighScoresData_getHighScores_recordsBuilder b) =>
      b..G__typename = 'PaginatedRecords';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GHighScoresData_getHighScores_records_edges> get edges;
  int get totalCount;
  GHighScoresData_getHighScores_records_pageInfo get pageInfo;
  static Serializer<GHighScoresData_getHighScores_records> get serializer =>
      _$gHighScoresDataGetHighScoresRecordsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GHighScoresData_getHighScores_records.serializer, this)
      as Map<String, dynamic>);
  static GHighScoresData_getHighScores_records? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GHighScoresData_getHighScores_records.serializer, json);
}

abstract class GHighScoresData_getHighScores_records_edges
    implements
        Built<GHighScoresData_getHighScores_records_edges,
            GHighScoresData_getHighScores_records_edgesBuilder> {
  GHighScoresData_getHighScores_records_edges._();

  factory GHighScoresData_getHighScores_records_edges(
      [Function(GHighScoresData_getHighScores_records_edgesBuilder b)
          updates]) = _$GHighScoresData_getHighScores_records_edges;

  static void _initializeBuilder(
          GHighScoresData_getHighScores_records_edgesBuilder b) =>
      b..G__typename = 'RecordEntityPageEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GHighScoresData_getHighScores_records_edges_node get node;
  static Serializer<GHighScoresData_getHighScores_records_edges>
      get serializer => _$gHighScoresDataGetHighScoresRecordsEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GHighScoresData_getHighScores_records_edges.serializer, this)
      as Map<String, dynamic>);
  static GHighScoresData_getHighScores_records_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GHighScoresData_getHighScores_records_edges.serializer, json);
}

abstract class GHighScoresData_getHighScores_records_edges_node
    implements
        Built<GHighScoresData_getHighScores_records_edges_node,
            GHighScoresData_getHighScores_records_edges_nodeBuilder> {
  GHighScoresData_getHighScores_records_edges_node._();

  factory GHighScoresData_getHighScores_records_edges_node(
      [Function(GHighScoresData_getHighScores_records_edges_nodeBuilder b)
          updates]) = _$GHighScoresData_getHighScores_records_edges_node;

  static void _initializeBuilder(
          GHighScoresData_getHighScores_records_edges_nodeBuilder b) =>
      b..G__typename = 'Record';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get time;
  int get moves;
  GHighScoresData_getHighScores_records_edges_node_owner get owner;
  static Serializer<GHighScoresData_getHighScores_records_edges_node>
      get serializer =>
          _$gHighScoresDataGetHighScoresRecordsEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GHighScoresData_getHighScores_records_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GHighScoresData_getHighScores_records_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GHighScoresData_getHighScores_records_edges_node.serializer, json);
}

abstract class GHighScoresData_getHighScores_records_edges_node_owner
    implements
        Built<GHighScoresData_getHighScores_records_edges_node_owner,
            GHighScoresData_getHighScores_records_edges_node_ownerBuilder> {
  GHighScoresData_getHighScores_records_edges_node_owner._();

  factory GHighScoresData_getHighScores_records_edges_node_owner(
      [Function(GHighScoresData_getHighScores_records_edges_node_ownerBuilder b)
          updates]) = _$GHighScoresData_getHighScores_records_edges_node_owner;

  static void _initializeBuilder(
          GHighScoresData_getHighScores_records_edges_node_ownerBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String? get picture;
  String get username;
  static Serializer<GHighScoresData_getHighScores_records_edges_node_owner>
      get serializer =>
          _$gHighScoresDataGetHighScoresRecordsEdgesNodeOwnerSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GHighScoresData_getHighScores_records_edges_node_owner.serializer,
      this) as Map<String, dynamic>);
  static GHighScoresData_getHighScores_records_edges_node_owner? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GHighScoresData_getHighScores_records_edges_node_owner.serializer,
          json);
}

abstract class GHighScoresData_getHighScores_records_pageInfo
    implements
        Built<GHighScoresData_getHighScores_records_pageInfo,
            GHighScoresData_getHighScores_records_pageInfoBuilder> {
  GHighScoresData_getHighScores_records_pageInfo._();

  factory GHighScoresData_getHighScores_records_pageInfo(
      [Function(GHighScoresData_getHighScores_records_pageInfoBuilder b)
          updates]) = _$GHighScoresData_getHighScores_records_pageInfo;

  static void _initializeBuilder(
          GHighScoresData_getHighScores_records_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get endCursor;
  bool get hasNextPage;
  static Serializer<GHighScoresData_getHighScores_records_pageInfo>
      get serializer => _$gHighScoresDataGetHighScoresRecordsPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GHighScoresData_getHighScores_records_pageInfo.serializer, this)
      as Map<String, dynamic>);
  static GHighScoresData_getHighScores_records_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GHighScoresData_getHighScores_records_pageInfo.serializer, json);
}

abstract class GHighScoresData_getHighScores_currentRecord
    implements
        Built<GHighScoresData_getHighScores_currentRecord,
            GHighScoresData_getHighScores_currentRecordBuilder> {
  GHighScoresData_getHighScores_currentRecord._();

  factory GHighScoresData_getHighScores_currentRecord(
      [Function(GHighScoresData_getHighScores_currentRecordBuilder b)
          updates]) = _$GHighScoresData_getHighScores_currentRecord;

  static void _initializeBuilder(
          GHighScoresData_getHighScores_currentRecordBuilder b) =>
      b..G__typename = 'Record';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get time;
  int get moves;
  static Serializer<GHighScoresData_getHighScores_currentRecord>
      get serializer => _$gHighScoresDataGetHighScoresCurrentRecordSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GHighScoresData_getHighScores_currentRecord.serializer, this)
      as Map<String, dynamic>);
  static GHighScoresData_getHighScores_currentRecord? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GHighScoresData_getHighScores_currentRecord.serializer, json);
}
