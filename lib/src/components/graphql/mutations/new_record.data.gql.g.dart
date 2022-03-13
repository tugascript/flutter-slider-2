// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_record.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNewRecordData> _$gNewRecordDataSerializer =
    new _$GNewRecordDataSerializer();
Serializer<GNewRecordData_addRecord> _$gNewRecordDataAddRecordSerializer =
    new _$GNewRecordData_addRecordSerializer();

class _$GNewRecordDataSerializer
    implements StructuredSerializer<GNewRecordData> {
  @override
  final Iterable<Type> types = const [GNewRecordData, _$GNewRecordData];
  @override
  final String wireName = 'GNewRecordData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNewRecordData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'addRecord',
      serializers.serialize(object.addRecord,
          specifiedType: const FullType(GNewRecordData_addRecord)),
    ];

    return result;
  }

  @override
  GNewRecordData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewRecordDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'addRecord':
          result.addRecord.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GNewRecordData_addRecord))!
              as GNewRecordData_addRecord);
          break;
      }
    }

    return result.build();
  }
}

class _$GNewRecordData_addRecordSerializer
    implements StructuredSerializer<GNewRecordData_addRecord> {
  @override
  final Iterable<Type> types = const [
    GNewRecordData_addRecord,
    _$GNewRecordData_addRecord
  ];
  @override
  final String wireName = 'GNewRecordData_addRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNewRecordData_addRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'moves',
      serializers.serialize(object.moves, specifiedType: const FullType(int)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GNewRecordData_addRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewRecordData_addRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case '__typename':
          result.G__typename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'moves':
          result.moves = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GNewRecordData extends GNewRecordData {
  @override
  final String G__typename;
  @override
  final GNewRecordData_addRecord addRecord;

  factory _$GNewRecordData([void Function(GNewRecordDataBuilder)? updates]) =>
      (new GNewRecordDataBuilder()..update(updates)).build();

  _$GNewRecordData._({required this.G__typename, required this.addRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GNewRecordData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        addRecord, 'GNewRecordData', 'addRecord');
  }

  @override
  GNewRecordData rebuild(void Function(GNewRecordDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewRecordDataBuilder toBuilder() =>
      new GNewRecordDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewRecordData &&
        G__typename == other.G__typename &&
        addRecord == other.addRecord;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), addRecord.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewRecordData')
          ..add('G__typename', G__typename)
          ..add('addRecord', addRecord))
        .toString();
  }
}

class GNewRecordDataBuilder
    implements Builder<GNewRecordData, GNewRecordDataBuilder> {
  _$GNewRecordData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNewRecordData_addRecordBuilder? _addRecord;
  GNewRecordData_addRecordBuilder get addRecord =>
      _$this._addRecord ??= new GNewRecordData_addRecordBuilder();
  set addRecord(GNewRecordData_addRecordBuilder? addRecord) =>
      _$this._addRecord = addRecord;

  GNewRecordDataBuilder() {
    GNewRecordData._initializeBuilder(this);
  }

  GNewRecordDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addRecord = $v.addRecord.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewRecordData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewRecordData;
  }

  @override
  void update(void Function(GNewRecordDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewRecordData build() {
    _$GNewRecordData _$result;
    try {
      _$result = _$v ??
          new _$GNewRecordData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GNewRecordData', 'G__typename'),
              addRecord: addRecord.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addRecord';
        addRecord.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GNewRecordData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNewRecordData_addRecord extends GNewRecordData_addRecord {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int moves;
  @override
  final int time;
  @override
  final int level;

  factory _$GNewRecordData_addRecord(
          [void Function(GNewRecordData_addRecordBuilder)? updates]) =>
      (new GNewRecordData_addRecordBuilder()..update(updates)).build();

  _$GNewRecordData_addRecord._(
      {required this.G__typename,
      required this.id,
      required this.moves,
      required this.time,
      required this.level})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GNewRecordData_addRecord', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GNewRecordData_addRecord', 'id');
    BuiltValueNullFieldError.checkNotNull(
        moves, 'GNewRecordData_addRecord', 'moves');
    BuiltValueNullFieldError.checkNotNull(
        time, 'GNewRecordData_addRecord', 'time');
    BuiltValueNullFieldError.checkNotNull(
        level, 'GNewRecordData_addRecord', 'level');
  }

  @override
  GNewRecordData_addRecord rebuild(
          void Function(GNewRecordData_addRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewRecordData_addRecordBuilder toBuilder() =>
      new GNewRecordData_addRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewRecordData_addRecord &&
        G__typename == other.G__typename &&
        id == other.id &&
        moves == other.moves &&
        time == other.time &&
        level == other.level;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), moves.hashCode),
            time.hashCode),
        level.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewRecordData_addRecord')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('moves', moves)
          ..add('time', time)
          ..add('level', level))
        .toString();
  }
}

class GNewRecordData_addRecordBuilder
    implements
        Builder<GNewRecordData_addRecord, GNewRecordData_addRecordBuilder> {
  _$GNewRecordData_addRecord? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _moves;
  int? get moves => _$this._moves;
  set moves(int? moves) => _$this._moves = moves;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  GNewRecordData_addRecordBuilder() {
    GNewRecordData_addRecord._initializeBuilder(this);
  }

  GNewRecordData_addRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _moves = $v.moves;
      _time = $v.time;
      _level = $v.level;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewRecordData_addRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewRecordData_addRecord;
  }

  @override
  void update(void Function(GNewRecordData_addRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewRecordData_addRecord build() {
    final _$result = _$v ??
        new _$GNewRecordData_addRecord._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GNewRecordData_addRecord', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GNewRecordData_addRecord', 'id'),
            moves: BuiltValueNullFieldError.checkNotNull(
                moves, 'GNewRecordData_addRecord', 'moves'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, 'GNewRecordData_addRecord', 'time'),
            level: BuiltValueNullFieldError.checkNotNull(
                level, 'GNewRecordData_addRecord', 'level'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
