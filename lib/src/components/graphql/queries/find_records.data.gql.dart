// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'find_records.data.gql.g.dart';

abstract class GFindRecordsData
    implements Built<GFindRecordsData, GFindRecordsDataBuilder> {
  GFindRecordsData._();

  factory GFindRecordsData([Function(GFindRecordsDataBuilder b) updates]) =
      _$GFindRecordsData;

  static void _initializeBuilder(GFindRecordsDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFindRecordsData_getRecords get getRecords;
  static Serializer<GFindRecordsData> get serializer =>
      _$gFindRecordsDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFindRecordsData.serializer, this)
          as Map<String, dynamic>);
  static GFindRecordsData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFindRecordsData.serializer, json);
}

abstract class GFindRecordsData_getRecords
    implements
        Built<GFindRecordsData_getRecords, GFindRecordsData_getRecordsBuilder> {
  GFindRecordsData_getRecords._();

  factory GFindRecordsData_getRecords(
          [Function(GFindRecordsData_getRecordsBuilder b) updates]) =
      _$GFindRecordsData_getRecords;

  static void _initializeBuilder(GFindRecordsData_getRecordsBuilder b) =>
      b..G__typename = 'PaginatedRecords';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFindRecordsData_getRecords_edges> get edges;
  int get totalCount;
  GFindRecordsData_getRecords_pageInfo get pageInfo;
  static Serializer<GFindRecordsData_getRecords> get serializer =>
      _$gFindRecordsDataGetRecordsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFindRecordsData_getRecords.serializer, this) as Map<String, dynamic>);
  static GFindRecordsData_getRecords? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFindRecordsData_getRecords.serializer, json);
}

abstract class GFindRecordsData_getRecords_edges
    implements
        Built<GFindRecordsData_getRecords_edges,
            GFindRecordsData_getRecords_edgesBuilder> {
  GFindRecordsData_getRecords_edges._();

  factory GFindRecordsData_getRecords_edges(
          [Function(GFindRecordsData_getRecords_edgesBuilder b) updates]) =
      _$GFindRecordsData_getRecords_edges;

  static void _initializeBuilder(GFindRecordsData_getRecords_edgesBuilder b) =>
      b..G__typename = 'RecordEntityPageEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFindRecordsData_getRecords_edges_node get node;
  static Serializer<GFindRecordsData_getRecords_edges> get serializer =>
      _$gFindRecordsDataGetRecordsEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFindRecordsData_getRecords_edges.serializer, this)
      as Map<String, dynamic>);
  static GFindRecordsData_getRecords_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFindRecordsData_getRecords_edges.serializer, json);
}

abstract class GFindRecordsData_getRecords_edges_node
    implements
        Built<GFindRecordsData_getRecords_edges_node,
            GFindRecordsData_getRecords_edges_nodeBuilder> {
  GFindRecordsData_getRecords_edges_node._();

  factory GFindRecordsData_getRecords_edges_node(
          [Function(GFindRecordsData_getRecords_edges_nodeBuilder b) updates]) =
      _$GFindRecordsData_getRecords_edges_node;

  static void _initializeBuilder(
          GFindRecordsData_getRecords_edges_nodeBuilder b) =>
      b..G__typename = 'Record';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get time;
  int get moves;
  static Serializer<GFindRecordsData_getRecords_edges_node> get serializer =>
      _$gFindRecordsDataGetRecordsEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GFindRecordsData_getRecords_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GFindRecordsData_getRecords_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFindRecordsData_getRecords_edges_node.serializer, json);
}

abstract class GFindRecordsData_getRecords_pageInfo
    implements
        Built<GFindRecordsData_getRecords_pageInfo,
            GFindRecordsData_getRecords_pageInfoBuilder> {
  GFindRecordsData_getRecords_pageInfo._();

  factory GFindRecordsData_getRecords_pageInfo(
          [Function(GFindRecordsData_getRecords_pageInfoBuilder b) updates]) =
      _$GFindRecordsData_getRecords_pageInfo;

  static void _initializeBuilder(
          GFindRecordsData_getRecords_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  bool get hasNextPage;
  String get endCursor;
  static Serializer<GFindRecordsData_getRecords_pageInfo> get serializer =>
      _$gFindRecordsDataGetRecordsPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFindRecordsData_getRecords_pageInfo.serializer, this)
      as Map<String, dynamic>);
  static GFindRecordsData_getRecords_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GFindRecordsData_getRecords_pageInfo.serializer, json);
}
