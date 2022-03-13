import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart' show StandardJsonPlugin;
import 'package:gql_code_builder/src/serializers/operation_serializer.dart'
    show OperationSerializer;
import 'package:v1/src/components/graphql/mutations/delete_image.data.gql.dart'
    show GDeleteImageData, GDeleteImageData_deleteImage;
import 'package:v1/src/components/graphql/mutations/delete_image.req.gql.dart'
    show GDeleteImageReq;
import 'package:v1/src/components/graphql/mutations/delete_image.var.gql.dart'
    show GDeleteImageVars;
import 'package:v1/src/components/graphql/mutations/new_profile_picture.data.gql.dart'
    show GNewProfilePictureData, GNewProfilePictureData_updateProfilePicture;
import 'package:v1/src/components/graphql/mutations/new_profile_picture.req.gql.dart'
    show GNewProfilePictureReq;
import 'package:v1/src/components/graphql/mutations/new_profile_picture.var.gql.dart'
    show GNewProfilePictureVars;
import 'package:v1/src/components/graphql/mutations/new_record.data.gql.dart'
    show GNewRecordData, GNewRecordData_addRecord;
import 'package:v1/src/components/graphql/mutations/new_record.req.gql.dart'
    show GNewRecordReq;
import 'package:v1/src/components/graphql/mutations/new_record.var.gql.dart'
    show GNewRecordVars;
import 'package:v1/src/components/graphql/mutations/upload_image.data.gql.dart'
    show GUploadImageData, GUploadImageData_addImage;
import 'package:v1/src/components/graphql/mutations/upload_image.req.gql.dart'
    show GUploadImageReq;
import 'package:v1/src/components/graphql/mutations/upload_image.var.gql.dart'
    show GUploadImageVars;
import 'package:v1/src/components/graphql/queries/current_user.data.gql.dart'
    show GCurrentUserData, GCurrentUserData_me;
import 'package:v1/src/components/graphql/queries/current_user.req.gql.dart'
    show GCurrentUserReq;
import 'package:v1/src/components/graphql/queries/current_user.var.gql.dart'
    show GCurrentUserVars;
import 'package:v1/src/components/graphql/queries/find_records.data.gql.dart'
    show
        GFindRecordsData,
        GFindRecordsData_getRecords,
        GFindRecordsData_getRecords_edges,
        GFindRecordsData_getRecords_edges_node,
        GFindRecordsData_getRecords_pageInfo;
import 'package:v1/src/components/graphql/queries/find_records.req.gql.dart'
    show GFindRecordsReq;
import 'package:v1/src/components/graphql/queries/find_records.var.gql.dart'
    show GFindRecordsVars;
import 'package:v1/src/components/graphql/queries/find_users.data.gql.dart'
    show
        GFindUsersData,
        GFindUsersData_getUsers,
        GFindUsersData_getUsers_edges,
        GFindUsersData_getUsers_edges_node,
        GFindUsersData_getUsers_pageInfo;
import 'package:v1/src/components/graphql/queries/find_users.req.gql.dart'
    show GFindUsersReq;
import 'package:v1/src/components/graphql/queries/find_users.var.gql.dart'
    show GFindUsersVars;
import 'package:v1/src/components/graphql/queries/get_images.data.gql.dart'
    show
        GGetImagesData,
        GGetImagesData_getImages,
        GGetImagesData_getImages_edges,
        GGetImagesData_getImages_edges_node,
        GGetImagesData_getImages_pageInfo;
import 'package:v1/src/components/graphql/queries/get_images.req.gql.dart'
    show GGetImagesReq;
import 'package:v1/src/components/graphql/queries/get_images.var.gql.dart'
    show GGetImagesVars;
import 'package:v1/src/components/graphql/queries/get_single_user.data.gql.dart'
    show
        GGetSingleUserData,
        GGetSingleUserData_getUser,
        GGetSingleUserData_getUser_records,
        GGetSingleUserData_getUser_records_edges,
        GGetSingleUserData_getUser_records_edges_node,
        GGetSingleUserData_getUser_records_pageInfo;
