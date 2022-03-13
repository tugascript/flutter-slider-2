// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'high_scores.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GHighScoresData> _$gHighScoresDataSerializer =
    new _$GHighScoresDataSerializer();
Serializer<GHighScoresData_getHighScores>
    _$gHighScoresDataGetHighScoresSerializer =
    new _$GHighScoresData_getHighScoresSerializer();
Serializer<GHighScoresData_getHighScores_records>
    _$gHighScoresDataGetHighScoresRecordsSerializer =
    new _$GHighScoresData_getHighScores_recordsSerializer();
Serializer<GHighScoresData_getHighScores_records_edges>
    _$gHighScoresDataGetHighScoresRecordsEdgesSerializer =
    new _$GHighScoresData_getHighScores_records_edgesSerializer();
Serializer<GHighScoresData_getHighScores_records_edges_node>
    _$gHighScoresDataGetHighScoresRecordsEdgesNodeSerializer =
    new _$GHighScoresData_getHighScores_records_edges_nodeSerializer();
Serializer<GHighScoresData_getHighScores_records_edges_node_owner>
    _$gHighScoresDataGetHighScoresRecordsEdgesNodeOwnerSerializer =
    new _$GHighScoresData_getHighScores_records_edges_node_ownerSerializer();
Serializer<GHighScoresData_getHighScores_records_pageInfo>
    _$gHighScoresDataGetHighScoresRecordsPageInfoSerializer =
    new _$GHighScoresData_getHighScores_records_pageInfoSerializer();
Serializer<GHighScoresData_getHighScores_currentRecord>
    _$gHighScoresDataGetHighScoresCurrentRecordSerializer =
    new _$GHighScoresData_getHighScores_currentRecordSerializer();

class _$GHighScoresDataSerializer
    implements StructuredSerializer<GHighScoresData> {
  @override
  final Iterable<Type> types = const [GHighScoresData, _$GHighScoresData];
  @override
  final String wireName = 'GHighScoresData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GHighScoresData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getHighScores',
      serializers.serialize(object.getHighScores,
          specifiedType: const FullType(GHighScoresData_getHighScores)),
    ];

    return result;
  }

  @override
  GHighScoresData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHighScoresDataBuilder();

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
        case 'getHighScores':
          result.getHighScores.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GHighScoresData_getHighScores))!
              as GHighScoresData_getHighScores);
          break;
      }
    }

    return result.build();
  }
}

class _$GHighScoresData_getHighScoresSerializer
    implements StructuredSerializer<GHighScoresData_getHighScores> {
  @override
  final Iterable<Type> types = const [
    GHighScoresData_getHighScores,
    _$GHighScoresData_getHighScores
  ];
  @override
  final String wireName = 'GHighScoresData_getHighScores';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHighScoresData_getHighScores object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'records',
      serializers.serialize(object.records,
          specifiedType: const FullType(GHighScoresData_getHighScores_records)),
    ];
    Object? value;
    value = object.currentRank;
    if (value != null) {
      result
        ..add('currentRank')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.currentRecord;
    if (value != null) {
      result
        ..add('currentRecord')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(GHighScoresData_getHighScores_currentRecord)));
    }
    return result;
  }

  @override
  GHighScoresData_getHighScores deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHighScoresData_getHighScoresBuilder();

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
        case 'records':
          result.records.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GHighScoresData_getHighScores_records))!
              as GHighScoresData_getHighScores_records);
          break;
        case 'currentRank':
          result.currentRank = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'currentRecord':
          result.currentRecord.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHighScoresData_getHighScores_currentRecord))!
              as GHighScoresData_getHighScores_currentRecord);
          break;
      }
    }

    return result.build();
  }
}

