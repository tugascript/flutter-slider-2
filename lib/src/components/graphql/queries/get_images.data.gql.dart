// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'get_images.data.gql.g.dart';

abstract class GGetImagesData
    implements Built<GGetImagesData, GGetImagesDataBuilder> {
  GGetImagesData._();

  factory GGetImagesData([Function(GGetImagesDataBuilder b) updates]) =
      _$GGetImagesData;

  static void _initializeBuilder(GGetImagesDataBuilder b) =>
      b..G__typename = 'Query';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetImagesData_getImages get getImages;
  static Serializer<GGetImagesData> get serializer =>
      _$gGetImagesDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetImagesData.serializer, this)
          as Map<String, dynamic>);
  static GGetImagesData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GGetImagesData.serializer, json);
}

abstract class GGetImagesData_getImages
    implements
        Built<GGetImagesData_getImages, GGetImagesData_getImagesBuilder> {
  GGetImagesData_getImages._();

  factory GGetImagesData_getImages(
          [Function(GGetImagesData_getImagesBuilder b) updates]) =
      _$GGetImagesData_getImages;

  static void _initializeBuilder(GGetImagesData_getImagesBuilder b) =>
      b..G__typename = 'PaginatedImages';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  BuiltList<GGetImagesData_getImages_edges> get edges;
  GGetImagesData_getImages_pageInfo get pageInfo;
  int get totalCount;
  static Serializer<GGetImagesData_getImages> get serializer =>
      _$gGetImagesDataGetImagesSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GGetImagesData_getImages.serializer, this)
          as Map<String, dynamic>);
  static GGetImagesData_getImages? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetImagesData_getImages.serializer, json);
}

abstract class GGetImagesData_getImages_edges
    implements
        Built<GGetImagesData_getImages_edges,
            GGetImagesData_getImages_edgesBuilder> {
  GGetImagesData_getImages_edges._();

  factory GGetImagesData_getImages_edges(
          [Function(GGetImagesData_getImages_edgesBuilder b) updates]) =
      _$GGetImagesData_getImages_edges;

  static void _initializeBuilder(GGetImagesData_getImages_edgesBuilder b) =>
      b..G__typename = 'ImageEntityPageEdge';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GGetImagesData_getImages_edges_node get node;
  static Serializer<GGetImagesData_getImages_edges> get serializer =>
      _$gGetImagesDataGetImagesEdgesSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers.serializeWith(
      GGetImagesData_getImages_edges.serializer, this) as Map<String, dynamic>);
  static GGetImagesData_getImages_edges? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetImagesData_getImages_edges.serializer, json);
}

abstract class GGetImagesData_getImages_edges_node
    implements
        Built<GGetImagesData_getImages_edges_node,
            GGetImagesData_getImages_edges_nodeBuilder> {
  GGetImagesData_getImages_edges_node._();

  factory GGetImagesData_getImages_edges_node(
          [Function(GGetImagesData_getImages_edges_nodeBuilder b) updates]) =
      _$GGetImagesData_getImages_edges_node;

  static void _initializeBuilder(
          GGetImagesData_getImages_edges_nodeBuilder b) =>
      b..G__typename = 'Image';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  String get url;
  static Serializer<GGetImagesData_getImages_edges_node> get serializer =>
      _$gGetImagesDataGetImagesEdgesNodeSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetImagesData_getImages_edges_node.serializer, this)
      as Map<String, dynamic>);
  static GGetImagesData_getImages_edges_node? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(
          GGetImagesData_getImages_edges_node.serializer, json);
}

abstract class GGetImagesData_getImages_pageInfo
    implements
        Built<GGetImagesData_getImages_pageInfo,
            GGetImagesData_getImages_pageInfoBuilder> {
  GGetImagesData_getImages_pageInfo._();

  factory GGetImagesData_getImages_pageInfo(
          [Function(GGetImagesData_getImages_pageInfoBuilder b) updates]) =
      _$GGetImagesData_getImages_pageInfo;

  static void _initializeBuilder(GGetImagesData_getImages_pageInfoBuilder b) =>
      b..G__typename = 'PageInfo';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  String get endCursor;
  bool get hasNextPage;
  static Serializer<GGetImagesData_getImages_pageInfo> get serializer =>
      _$gGetImagesDataGetImagesPageInfoSerializer;
  Map<String, dynamic> toJson() => (_i1.serializers
          .serializeWith(GGetImagesData_getImages_pageInfo.serializer, this)
      as Map<String, dynamic>);
  static GGetImagesData_getImages_pageInfo? fromJson(
          Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GGetImagesData_getImages_pageInfo.serializer, json);
}
