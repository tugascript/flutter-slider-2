// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'get_single_user.data.gql.g.dart';

abstract class GGetSingleUserData
    implements Built<GGetSingleUserData, GGetSingleUserDataBuilder> {
  GGetSingleUserData._();

  factory GGetSingleUserData([Function(GGetSingleUserDataBuilder b) updates]) =
      _$GGetSingleUserData;

  static void _initializeBuilder(GGetSingleUserDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetSingleUserData_getUser get getUser;
  static Serializer<GGetSingleUserData> get serializer =>
      _$gGetSingleUserDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetSingleUserData.serializer, this)
          as Map<String, dynamic>);
  static GGetSingleUserData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetSingleUserData.serializer, json);
}

abstract class GGetSingleUserData_getUser
    implements
        Built<GGetSingleUserData_getUser, GGetSingleUserData_getUserBuilder> {
  GGetSingleUserData_getUser._();

  factory GGetSingleUserData_getUser(
          [Function(GGetSingleUserData_getUserBuilder b) updates]) =
      _$GGetSingleUserData_getUser;

  static void _initializeBuilder(GGetSingleUserData_getUserBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get username;
  String? get picture;
  int get maxLevel;
  GGetSingleUserData_getUser_records get records;
  static Serializer<GGetSingleUserData_getUser> get serializer =>
      _$gGetSingleUserDataGetUserSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetSingleUserData_getUser.serializer, this) as Map<String, dynamic>);
  static GGetSingleUserData_getUser? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetSingleUserData_getUser.serializer, json);
}

abstract class GGetSingleUserData_getUser_records
    implements
        Built<GGetSingleUserData_getUser_records,
            GGetSingleUserData_getUser_recordsBuilder> {
  GGetSingleUserData_getUser_records._();

  factory GGetSingleUserData_getUser_records(
          [Function(GGetSingleUserData_getUser_recordsBuilder b) updates]) =
      _$GGetSingleUserData_getUser_records;

  static void _initializeBuilder(GGetSingleUserData_getUser_recordsBuilder b) =>
      b..G__typename = 'PaginatedRecords';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetSingleUserData_getUser_records_edges> get edges;
  int get totalCount;
  GGetSingleUserData_getUser_records_pageInfo get pageInfo;
  static Serializer<GGetSingleUserData_getUser_records> get serializer =>
      _$gGetSingleUserDataGetUserRecordsSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetSingleUserData_getUser_records.serializer, this)
      as Map<String, dynamic>);
  static GGetSingleUserData_getUser_records? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetSingleUserData_getUser_records.serializer, json);
}

abstract class GGetSingleUserData_getUser_records_edges
    implements
        Built<GGetSingleUserData_getUser_records_edges,
            GGetSingleUserData_getUser_records_edgesBuilder> {
  GGetSingleUserData_getUser_records_edges._();

  factory GGetSingleUserData_getUser_records_edges(
      [Function(GGetSingleUserData_getUser_records_edgesBuilder b)
          updates]) = _$GGetSingleUserData_getUser_records_edges;

  static void _initializeBuilder(
          GGetSingleUserData_getUser_records_edgesBuilder b) =>
      b..G__typename = 'RecordEntityPageEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetSingleUserData_getUser_records_edges_node get node;
  static Serializer<GGetSingleUserData_getUser_records_edges> get serializer =>
      _$gGetSingleUserDataGetUserRecordsEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetSingleUserData_getUser_records_edges.serializer, this)
      as Map<String, dynamic>);
  static GGetSingleUserData_getUser_records_edges? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetSingleUserData_getUser_records_edges.serializer, json);
}

abstract class GGetSingleUserData_getUser_records_edges_node
    implements
        Built<GGetSingleUserData_getUser_records_edges_node,
            GGetSingleUserData_getUser_records_edges_nodeBuilder> {
  GGetSingleUserData_getUser_records_edges_node._();

  factory GGetSingleUserData_getUser_records_edges_node(
      [Function(GGetSingleUserData_getUser_records_edges_nodeBuilder b)
          updates]) = _$GGetSingleUserData_getUser_records_edges_node;

  static void _initializeBuilder(
          GGetSingleUserData_getUser_records_edges_nodeBuilder b) =>
      b..G__typename = 'Record';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get time;
  int get moves;
  static Serializer<GGetSingleUserData_getUser_records_edges_node>
      get serializer => _$gGetSingleUserDataGetUserRecordsEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetSingleUserData_getUser_records_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GGetSingleUserData_getUser_records_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetSingleUserData_getUser_records_edges_node.serializer, json);
}

abstract class GGetSingleUserData_getUser_records_pageInfo
    implements
        Built<GGetSingleUserData_getUser_records_pageInfo,
            GGetSingleUserData_getUser_records_pageInfoBuilder> {
  GGetSingleUserData_getUser_records_pageInfo._();

  factory GGetSingleUserData_getUser_records_pageInfo(
      [Function(GGetSingleUserData_getUser_records_pageInfoBuilder b)
          updates]) = _$GGetSingleUserData_getUser_records_pageInfo;

  static void _initializeBuilder(
          GGetSingleUserData_getUser_records_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get endCursor;
  bool get hasNextPage;
  static Serializer<GGetSingleUserData_getUser_records_pageInfo>
      get serializer => _$gGetSingleUserDataGetUserRecordsPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
          GGetSingleUserData_getUser_records_pageInfo.serializer, this)
      as Map<String, dynamic>);
  static GGetSingleUserData_getUser_records_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetSingleUserData_getUser_records_pageInfo.serializer, json);
}
