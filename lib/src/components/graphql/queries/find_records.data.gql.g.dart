// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_records.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFindRecordsData> _$gFindRecordsDataSerializer =
    new _$GFindRecordsDataSerializer();
Serializer<GFindRecordsData_getRecords> _$gFindRecordsDataGetRecordsSerializer =
    new _$GFindRecordsData_getRecordsSerializer();
Serializer<GFindRecordsData_getRecords_edges>
    _$gFindRecordsDataGetRecordsEdgesSerializer =
    new _$GFindRecordsData_getRecords_edgesSerializer();
Serializer<GFindRecordsData_getRecords_edges_node>
    _$gFindRecordsDataGetRecordsEdgesNodeSerializer =
    new _$GFindRecordsData_getRecords_edges_nodeSerializer();
Serializer<GFindRecordsData_getRecords_pageInfo>
    _$gFindRecordsDataGetRecordsPageInfoSerializer =
    new _$GFindRecordsData_getRecords_pageInfoSerializer();

class _$GFindRecordsDataSerializer
    implements StructuredSerializer<GFindRecordsData> {
  @override
  final Iterable<Type> types = const [GFindRecordsData, _$GFindRecordsData];
  @override
  final String wireName = 'GFindRecordsData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFindRecordsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getRecords',
      serializers.serialize(object.getRecords,
          specifiedType: const FullType(GFindRecordsData_getRecords)),
    ];

    return result;
  }

  @override
  GFindRecordsData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindRecordsDataBuilder();

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
        case 'getRecords':
          result.getRecords.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFindRecordsData_getRecords))!
              as GFindRecordsData_getRecords);
          break;
      }
    }

    return result.build();
  }
}

class _$GFindRecordsData_getRecordsSerializer
    implements StructuredSerializer<GFindRecordsData_getRecords> {
  @override
  final Iterable<Type> types = const [
    GFindRecordsData_getRecords,
    _$GFindRecordsData_getRecords
  ];
  @override
  final String wireName = 'GFindRecordsData_getRecords';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFindRecordsData_getRecords object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'edges',
      serializers.serialize(object.edges,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GFindRecordsData_getRecords_edges)])),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType: const FullType(GFindRecordsData_getRecords_pageInfo)),
    ];

    return result;
  }

  @override
  GFindRecordsData_getRecords deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindRecordsData_getRecordsBuilder();

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
                const FullType(GFindRecordsData_getRecords_edges)
              ]))! as BuiltList<Object?>);
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFindRecordsData_getRecords_pageInfo))!
              as GFindRecordsData_getRecords_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GFindRecordsData_getRecords_edgesSerializer
    implements StructuredSerializer<GFindRecordsData_getRecords_edges> {
  @override
  final Iterable<Type> types = const [
    GFindRecordsData_getRecords_edges,
    _$GFindRecordsData_getRecords_edges
  ];
  @override
  final String wireName = 'GFindRecordsData_getRecords_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFindRecordsData_getRecords_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'node',
      serializers.serialize(object.node,
          specifiedType:
              const FullType(GFindRecordsData_getRecords_edges_node)),
    ];

    return result;
  }

  @override
  GFindRecordsData_getRecords_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindRecordsData_getRecords_edgesBuilder();

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
                  specifiedType:
                      const FullType(GFindRecordsData_getRecords_edges_node))!
              as GFindRecordsData_getRecords_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GFindRecordsData_getRecords_edges_nodeSerializer
    implements StructuredSerializer<GFindRecordsData_getRecords_edges_node> {
  @override
  final Iterable<Type> types = const [
    GFindRecordsData_getRecords_edges_node,
    _$GFindRecordsData_getRecords_edges_node
  ];
  @override
  final String wireName = 'GFindRecordsData_getRecords_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFindRecordsData_getRecords_edges_node object,
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
  GFindRecordsData_getRecords_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindRecordsData_getRecords_edges_nodeBuilder();

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

class _$GFindRecordsData_getRecords_pageInfoSerializer
    implements StructuredSerializer<GFindRecordsData_getRecords_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GFindRecordsData_getRecords_pageInfo,
    _$GFindRecordsData_getRecords_pageInfo
  ];
  @override
  final String wireName = 'GFindRecordsData_getRecords_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFindRecordsData_getRecords_pageInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'hasNextPage',
      serializers.serialize(object.hasNextPage,
          specifiedType: const FullType(bool)),
      'endCursor',
      serializers.serialize(object.endCursor,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GFindRecordsData_getRecords_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindRecordsData_getRecords_pageInfoBuilder();

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
        case 'hasNextPage':
          result.hasNextPage = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'endCursor':
          result.endCursor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GFindRecordsData extends GFindRecordsData {
  @override
  final String G__typename;
  @override
  final GFindRecordsData_getRecords getRecords;

  factory _$GFindRecordsData(
          [void Function(GFindRecordsDataBuilder)? updates]) =>
      (new GFindRecordsDataBuilder()..update(updates)).build();

  _$GFindRecordsData._({required this.G__typename, required this.getRecords})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindRecordsData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getRecords, 'GFindRecordsData', 'getRecords');
  }

  @override
  GFindRecordsData rebuild(void Function(GFindRecordsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindRecordsDataBuilder toBuilder() =>
      new GFindRecordsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindRecordsData &&
        G__typename == other.G__typename &&
        getRecords == other.getRecords;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getRecords.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFindRecordsData')
          ..add('G__typename', G__typename)
          ..add('getRecords', getRecords))
        .toString();
  }
}

