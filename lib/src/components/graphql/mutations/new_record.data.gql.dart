// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'new_record.data.gql.g.dart';

abstract class GNewRecordData
    implements Built<GNewRecordData, GNewRecordDataBuilder> {
  GNewRecordData._();

  factory GNewRecordData([Function(GNewRecordDataBuilder b) updates]) =
      _$GNewRecordData;

  static void _initializeBuilder(GNewRecordDataBuilder b) =>
      b..G__typename = 'Mutation';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  GNewRecordData_addRecord get addRecord;
  static Serializer<GNewRecordData> get serializer =>
      _$gNewRecordDataSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GNewRecordData.serializer, this)
          as Map<String, dynamic>);
  static GNewRecordData? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GNewRecordData.serializer, json);
}

abstract class GNewRecordData_addRecord
    implements
        Built<GNewRecordData_addRecord, GNewRecordData_addRecordBuilder> {
  GNewRecordData_addRecord._();

  factory GNewRecordData_addRecord(
          [Function(GNewRecordData_addRecordBuilder b) updates]) =
      _$GNewRecordData_addRecord;

  static void _initializeBuilder(GNewRecordData_addRecordBuilder b) =>
      b..G__typename = 'Record';
  @BuiltValueField(wireName: '__typename')
  String get G__typename;
  int get id;
  int get moves;
  int get time;
  int get level;
  static Serializer<GNewRecordData_addRecord> get serializer =>
      _$gNewRecordDataAddRecordSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GNewRecordData_addRecord.serializer, this)
          as Map<String, dynamic>);
  static GNewRecordData_addRecord? fromJson(Map<String, dynamic> json) =>
      _i1.serializers
          .deserializeWith(GNewRecordData_addRecord.serializer, json);
}