class _$GHighScoresData_getHighScores_recordsSerializer
    implements StructuredSerializer<GHighScoresData_getHighScores_records> {
  @override
  final Iterable<Type> types = const [
    GHighScoresData_getHighScores_records,
    _$GHighScoresData_getHighScores_records
  ];
  @override
  final String wireName = 'GHighScoresData_getHighScores_records';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GHighScoresData_getHighScores_records object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'edges',
      serializers.serialize(object.edges,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GHighScoresData_getHighScores_records_edges)
          ])),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType:
              const FullType(GHighScoresData_getHighScores_records_pageInfo)),
    ];

    return result;
  }

  @override
  GHighScoresData_getHighScores_records deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHighScoresData_getHighScores_recordsBuilder();

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
        case 'edges':
          result.edges.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(GHighScoresData_getHighScores_records_edges)
              ]))! as BuiltList<Object?>);
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHighScoresData_getHighScores_records_pageInfo))!
              as GHighScoresData_getHighScores_records_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GHighScoresData_getHighScores_records_edgesSerializer
    implements
        StructuredSerializer<GHighScoresData_getHighScores_records_edges> {
  @override
  final Iterable<Type> types = const [
    GHighScoresData_getHighScores_records_edges,
    _$GHighScoresData_getHighScores_records_edges
  ];
  @override
  final String wireName = 'GHighScoresData_getHighScores_records_edges';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHighScoresData_getHighScores_records_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'node',
      serializers.serialize(object.node,
          specifiedType:
              const FullType(GHighScoresData_getHighScores_records_edges_node)),
    ];

    return result;
  }

  @override
  GHighScoresData_getHighScores_records_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHighScoresData_getHighScores_records_edgesBuilder();

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
        case 'node':
          result.node.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHighScoresData_getHighScores_records_edges_node))!
              as GHighScoresData_getHighScores_records_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GHighScoresData_getHighScores_records_edges_nodeSerializer
    implements
        StructuredSerializer<GHighScoresData_getHighScores_records_edges_node> {
  @override
  final Iterable<Type> types = const [
    GHighScoresData_getHighScores_records_edges_node,
    _$GHighScoresData_getHighScores_records_edges_node
  ];
  @override
  final String wireName = 'GHighScoresData_getHighScores_records_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHighScoresData_getHighScores_records_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
      'moves',
      serializers.serialize(object.moves, specifiedType: const FullType(int)),
      'owner',
      serializers.serialize(object.owner,
          specifiedType: const FullType(
              GHighScoresData_getHighScores_records_edges_node_owner)),
    ];

    return result;
  }

  @override
  GHighScoresData_getHighScores_records_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHighScoresData_getHighScores_records_edges_nodeBuilder();

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
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'moves':
          result.moves = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GHighScoresData_getHighScores_records_edges_node_owner))!
              as GHighScoresData_getHighScores_records_edges_node_owner);
          break;
      }
    }

    return result.build();
  }
}