import 'package:v1/src/components/graphql/queries/get_single_user.req.gql.dart'
    show GGetSingleUserReq;
import 'package:v1/src/components/graphql/queries/get_single_user.var.gql.dart'
    show GGetSingleUserVars;
import 'package:v1/src/components/graphql/queries/high_scores.data.gql.dart'
    show
        GHighScoresData,
        GHighScoresData_getHighScores,
        GHighScoresData_getHighScores_currentRecord,
        GHighScoresData_getHighScores_records,
        GHighScoresData_getHighScores_records_edges,
        GHighScoresData_getHighScores_records_edges_node,
        GHighScoresData_getHighScores_records_edges_node_owner,
        GHighScoresData_getHighScores_records_pageInfo;
import 'package:v1/src/components/graphql/queries/high_scores.req.gql.dart'
    show GHighScoresReq;
import 'package:v1/src/components/graphql/queries/high_scores.var.gql.dart'
    show GHighScoresVars;
import 'package:v1/src/components/graphql/schema.schema.gql.dart'
    show GQueryOrder, GRecordInput, GUsersCursor;
import 'package:v1/src/components/graphql/serializers/upload_serializer.dart'
    show UploadSerializer;

part 'serializers.gql.g.dart';

final SerializersBuilder _serializersBuilder = _$serializers.toBuilder()
  ..add(OperationSerializer())
  ..add(UploadSerializer())
  ..addPlugin(StandardJsonPlugin());
@SerializersFor([
  GCurrentUserData,
  GCurrentUserData_me,
  GCurrentUserReq,
  GCurrentUserVars,
  GDeleteImageData,
  GDeleteImageData_deleteImage,
  GDeleteImageReq,
  GDeleteImageVars,
  GFindRecordsData,
  GFindRecordsData_getRecords,
  GFindRecordsData_getRecords_edges,
  GFindRecordsData_getRecords_edges_node,
  GFindRecordsData_getRecords_pageInfo,
  GFindRecordsReq,
  GFindRecordsVars,
  GFindUsersData,
  GFindUsersData_getUsers,
  GFindUsersData_getUsers_edges,
  GFindUsersData_getUsers_edges_node,
  GFindUsersData_getUsers_pageInfo,
  GFindUsersReq,
  GFindUsersVars,
  GGetImagesData,
  GGetImagesData_getImages,
  GGetImagesData_getImages_edges,
  GGetImagesData_getImages_edges_node,
  GGetImagesData_getImages_pageInfo,
  GGetImagesReq,
  GGetImagesVars,
  GGetSingleUserData,
  GGetSingleUserData_getUser,
  GGetSingleUserData_getUser_records,
  GGetSingleUserData_getUser_records_edges,
  GGetSingleUserData_getUser_records_edges_node,
  GGetSingleUserData_getUser_records_pageInfo,
  GGetSingleUserReq,
  GGetSingleUserVars,
  GHighScoresData,
  GHighScoresData_getHighScores,
  GHighScoresData_getHighScores_currentRecord,
  GHighScoresData_getHighScores_records,
  GHighScoresData_getHighScores_records_edges,
  GHighScoresData_getHighScores_records_edges_node,
  GHighScoresData_getHighScores_records_edges_node_owner,
  GHighScoresData_getHighScores_records_pageInfo,
  GHighScoresReq,
  GHighScoresVars,
  GNewProfilePictureData,
  GNewProfilePictureData_updateProfilePicture,
  GNewProfilePictureReq,
  GNewProfilePictureVars,
  GNewRecordData,
  GNewRecordData_addRecord,
  GNewRecordReq,
  GNewRecordVars,
  GQueryOrder,
  GRecordInput,
  GUploadImageData,
  GUploadImageData_addImage,
  GUploadImageReq,
  GUploadImageVars,
  GUsersCursor
])
final Serializers serializers = _serializersBuilder.build();
