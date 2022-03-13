// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:v1/src/components/graphql/serializers.gql.dart' as _i1;

part 'schema.schema.gql.g.dart';

class GQueryOrder extends EnumClass {
  const GQueryOrder._(String name) : super(name);

  static const GQueryOrder ASC = _$gQueryOrderASC;

  static const GQueryOrder DESC = _$gQueryOrderDESC;

  static Serializer<GQueryOrder> get serializer => _$gQueryOrderSerializer;
  static BuiltSet<GQueryOrder> get values => _$gQueryOrderValues;
  static GQueryOrder valueOf(String name) => _$gQueryOrderValueOf(name);
}

abstract class GRecordInput
    implements Built<GRecordInput, GRecordInputBuilder> {
  GRecordInput._();

  factory GRecordInput([Function(GRecordInputBuilder b) updates]) =
      _$GRecordInput;

  int get level;
  int get moves;
  int get time;
  static Serializer<GRecordInput> get serializer => _$gRecordInputSerializer;
  Map<String, dynamic> toJson() =>
      (_i1.serializers.serializeWith(GRecordInput.serializer, this)
          as Map<String, dynamic>);
  static GRecordInput? fromJson(Map<String, dynamic> json) =>
      _i1.serializers.deserializeWith(GRecordInput.serializer, json);
}

class GUsersCursor extends EnumClass {
  const GUsersCursor._(String name) : super(name);

  static const GUsersCursor DATE = _$gUsersCursorDATE;

  static const GUsersCursor ALPHABET = _$gUsersCursorALPHABET;

  static Serializer<GUsersCursor> get serializer => _$gUsersCursorSerializer;
  static BuiltSet<GUsersCursor> get values => _$gUsersCursorValues;
  static GUsersCursor valueOf(String name) => _$gUsersCursorValueOf(name);
}
