// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'find_users.data.gql.g.dart';

abstract class GFindUsersData
    implements Built<GFindUsersData, GFindUsersDataBuilder> {
  GFindUsersData._();

  factory GFindUsersData([Function(GFindUsersDataBuilder b) updates]) =
      _$GFindUsersData;

  static void _initializeBuilder(GFindUsersDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFindUsersData_getUsers get getUsers;
  static Serializer<GFindUsersData> get serializer =>
      _$gFindUsersDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFindUsersData.serializer, this)
          as Map<String, dynamic>);
  static GFindUsersData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFindUsersData.serializer, json);
}

abstract class GFindUsersData_getUsers
    implements Built<GFindUsersData_getUsers, GFindUsersData_getUsersBuilder> {
  GFindUsersData_getUsers._();

  factory GFindUsersData_getUsers(
          [Function(GFindUsersData_getUsersBuilder b) updates]) =
      _$GFindUsersData_getUsers;

  static void _initializeBuilder(GFindUsersData_getUsersBuilder b) =>
      b..G__typename = 'PaginatedUsers';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GFindUsersData_getUsers_edges> get edges;
  int get totalCount;
  GFindUsersData_getUsers_pageInfo get pageInfo;
  static Serializer<GFindUsersData_getUsers> get serializer =>
      _$gFindUsersDataGetUsersSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GFindUsersData_getUsers.serializer, this)
          as Map<String, dynamic>);
  static GFindUsersData_getUsers? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GFindUsersData_getUsers.serializer, json);
}

abstract class GFindUsersData_getUsers_edges
    implements
        Built<GFindUsersData_getUsers_edges,
            GFindUsersData_getUsers_edgesBuilder> {
  GFindUsersData_getUsers_edges._();

  factory GFindUsersData_getUsers_edges(
          [Function(GFindUsersData_getUsers_edgesBuilder b) updates]) =
      _$GFindUsersData_getUsers_edges;

  static void _initializeBuilder(GFindUsersData_getUsers_edgesBuilder b) =>
      b..G__typename = 'UserEntityPageEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GFindUsersData_getUsers_edges_node get node;
  static Serializer<GFindUsersData_getUsers_edges> get serializer =>
      _$gFindUsersDataGetUsersEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GFindUsersData_getUsers_edges.serializer, this) as Map<String, dynamic>);
  static GFindUsersData_getUsers_edges? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFindUsersData_getUsers_edges.serializer, json);
}

abstract class GFindUsersData_getUsers_edges_node
    implements
        Built<GFindUsersData_getUsers_edges_node,
            GFindUsersData_getUsers_edges_nodeBuilder> {
  GFindUsersData_getUsers_edges_node._();

  factory GFindUsersData_getUsers_edges_node(
          [Function(GFindUsersData_getUsers_edges_nodeBuilder b) updates]) =
      _$GFindUsersData_getUsers_edges_node;

  static void _initializeBuilder(GFindUsersData_getUsers_edges_nodeBuilder b) =>
      b..G__typename = 'User';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get username;
  String? get picture;
  int get maxLevel;
  static Serializer<GFindUsersData_getUsers_edges_node> get serializer =>
      _$gFindUsersDataGetUsersEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFindUsersData_getUsers_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GFindUsersData_getUsers_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFindUsersData_getUsers_edges_node.serializer, json);
}

abstract class GFindUsersData_getUsers_pageInfo
    implements
        Built<GFindUsersData_getUsers_pageInfo,
            GFindUsersData_getUsers_pageInfoBuilder> {
  GFindUsersData_getUsers_pageInfo._();

  factory GFindUsersData_getUsers_pageInfo(
          [Function(GFindUsersData_getUsers_pageInfoBuilder b) updates]) =
      _$GFindUsersData_getUsers_pageInfo;

  static void _initializeBuilder(GFindUsersData_getUsers_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get endCursor;
  bool get hasNextPage;
  static Serializer<GFindUsersData_getUsers_pageInfo> get serializer =>
      _$gFindUsersDataGetUsersPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GFindUsersData_getUsers_pageInfo.serializer, this)
      as Map<String, dynamic>);
  static GFindUsersData_getUsers_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GFindUsersData_getUsers_pageInfo.serializer, json);
}