class GFindRecordsDataBuilder
    implements Builder<GFindRecordsData, GFindRecordsDataBuilder> {
  _$GFindRecordsData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFindRecordsData_getRecordsBuilder? _getRecords;
  GFindRecordsData_getRecordsBuilder get getRecords =>
      _$this._getRecords ??= new GFindRecordsData_getRecordsBuilder();
  set getRecords(GFindRecordsData_getRecordsBuilder? getRecords) =>
      _$this._getRecords = getRecords;

  GFindRecordsDataBuilder() {
    GFindRecordsData._initializeBuilder(this);
  }

  GFindRecordsDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getRecords = $v.getRecords.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFindRecordsData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindRecordsData;
  }

  @override
  void update(void Function(GFindRecordsDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindRecordsData build() {
    _$GFindRecordsData _$result;
    try {
      _$result = _$v ??
          new _$GFindRecordsData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFindRecordsData', 'G__typename'),
              getRecords: getRecords.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getRecords';
        getRecords.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFindRecordsData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFindRecordsData_getRecords extends GFindRecordsData_getRecords {
  @override
  final String G__typename;
  @override
  final BuiltList<GFindRecordsData_getRecords_edges> edges;
  @override
  final int totalCount;
  @override
  final GFindRecordsData_getRecords_pageInfo pageInfo;

  factory _$GFindRecordsData_getRecords(
          [void Function(GFindRecordsData_getRecordsBuilder)? updates]) =>
      (new GFindRecordsData_getRecordsBuilder()..update(updates)).build();

  _$GFindRecordsData_getRecords._(
      {required this.G__typename,
      required this.edges,
      required this.totalCount,
      required this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindRecordsData_getRecords', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        edges, 'GFindRecordsData_getRecords', 'edges');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GFindRecordsData_getRecords', 'totalCount');
    BuiltValueNullFieldError.checkNotNull(
        pageInfo, 'GFindRecordsData_getRecords', 'pageInfo');
  }

  @override
  GFindRecordsData_getRecords rebuild(
          void Function(GFindRecordsData_getRecordsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindRecordsData_getRecordsBuilder toBuilder() =>
      new GFindRecordsData_getRecordsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindRecordsData_getRecords &&
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
    return (newBuiltValueToStringHelper('GFindRecordsData_getRecords')
          ..add('G__typename', G__typename)
          ..add('edges', edges)
          ..add('totalCount', totalCount)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GFindRecordsData_getRecordsBuilder
    implements
        Builder<GFindRecordsData_getRecords,
            GFindRecordsData_getRecordsBuilder> {
  _$GFindRecordsData_getRecords? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFindRecordsData_getRecords_edges>? _edges;
  ListBuilder<GFindRecordsData_getRecords_edges> get edges =>
      _$this._edges ??= new ListBuilder<GFindRecordsData_getRecords_edges>();
  set edges(ListBuilder<GFindRecordsData_getRecords_edges>? edges) =>
      _$this._edges = edges;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GFindRecordsData_getRecords_pageInfoBuilder? _pageInfo;
  GFindRecordsData_getRecords_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GFindRecordsData_getRecords_pageInfoBuilder();
  set pageInfo(GFindRecordsData_getRecords_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  GFindRecordsData_getRecordsBuilder() {
    GFindRecordsData_getRecords._initializeBuilder(this);
  }

  GFindRecordsData_getRecordsBuilder get _$this {
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
  void replace(GFindRecordsData_getRecords other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindRecordsData_getRecords;
  }

  @override
  void update(void Function(GFindRecordsData_getRecordsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindRecordsData_getRecords build() {
    _$GFindRecordsData_getRecords _$result;
    try {
      _$result = _$v ??
          new _$GFindRecordsData_getRecords._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFindRecordsData_getRecords', 'G__typename'),
              edges: edges.build(),
              totalCount: BuiltValueNullFieldError.checkNotNull(
                  totalCount, 'GFindRecordsData_getRecords', 'totalCount'),
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
            'GFindRecordsData_getRecords', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFindRecordsData_getRecords_edges
    extends GFindRecordsData_getRecords_edges {
  @override
  final String G__typename;
  @override
  final GFindRecordsData_getRecords_edges_node node;

  factory _$GFindRecordsData_getRecords_edges(
          [void Function(GFindRecordsData_getRecords_edgesBuilder)? updates]) =>
      (new GFindRecordsData_getRecords_edgesBuilder()..update(updates)).build();

  _$GFindRecordsData_getRecords_edges._(
      {required this.G__typename, required this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindRecordsData_getRecords_edges', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        node, 'GFindRecordsData_getRecords_edges', 'node');
  }

  @override
  GFindRecordsData_getRecords_edges rebuild(
          void Function(GFindRecordsData_getRecords_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindRecordsData_getRecords_edgesBuilder toBuilder() =>
      new GFindRecordsData_getRecords_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindRecordsData_getRecords_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFindRecordsData_getRecords_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GFindRecordsData_getRecords_edgesBuilder
    implements
        Builder<GFindRecordsData_getRecords_edges,
            GFindRecordsData_getRecords_edgesBuilder> {
  _$GFindRecordsData_getRecords_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFindRecordsData_getRecords_edges_nodeBuilder? _node;
  GFindRecordsData_getRecords_edges_nodeBuilder get node =>
      _$this._node ??= new GFindRecordsData_getRecords_edges_nodeBuilder();
  set node(GFindRecordsData_getRecords_edges_nodeBuilder? node) =>
      _$this._node = node;

  GFindRecordsData_getRecords_edgesBuilder() {
    GFindRecordsData_getRecords_edges._initializeBuilder(this);
  }

  GFindRecordsData_getRecords_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFindRecordsData_getRecords_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindRecordsData_getRecords_edges;
  }

  @override
  void update(
      void Function(GFindRecordsData_getRecords_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindRecordsData_getRecords_edges build() {
    _$GFindRecordsData_getRecords_edges _$result;
    try {
      _$result = _$v ??
          new _$GFindRecordsData_getRecords_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GFindRecordsData_getRecords_edges', 'G__typename'),
              node: node.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFindRecordsData_getRecords_edges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFindRecordsData_getRecords_edges_node
    extends GFindRecordsData_getRecords_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int time;
  @override
  final int moves;

  factory _$GFindRecordsData_getRecords_edges_node(
          [void Function(GFindRecordsData_getRecords_edges_nodeBuilder)?
              updates]) =>
      (new GFindRecordsData_getRecords_edges_nodeBuilder()..update(updates))
          .build();

  _$GFindRecordsData_getRecords_edges_node._(
      {required this.G__typename,
      required this.id,
      required this.time,
      required this.moves})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindRecordsData_getRecords_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFindRecordsData_getRecords_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        time, 'GFindRecordsData_getRecords_edges_node', 'time');
    BuiltValueNullFieldError.checkNotNull(
        moves, 'GFindRecordsData_getRecords_edges_node', 'moves');
  }

  @override
  GFindRecordsData_getRecords_edges_node rebuild(
          void Function(GFindRecordsData_getRecords_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindRecordsData_getRecords_edges_nodeBuilder toBuilder() =>
      new GFindRecordsData_getRecords_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindRecordsData_getRecords_edges_node &&
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
            'GFindRecordsData_getRecords_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('time', time)
          ..add('moves', moves))
        .toString();
  }
}

class GFindRecordsData_getRecords_edges_nodeBuilder
    implements
        Builder<GFindRecordsData_getRecords_edges_node,
            GFindRecordsData_getRecords_edges_nodeBuilder> {
  _$GFindRecordsData_getRecords_edges_node? _$v;

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

  GFindRecordsData_getRecords_edges_nodeBuilder() {
    GFindRecordsData_getRecords_edges_node._initializeBuilder(this);
  }

  GFindRecordsData_getRecords_edges_nodeBuilder get _$this {
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
  void replace(GFindRecordsData_getRecords_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindRecordsData_getRecords_edges_node;
  }

  @override
  void update(
      void Function(GFindRecordsData_getRecords_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindRecordsData_getRecords_edges_node build() {
    final _$result = _$v ??
        new _$GFindRecordsData_getRecords_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFindRecordsData_getRecords_edges_node', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFindRecordsData_getRecords_edges_node', 'id'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, 'GFindRecordsData_getRecords_edges_node', 'time'),
            moves: BuiltValueNullFieldError.checkNotNull(
                moves, 'GFindRecordsData_getRecords_edges_node', 'moves'));
    replace(_$result);
    return _$result;
  }
}

class _$GFindRecordsData_getRecords_pageInfo
    extends GFindRecordsData_getRecords_pageInfo {
  @override
  final String G__typename;
  @override
  final bool hasNextPage;
  @override
  final String endCursor;

  factory _$GFindRecordsData_getRecords_pageInfo(
          [void Function(GFindRecordsData_getRecords_pageInfoBuilder)?
              updates]) =>
      (new GFindRecordsData_getRecords_pageInfoBuilder()..update(updates))
          .build();

  _$GFindRecordsData_getRecords_pageInfo._(
      {required this.G__typename,
      required this.hasNextPage,
      required this.endCursor})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindRecordsData_getRecords_pageInfo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        hasNextPage, 'GFindRecordsData_getRecords_pageInfo', 'hasNextPage');
    BuiltValueNullFieldError.checkNotNull(
        endCursor, 'GFindRecordsData_getRecords_pageInfo', 'endCursor');
  }

  @override
  GFindRecordsData_getRecords_pageInfo rebuild(
          void Function(GFindRecordsData_getRecords_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindRecordsData_getRecords_pageInfoBuilder toBuilder() =>
      new GFindRecordsData_getRecords_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindRecordsData_getRecords_pageInfo &&
        G__typename == other.G__typename &&
        hasNextPage == other.hasNextPage &&
        endCursor == other.endCursor;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, G__typename.hashCode), hasNextPage.hashCode),
        endCursor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFindRecordsData_getRecords_pageInfo')
          ..add('G__typename', G__typename)
          ..add('hasNextPage', hasNextPage)
          ..add('endCursor', endCursor))
        .toString();
  }
}

class GFindRecordsData_getRecords_pageInfoBuilder
    implements
        Builder<GFindRecordsData_getRecords_pageInfo,
            GFindRecordsData_getRecords_pageInfoBuilder> {
  _$GFindRecordsData_getRecords_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  String? _endCursor;
  String? get endCursor => _$this._endCursor;
  set endCursor(String? endCursor) => _$this._endCursor = endCursor;

  GFindRecordsData_getRecords_pageInfoBuilder() {
    GFindRecordsData_getRecords_pageInfo._initializeBuilder(this);
  }

  GFindRecordsData_getRecords_pageInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _hasNextPage = $v.hasNextPage;
      _endCursor = $v.endCursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFindRecordsData_getRecords_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindRecordsData_getRecords_pageInfo;
  }

  @override
  void update(
      void Function(GFindRecordsData_getRecords_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindRecordsData_getRecords_pageInfo build() {
    final _$result = _$v ??
        new _$GFindRecordsData_getRecords_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFindRecordsData_getRecords_pageInfo', 'G__typename'),
            hasNextPage: BuiltValueNullFieldError.checkNotNull(hasNextPage,
                'GFindRecordsData_getRecords_pageInfo', 'hasNextPage'),
            endCursor: BuiltValueNullFieldError.checkNotNull(endCursor,
                'GFindRecordsData_getRecords_pageInfo', 'endCursor'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