class _$GHighScoresData_getHighScores_records_edges_node_ownerSerializer
    implements
        StructuredSerializer<
            GHighScoresData_getHighScores_records_edges_node_owner> {
  @override
  final Iterable<Type> types = const [
    GHighScoresData_getHighScores_records_edges_node_owner,
    _$GHighScoresData_getHighScores_records_edges_node_owner
  ];
  @override
  final String wireName =
      'GHighScoresData_getHighScores_records_edges_node_owner';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHighScoresData_getHighScores_records_edges_node_owner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.picture;
    if (value != null) {
      result
        ..add('picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GHighScoresData_getHighScores_records_edges_node_owner deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result =
        new GHighScoresData_getHighScores_records_edges_node_ownerBuilder();

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
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GHighScoresData_getHighScores_records_pageInfoSerializer
    implements
        StructuredSerializer<GHighScoresData_getHighScores_records_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GHighScoresData_getHighScores_records_pageInfo,
    _$GHighScoresData_getHighScores_records_pageInfo
  ];
  @override
  final String wireName = 'GHighScoresData_getHighScores_records_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHighScoresData_getHighScores_records_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'endCursor',
      serializers.serialize(object.endCursor,
          specifiedType: const FullType(String)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
    ];

    return result;
  }

  @override
  GHighScoresData_getHighScores_records_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHighScoresData_getHighScores_records_pageInfoBuilder();

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
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$GHighScoresData_getHighScores_currentRecordSerializer
    implements
        StructuredSerializer<GHighScoresData_getHighScores_currentRecord> {
  @override
  final Iterable<Type> types = const [
    GHighScoresData_getHighScores_currentRecord,
    _$GHighScoresData_getHighScores_currentRecord
  ];
  @override
  final String wireName = 'GHighScoresData_getHighScores_currentRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GHighScoresData_getHighScores_currentRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
      'moves',
      serializers.serialize(object.moves, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GHighScoresData_getHighScores_currentRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHighScoresData_getHighScores_currentRecordBuilder();

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
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'moves':
          result.moves = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GHighScoresData extends GHighScoresData {
  @override
  final String G__typename;
  @override
  final GHighScoresData_getHighScores getHighScores;

  factory _$GHighScoresData([void Function(GHighScoresDataBuilder)? updates]) =>
      (new GHighScoresDataBuilder()..update(updates)).build();

  _$GHighScoresData._({required this.G__typename, required this.getHighScores})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GHighScoresData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getHighScores, 'GHighScoresData', 'getHighScores');
  }

  @override
  GHighScoresData rebuild(void Function(GHighScoresDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresDataBuilder toBuilder() =>
      new GHighScoresDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresData &&
        G__typename == other.G__typename &&
        getHighScores == other.getHighScores;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getHighScores.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GHighScoresData')
          ..add('G__typename', G__typename)
          ..add('getHighScores', getHighScores))
        .toString();
  }
}

class GHighScoresDataBuilder
    implements Builder<GHighScoresData, GHighScoresDataBuilder> {
  _$GHighScoresData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GHighScoresData_getHighScoresBuilder? _getHighScores;
  GHighScoresData_getHighScoresBuilder get getHighScores =>
      _$this._getHighScores ??= new GHighScoresData_getHighScoresBuilder();
  set getHighScores(GHighScoresData_getHighScoresBuilder? getHighScores) =>
      _$this._getHighScores = getHighScores;

  GHighScoresDataBuilder() {
    GHighScoresData._initializeBuilder(this);
  }

  GHighScoresDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getHighScores = $v.getHighScores.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresData;
  }

  @override
  void update(void Function(GHighScoresDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresData build() {
    _$GHighScoresData _$result;
    try {
      _$result = _$v ??
          new _$GHighScoresData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GHighScoresData', 'G__typename'),
              getHighScores: getHighScores.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getHighScores';
        getHighScores.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GHighScoresData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHighScoresData_getHighScores extends GHighScoresData_getHighScores {
  @override
  final String G__typename;
  @override
  final GHighScoresData_getHighScores_records records;
  @override
  final int? currentRank;
  @override
  final GHighScoresData_getHighScores_currentRecord? currentRecord;

  factory _$GHighScoresData_getHighScores(
          [void Function(GHighScoresData_getHighScoresBuilder)? updates]) =>
      (new GHighScoresData_getHighScoresBuilder()..update(updates)).build();

  _$GHighScoresData_getHighScores._(
      {required this.G__typename,
      required this.records,
      this.currentRank,
      this.currentRecord})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GHighScoresData_getHighScores', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        records, 'GHighScoresData_getHighScores', 'records');
  }

  @override
  GHighScoresData_getHighScores rebuild(
          void Function(GHighScoresData_getHighScoresBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresData_getHighScoresBuilder toBuilder() =>
      new GHighScoresData_getHighScoresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresData_getHighScores &&
        G__typename == other.G__typename &&
        records == other.records &&
        currentRank == other.currentRank &&
        currentRecord == other.currentRecord;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), records.hashCode),
            currentRank.hashCode),
        currentRecord.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GHighScoresData_getHighScores')
          ..add('G__typename', G__typename)
          ..add('records', records)
          ..add('currentRank', currentRank)
          ..add('currentRecord', currentRecord))
        .toString();
  }
}

class GHighScoresData_getHighScoresBuilder
    implements
        Builder<GHighScoresData_getHighScores,
            GHighScoresData_getHighScoresBuilder> {
  _$GHighScoresData_getHighScores? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GHighScoresData_getHighScores_recordsBuilder? _records;
  GHighScoresData_getHighScores_recordsBuilder get records =>
      _$this._records ??= new GHighScoresData_getHighScores_recordsBuilder();
  set records(GHighScoresData_getHighScores_recordsBuilder? records) =>
      _$this._records = records;

  int? _currentRank;
  int? get currentRank => _$this._currentRank;
  set currentRank(int? currentRank) => _$this._currentRank = currentRank;

  GHighScoresData_getHighScores_currentRecordBuilder? _currentRecord;
  GHighScoresData_getHighScores_currentRecordBuilder get currentRecord =>
      _$this._currentRecord ??=
          new GHighScoresData_getHighScores_currentRecordBuilder();
  set currentRecord(
          GHighScoresData_getHighScores_currentRecordBuilder? currentRecord) =>
      _$this._currentRecord = currentRecord;

  GHighScoresData_getHighScoresBuilder() {
    GHighScoresData_getHighScores._initializeBuilder(this);
  }

  GHighScoresData_getHighScoresBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _records = $v.records.toBuilder();
      _currentRank = $v.currentRank;
      _currentRecord = $v.currentRecord?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresData_getHighScores other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresData_getHighScores;
  }

  @override
  void update(void Function(GHighScoresData_getHighScoresBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresData_getHighScores build() {
    _$GHighScoresData_getHighScores _$result;
    try {
      _$result = _$v ??
          new _$GHighScoresData_getHighScores._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GHighScoresData_getHighScores', 'G__typename'),
              records: records.build(),
              currentRank: currentRank,
              currentRecord: _currentRecord?.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();

        _$failedField = 'currentRecord';
        _currentRecord?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GHighScoresData_getHighScores', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHighScoresData_getHighScores_records
    extends GHighScoresData_getHighScores_records {
  @override
  final String G__typename;
  @override
  final BuiltList<GHighScoresData_getHighScores_records_edges> edges;
  @override
  final int totalCount;
  @override
  final GHighScoresData_getHighScores_records_pageInfo pageInfo;

  factory _$GHighScoresData_getHighScores_records(
          [void Function(GHighScoresData_getHighScores_recordsBuilder)?
              updates]) =>
      (new GHighScoresData_getHighScores_recordsBuilder()..update(updates))
          .build();

  _$GHighScoresData_getHighScores_records._(
      {required this.G__typename,
      required this.edges,
      required this.totalCount,
      required this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GHighScoresData_getHighScores_records', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        edges, 'GHighScoresData_getHighScores_records', 'edges');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GHighScoresData_getHighScores_records', 'totalCount');
    BuiltValueNullFieldError.checkNotNull(
        pageInfo, 'GHighScoresData_getHighScores_records', 'pageInfo');
  }

  @override
  GHighScoresData_getHighScores_records rebuild(
          void Function(GHighScoresData_getHighScores_recordsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresData_getHighScores_recordsBuilder toBuilder() =>
      new GHighScoresData_getHighScores_recordsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresData_getHighScores_records &&
        G__typename == other.G__typename &&
        edges == other.edges &&
        totalCount == other.totalCount &&
        pageInfo == other.pageInfo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), edges.hashCode),
            totalCount.hashCode),
        pageInfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GHighScoresData_getHighScores_records')
          ..add('G__typename', G__typename)
          ..add('edges', edges)
          ..add('totalCount', totalCount)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GHighScoresData_getHighScores_recordsBuilder
    implements
        Builder<GHighScoresData_getHighScores_records,
            GHighScoresData_getHighScores_recordsBuilder> {
  _$GHighScoresData_getHighScores_records? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GHighScoresData_getHighScores_records_edges>? _edges;
  ListBuilder<GHighScoresData_getHighScores_records_edges> get edges =>
      _$this._edges ??=
          new ListBuilder<GHighScoresData_getHighScores_records_edges>();
  set edges(ListBuilder<GHighScoresData_getHighScores_records_edges>? edges) =>
      _$this._edges = edges;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GHighScoresData_getHighScores_records_pageInfoBuilder? _pageInfo;
  GHighScoresData_getHighScores_records_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GHighScoresData_getHighScores_records_pageInfoBuilder();
  set pageInfo(
          GHighScoresData_getHighScores_records_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  GHighScoresData_getHighScores_recordsBuilder() {
    GHighScoresData_getHighScores_records._initializeBuilder(this);
  }

  GHighScoresData_getHighScores_recordsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges.toBuilder();
      _totalCount = $v.totalCount;
      _pageInfo = $v.pageInfo.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresData_getHighScores_records other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresData_getHighScores_records;
  }

  @override
  void update(
      void Function(GHighScoresData_getHighScores_recordsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresData_getHighScores_records build() {
    _$GHighScoresData_getHighScores_records _$result;
    try {
      _$result = _$v ??
          new _$GHighScoresData_getHighScores_records._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GHighScoresData_getHighScores_records', 'G__typename'),
              edges: edges.build(),
              totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                  'GHighScoresData_getHighScores_records', 'totalCount'),
              pageInfo: pageInfo.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        edges.build();

        _$failedField = 'pageInfo';
        pageInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GHighScoresData_getHighScores_records',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHighScoresData_getHighScores_records_edges
    extends GHighScoresData_getHighScores_records_edges {
  @override
  final String G__typename;
  @override
  final GHighScoresData_getHighScores_records_edges_node node;

  factory _$GHighScoresData_getHighScores_records_edges(
          [void Function(GHighScoresData_getHighScores_records_edgesBuilder)?
              updates]) =>
      (new GHighScoresData_getHighScores_records_edgesBuilder()
            ..update(updates))
          .build();

  _$GHighScoresData_getHighScores_records_edges._(
      {required this.G__typename, required this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GHighScoresData_getHighScores_records_edges', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        node, 'GHighScoresData_getHighScores_records_edges', 'node');
  }

  @override
  GHighScoresData_getHighScores_records_edges rebuild(
          void Function(GHighScoresData_getHighScores_records_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresData_getHighScores_records_edgesBuilder toBuilder() =>
      new GHighScoresData_getHighScores_records_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresData_getHighScores_records_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GHighScoresData_getHighScores_records_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GHighScoresData_getHighScores_records_edgesBuilder
    implements
        Builder<GHighScoresData_getHighScores_records_edges,
            GHighScoresData_getHighScores_records_edgesBuilder> {
  _$GHighScoresData_getHighScores_records_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GHighScoresData_getHighScores_records_edges_nodeBuilder? _node;
  GHighScoresData_getHighScores_records_edges_nodeBuilder get node =>
      _$this._node ??=
          new GHighScoresData_getHighScores_records_edges_nodeBuilder();
  set node(GHighScoresData_getHighScores_records_edges_nodeBuilder? node) =>
      _$this._node = node;

  GHighScoresData_getHighScores_records_edgesBuilder() {
    GHighScoresData_getHighScores_records_edges._initializeBuilder(this);
  }

  GHighScoresData_getHighScores_records_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresData_getHighScores_records_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresData_getHighScores_records_edges;
  }

  @override
  void update(
      void Function(GHighScoresData_getHighScores_records_edgesBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresData_getHighScores_records_edges build() {
    _$GHighScoresData_getHighScores_records_edges _$result;
    try {
      _$result = _$v ??
          new _$GHighScoresData_getHighScores_records_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GHighScoresData_getHighScores_records_edges', 'G__typename'),
              node: node.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GHighScoresData_getHighScores_records_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHighScoresData_getHighScores_records_edges_node
    extends GHighScoresData_getHighScores_records_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int time;
  @override
  final int moves;
  @override
  final GHighScoresData_getHighScores_records_edges_node_owner owner;

  factory _$GHighScoresData_getHighScores_records_edges_node(
          [void Function(
                  GHighScoresData_getHighScores_records_edges_nodeBuilder)?
              updates]) =>
      (new GHighScoresData_getHighScores_records_edges_nodeBuilder()
            ..update(updates))
          .build();

  _$GHighScoresData_getHighScores_records_edges_node._(
      {required this.G__typename,
      required this.id,
      required this.time,
      required this.moves,
      required this.owner})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GHighScoresData_getHighScores_records_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GHighScoresData_getHighScores_records_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        time, 'GHighScoresData_getHighScores_records_edges_node', 'time');
    BuiltValueNullFieldError.checkNotNull(
        moves, 'GHighScoresData_getHighScores_records_edges_node', 'moves');
    BuiltValueNullFieldError.checkNotNull(
        owner, 'GHighScoresData_getHighScores_records_edges_node', 'owner');
  }

  @override
  GHighScoresData_getHighScores_records_edges_node rebuild(
          void Function(GHighScoresData_getHighScores_records_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresData_getHighScores_records_edges_nodeBuilder toBuilder() =>
      new GHighScoresData_getHighScores_records_edges_nodeBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresData_getHighScores_records_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        time == other.time &&
        moves == other.moves &&
        owner == other.owner;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, G__typename.hashCode), id.hashCode), time.hashCode),
            moves.hashCode),
        owner.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GHighScoresData_getHighScores_records_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('time', time)
          ..add('moves', moves)
          ..add('owner', owner))
        .toString();
  }
}

class GHighScoresData_getHighScores_records_edges_nodeBuilder
    implements
        Builder<GHighScoresData_getHighScores_records_edges_node,
            GHighScoresData_getHighScores_records_edges_nodeBuilder> {
  _$GHighScoresData_getHighScores_records_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  int? _moves;
  int? get moves => _$this._moves;
  set moves(int? moves) => _$this._moves = moves;

  GHighScoresData_getHighScores_records_edges_node_ownerBuilder? _owner;
  GHighScoresData_getHighScores_records_edges_node_ownerBuilder get owner =>
      _$this._owner ??=
          new GHighScoresData_getHighScores_records_edges_node_ownerBuilder();
  set owner(
          GHighScoresData_getHighScores_records_edges_node_ownerBuilder?
              owner) =>
      _$this._owner = owner;

  GHighScoresData_getHighScores_records_edges_nodeBuilder() {
    GHighScoresData_getHighScores_records_edges_node._initializeBuilder(this);
  }

  GHighScoresData_getHighScores_records_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _time = $v.time;
      _moves = $v.moves;
      _owner = $v.owner.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresData_getHighScores_records_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresData_getHighScores_records_edges_node;
  }

  @override
  void update(
      void Function(GHighScoresData_getHighScores_records_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresData_getHighScores_records_edges_node build() {
    _$GHighScoresData_getHighScores_records_edges_node _$result;
    try {
      _$result = _$v ??
          new _$GHighScoresData_getHighScores_records_edges_node._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename,
                  'GHighScoresData_getHighScores_records_edges_node',
                  'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GHighScoresData_getHighScores_records_edges_node', 'id'),
              time: BuiltValueNullFieldError.checkNotNull(time,
                  'GHighScoresData_getHighScores_records_edges_node', 'time'),
              moves: BuiltValueNullFieldError.checkNotNull(moves,
                  'GHighScoresData_getHighScores_records_edges_node', 'moves'),
              owner: owner.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'owner';
        owner.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GHighScoresData_getHighScores_records_edges_node',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GHighScoresData_getHighScores_records_edges_node_owner
    extends GHighScoresData_getHighScores_records_edges_node_owner {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String? picture;
  @override
  final String username;

  factory _$GHighScoresData_getHighScores_records_edges_node_owner(
          [void Function(
                  GHighScoresData_getHighScores_records_edges_node_ownerBuilder)?
              updates]) =>
      (new GHighScoresData_getHighScores_records_edges_node_ownerBuilder()
            ..update(updates))
          .build();

  _$GHighScoresData_getHighScores_records_edges_node_owner._(
      {required this.G__typename,
      required this.id,
      this.picture,
      required this.username})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename,
        'GHighScoresData_getHighScores_records_edges_node_owner',
        'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GHighScoresData_getHighScores_records_edges_node_owner', 'id');
    BuiltValueNullFieldError.checkNotNull(username,
        'GHighScoresData_getHighScores_records_edges_node_owner', 'username');
  }

  @override
  GHighScoresData_getHighScores_records_edges_node_owner rebuild(
          void Function(
                  GHighScoresData_getHighScores_records_edges_node_ownerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresData_getHighScores_records_edges_node_ownerBuilder toBuilder() =>
      new GHighScoresData_getHighScores_records_edges_node_ownerBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresData_getHighScores_records_edges_node_owner &&
        G__typename == other.G__typename &&
        id == other.id &&
        picture == other.picture &&
        username == other.username;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), picture.hashCode),
        username.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GHighScoresData_getHighScores_records_edges_node_owner')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('picture', picture)
          ..add('username', username))
        .toString();
  }
}

class GHighScoresData_getHighScores_records_edges_node_ownerBuilder
    implements
        Builder<GHighScoresData_getHighScores_records_edges_node_owner,
            GHighScoresData_getHighScores_records_edges_node_ownerBuilder> {
  _$GHighScoresData_getHighScores_records_edges_node_owner? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  GHighScoresData_getHighScores_records_edges_node_ownerBuilder() {
    GHighScoresData_getHighScores_records_edges_node_owner._initializeBuilder(
        this);
  }

  GHighScoresData_getHighScores_records_edges_node_ownerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _picture = $v.picture;
      _username = $v.username;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresData_getHighScores_records_edges_node_owner other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresData_getHighScores_records_edges_node_owner;
  }

  @override
  void update(
      void Function(
              GHighScoresData_getHighScores_records_edges_node_ownerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresData_getHighScores_records_edges_node_owner build() {
    final _$result = _$v ??
        new _$GHighScoresData_getHighScores_records_edges_node_owner._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GHighScoresData_getHighScores_records_edges_node_owner',
                'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(id,
                'GHighScoresData_getHighScores_records_edges_node_owner', 'id'),
            picture: picture,
            username: BuiltValueNullFieldError.checkNotNull(
                username,
                'GHighScoresData_getHighScores_records_edges_node_owner',
                'username'));
    replace(_$result);
    return _$result;
  }
}

class _$GHighScoresData_getHighScores_records_pageInfo
    extends GHighScoresData_getHighScores_records_pageInfo {
  @override
  final String G__typename;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;

  factory _$GHighScoresData_getHighScores_records_pageInfo(
          [void Function(GHighScoresData_getHighScores_records_pageInfoBuilder)?
              updates]) =>
      (new GHighScoresData_getHighScores_records_pageInfoBuilder()
            ..update(updates))
          .build();

  _$GHighScoresData_getHighScores_records_pageInfo._(
      {required this.G__typename,
      required this.endCursor,
      required this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GHighScoresData_getHighScores_records_pageInfo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(endCursor,
        'GHighScoresData_getHighScores_records_pageInfo', 'endCursor');
    BuiltValueNullFieldError.checkNotNull(hasNextPage,
        'GHighScoresData_getHighScores_records_pageInfo', 'hasNextPage');
  }

  @override
  GHighScoresData_getHighScores_records_pageInfo rebuild(
          void Function(GHighScoresData_getHighScores_records_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresData_getHighScores_records_pageInfoBuilder toBuilder() =>
      new GHighScoresData_getHighScores_records_pageInfoBuilder()
        ..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresData_getHighScores_records_pageInfo &&
        G__typename == other.G__typename &&
        endCursor == other.endCursor &&
        hasNextPage == other.hasNextPage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), endCursor.hashCode),
        hasNextPage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GHighScoresData_getHighScores_records_pageInfo')
          ..add('G__typename', G__typename)
          ..add('endCursor', endCursor)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GHighScoresData_getHighScores_records_pageInfoBuilder
    implements
        Builder<GHighScoresData_getHighScores_records_pageInfo,
            GHighScoresData_getHighScores_records_pageInfoBuilder> {
  _$GHighScoresData_getHighScores_records_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _endCursor;
  String? get endCursor => _$this._endCursor;
  set endCursor(String? endCursor) => _$this._endCursor = endCursor;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GHighScoresData_getHighScores_records_pageInfoBuilder() {
    GHighScoresData_getHighScores_records_pageInfo._initializeBuilder(this);
  }

  GHighScoresData_getHighScores_records_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _endCursor = $v.endCursor;
      _hasNextPage = $v.hasNextPage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresData_getHighScores_records_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresData_getHighScores_records_pageInfo;
  }

  @override
  void update(
      void Function(GHighScoresData_getHighScores_records_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresData_getHighScores_records_pageInfo build() {
    final _$result = _$v ??
        new _$GHighScoresData_getHighScores_records_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename,
                'GHighScoresData_getHighScores_records_pageInfo',
                'G__typename'),
            endCursor: BuiltValueNullFieldError.checkNotNull(endCursor,
                'GHighScoresData_getHighScores_records_pageInfo', 'endCursor'),
            hasNextPage: BuiltValueNullFieldError.checkNotNull(
                hasNextPage,
                'GHighScoresData_getHighScores_records_pageInfo',
                'hasNextPage'));
    replace(_$result);
    return _$result;
  }
}

class _$GHighScoresData_getHighScores_currentRecord
    extends GHighScoresData_getHighScores_currentRecord {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int time;
  @override
  final int moves;

  factory _$GHighScoresData_getHighScores_currentRecord(
          [void Function(GHighScoresData_getHighScores_currentRecordBuilder)?
              updates]) =>
      (new GHighScoresData_getHighScores_currentRecordBuilder()
            ..update(updates))
          .build();

  _$GHighScoresData_getHighScores_currentRecord._(
      {required this.G__typename,
      required this.id,
      required this.time,
      required this.moves})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GHighScoresData_getHighScores_currentRecord', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GHighScoresData_getHighScores_currentRecord', 'id');
    BuiltValueNullFieldError.checkNotNull(
        time, 'GHighScoresData_getHighScores_currentRecord', 'time');
    BuiltValueNullFieldError.checkNotNull(
        moves, 'GHighScoresData_getHighScores_currentRecord', 'moves');
  }

  @override
  GHighScoresData_getHighScores_currentRecord rebuild(
          void Function(GHighScoresData_getHighScores_currentRecordBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresData_getHighScores_currentRecordBuilder toBuilder() =>
      new GHighScoresData_getHighScores_currentRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresData_getHighScores_currentRecord &&
        G__typename == other.G__typename &&
        id == other.id &&
        time == other.time &&
        moves == other.moves;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), time.hashCode),
        moves.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GHighScoresData_getHighScores_currentRecord')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('time', time)
          ..add('moves', moves))
        .toString();
  }
}

class GHighScoresData_getHighScores_currentRecordBuilder
    implements
        Builder<GHighScoresData_getHighScores_currentRecord,
            GHighScoresData_getHighScores_currentRecordBuilder> {
  _$GHighScoresData_getHighScores_currentRecord? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  int? _moves;
  int? get moves => _$this._moves;
  set moves(int? moves) => _$this._moves = moves;

  GHighScoresData_getHighScores_currentRecordBuilder() {
    GHighScoresData_getHighScores_currentRecord._initializeBuilder(this);
  }

  GHighScoresData_getHighScores_currentRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _time = $v.time;
      _moves = $v.moves;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresData_getHighScores_currentRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresData_getHighScores_currentRecord;
  }

  @override
  void update(
      void Function(GHighScoresData_getHighScores_currentRecordBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresData_getHighScores_currentRecord build() {
    final _$result = _$v ??
        new _$GHighScoresData_getHighScores_currentRecord._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GHighScoresData_getHighScores_currentRecord', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GHighScoresData_getHighScores_currentRecord', 'id'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, 'GHighScoresData_getHighScores_currentRecord', 'time'),
            moves: BuiltValueNullFieldError.checkNotNull(
                moves, 'GHighScoresData_getHighScores_currentRecord', 'moves'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
