// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_images.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetImagesData> _$gGetImagesDataSerializer =
    new _$GGetImagesDataSerializer();
Serializer<GGetImagesData_getImages> _$gGetImagesDataGetImagesSerializer =
    new _$GGetImagesData_getImagesSerializer();
Serializer<GGetImagesData_getImages_edges>
    _$gGetImagesDataGetImagesEdgesSerializer =
    new _$GGetImagesData_getImages_edgesSerializer();
Serializer<GGetImagesData_getImages_edges_node>
    _$gGetImagesDataGetImagesEdgesNodeSerializer =
    new _$GGetImagesData_getImages_edges_nodeSerializer();
Serializer<GGetImagesData_getImages_pageInfo>
    _$gGetImagesDataGetImagesPageInfoSerializer =
    new _$GGetImagesData_getImages_pageInfoSerializer();

class _$GGetImagesDataSerializer
    implements StructuredSerializer<GGetImagesData> {
  @override
  final Iterable<Type> types = const [GGetImagesData, _$GGetImagesData];
  @override
  final String wireName = 'GGetImagesData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetImagesData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getImages',
      serializers.serialize(object.getImages,
          specifiedType: const FullType(GGetImagesData_getImages)),
    ];

    return result;
  }

  @override
  GGetImagesData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetImagesDataBuilder();

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
        case 'getImages':
          result.getImages.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetImagesData_getImages))!
              as GGetImagesData_getImages);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetImagesData_getImagesSerializer
    implements StructuredSerializer<GGetImagesData_getImages> {
  @override
  final Iterable<Type> types = const [
    GGetImagesData_getImages,
    _$GGetImagesData_getImages
  ];
  @override
  final String wireName = 'GGetImagesData_getImages';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetImagesData_getImages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'edges',
      serializers.serialize(object.edges,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GGetImagesData_getImages_edges)])),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType: const FullType(GGetImagesData_getImages_pageInfo)),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetImagesData_getImages deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetImagesData_getImagesBuilder();

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
                const FullType(GGetImagesData_getImages_edges)
              ]))! as BuiltList<Object?>);
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetImagesData_getImages_pageInfo))!
              as GGetImagesData_getImages_pageInfo);
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetImagesData_getImages_edgesSerializer
    implements StructuredSerializer<GGetImagesData_getImages_edges> {
  @override
  final Iterable<Type> types = const [
    GGetImagesData_getImages_edges,
    _$GGetImagesData_getImages_edges
  ];
  @override
  final String wireName = 'GGetImagesData_getImages_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetImagesData_getImages_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'node',
      serializers.serialize(object.node,
          specifiedType: const FullType(GGetImagesData_getImages_edges_node)),
    ];

    return result;
  }

  @override
  GGetImagesData_getImages_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetImagesData_getImages_edgesBuilder();

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
                      const FullType(GGetImagesData_getImages_edges_node))!
              as GGetImagesData_getImages_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetImagesData_getImages_edges_nodeSerializer
    implements StructuredSerializer<GGetImagesData_getImages_edges_node> {
  @override
  final Iterable<Type> types = const [
    GGetImagesData_getImages_edges_node,
    _$GGetImagesData_getImages_edges_node
  ];
  @override
  final String wireName = 'GGetImagesData_getImages_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetImagesData_getImages_edges_node object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GGetImagesData_getImages_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetImagesData_getImages_edges_nodeBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GGetImagesData_getImages_pageInfoSerializer
    implements StructuredSerializer<GGetImagesData_getImages_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GGetImagesData_getImages_pageInfo,
    _$GGetImagesData_getImages_pageInfo
  ];
  @override
  final String wireName = 'GGetImagesData_getImages_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetImagesData_getImages_pageInfo object,
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
  GGetImagesData_getImages_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetImagesData_getImages_pageInfoBuilder();

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

class _$GGetImagesData extends GGetImagesData {
  @override
  final String G__typename;
  @override
  final GGetImagesData_getImages getImages;

  factory _$GGetImagesData([void Function(GGetImagesDataBuilder)? updates]) =>
      (new GGetImagesDataBuilder()..update(updates)).build();

  _$GGetImagesData._({required this.G__typename, required this.getImages})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetImagesData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getImages, 'GGetImagesData', 'getImages');
  }

  @override
  GGetImagesData rebuild(void Function(GGetImagesDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetImagesDataBuilder toBuilder() =>
      new GGetImagesDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetImagesData &&
        G__typename == other.G__typename &&
        getImages == other.getImages;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getImages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetImagesData')
          ..add('G__typename', G__typename)
          ..add('getImages', getImages))
        .toString();
  }
}

class GGetImagesDataBuilder
    implements Builder<GGetImagesData, GGetImagesDataBuilder> {
  _$GGetImagesData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetImagesData_getImagesBuilder? _getImages;
  GGetImagesData_getImagesBuilder get getImages =>
      _$this._getImages ??= new GGetImagesData_getImagesBuilder();
  set getImages(GGetImagesData_getImagesBuilder? getImages) =>
      _$this._getImages = getImages;

  GGetImagesDataBuilder() {
    GGetImagesData._initializeBuilder(this);
  }

  GGetImagesDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getImages = $v.getImages.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetImagesData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetImagesData;
  }

  @override
  void update(void Function(GGetImagesDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetImagesData build() {
    _$GGetImagesData _$result;
    try {
      _$result = _$v ??
          new _$GGetImagesData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetImagesData', 'G__typename'),
              getImages: getImages.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getImages';
        getImages.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetImagesData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetImagesData_getImages extends GGetImagesData_getImages {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetImagesData_getImages_edges> edges;
  @override
  final GGetImagesData_getImages_pageInfo pageInfo;
  @override
  final int totalCount;

  factory _$GGetImagesData_getImages(
          [void Function(GGetImagesData_getImagesBuilder)? updates]) =>
      (new GGetImagesData_getImagesBuilder()..update(updates)).build();

  _$GGetImagesData_getImages._(
      {required this.G__typename,
      required this.edges,
      required this.pageInfo,
      required this.totalCount})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetImagesData_getImages', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        edges, 'GGetImagesData_getImages', 'edges');
    BuiltValueNullFieldError.checkNotNull(
        pageInfo, 'GGetImagesData_getImages', 'pageInfo');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GGetImagesData_getImages', 'totalCount');
  }

  @override
  GGetImagesData_getImages rebuild(
          void Function(GGetImagesData_getImagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetImagesData_getImagesBuilder toBuilder() =>
      new GGetImagesData_getImagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetImagesData_getImages &&
        G__typename == other.G__typename &&
        edges == other.edges &&
        pageInfo == other.pageInfo &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, G__typename.hashCode), edges.hashCode),
            pageInfo.hashCode),
        totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetImagesData_getImages')
          ..add('G__typename', G__typename)
          ..add('edges', edges)
          ..add('pageInfo', pageInfo)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class GGetImagesData_getImagesBuilder
    implements
        Builder<GGetImagesData_getImages, GGetImagesData_getImagesBuilder> {
  _$GGetImagesData_getImages? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetImagesData_getImages_edges>? _edges;
  ListBuilder<GGetImagesData_getImages_edges> get edges =>
      _$this._edges ??= new ListBuilder<GGetImagesData_getImages_edges>();
  set edges(ListBuilder<GGetImagesData_getImages_edges>? edges) =>
      _$this._edges = edges;

  GGetImagesData_getImages_pageInfoBuilder? _pageInfo;
  GGetImagesData_getImages_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GGetImagesData_getImages_pageInfoBuilder();
  set pageInfo(GGetImagesData_getImages_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GGetImagesData_getImagesBuilder() {
    GGetImagesData_getImages._initializeBuilder(this);
  }

  GGetImagesData_getImagesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _edges = $v.edges.toBuilder();
      _pageInfo = $v.pageInfo.toBuilder();
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetImagesData_getImages other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetImagesData_getImages;
  }

  @override
  void update(void Function(GGetImagesData_getImagesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetImagesData_getImages build() {
    _$GGetImagesData_getImages _$result;
    try {
      _$result = _$v ??
          new _$GGetImagesData_getImages._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetImagesData_getImages', 'G__typename'),
              edges: edges.build(),
              pageInfo: pageInfo.build(),
              totalCount: BuiltValueNullFieldError.checkNotNull(
                  totalCount, 'GGetImagesData_getImages', 'totalCount'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'edges';
        edges.build();
        _$failedField = 'pageInfo';
        pageInfo.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetImagesData_getImages', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetImagesData_getImages_edges extends GGetImagesData_getImages_edges {
  @override
  final String G__typename;
  @override
  final GGetImagesData_getImages_edges_node node;

  factory _$GGetImagesData_getImages_edges(
          [void Function(GGetImagesData_getImages_edgesBuilder)? updates]) =>
      (new GGetImagesData_getImages_edgesBuilder()..update(updates)).build();

  _$GGetImagesData_getImages_edges._(
      {required this.G__typename, required this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetImagesData_getImages_edges', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        node, 'GGetImagesData_getImages_edges', 'node');
  }

  @override
  GGetImagesData_getImages_edges rebuild(
          void Function(GGetImagesData_getImages_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetImagesData_getImages_edgesBuilder toBuilder() =>
      new GGetImagesData_getImages_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetImagesData_getImages_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetImagesData_getImages_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GGetImagesData_getImages_edgesBuilder
    implements
        Builder<GGetImagesData_getImages_edges,
            GGetImagesData_getImages_edgesBuilder> {
  _$GGetImagesData_getImages_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetImagesData_getImages_edges_nodeBuilder? _node;
  GGetImagesData_getImages_edges_nodeBuilder get node =>
      _$this._node ??= new GGetImagesData_getImages_edges_nodeBuilder();
  set node(GGetImagesData_getImages_edges_nodeBuilder? node) =>
      _$this._node = node;

  GGetImagesData_getImages_edgesBuilder() {
    GGetImagesData_getImages_edges._initializeBuilder(this);
  }

  GGetImagesData_getImages_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetImagesData_getImages_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetImagesData_getImages_edges;
  }

  @override
  void update(void Function(GGetImagesData_getImages_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetImagesData_getImages_edges build() {
    _$GGetImagesData_getImages_edges _$result;
    try {
      _$result = _$v ??
          new _$GGetImagesData_getImages_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetImagesData_getImages_edges', 'G__typename'),
              node: node.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetImagesData_getImages_edges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetImagesData_getImages_edges_node
    extends GGetImagesData_getImages_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String url;

  factory _$GGetImagesData_getImages_edges_node(
          [void Function(GGetImagesData_getImages_edges_nodeBuilder)?
              updates]) =>
      (new GGetImagesData_getImages_edges_nodeBuilder()..update(updates))
          .build();

  _$GGetImagesData_getImages_edges_node._(
      {required this.G__typename, required this.id, required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetImagesData_getImages_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetImagesData_getImages_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GGetImagesData_getImages_edges_node', 'url');
  }

  @override
  GGetImagesData_getImages_edges_node rebuild(
          void Function(GGetImagesData_getImages_edges_nodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetImagesData_getImages_edges_nodeBuilder toBuilder() =>
      new GGetImagesData_getImages_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetImagesData_getImages_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetImagesData_getImages_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class GGetImagesData_getImages_edges_nodeBuilder
    implements
        Builder<GGetImagesData_getImages_edges_node,
            GGetImagesData_getImages_edges_nodeBuilder> {
  _$GGetImagesData_getImages_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GGetImagesData_getImages_edges_nodeBuilder() {
    GGetImagesData_getImages_edges_node._initializeBuilder(this);
  }

  GGetImagesData_getImages_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetImagesData_getImages_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetImagesData_getImages_edges_node;
  }

  @override
  void update(
      void Function(GGetImagesData_getImages_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetImagesData_getImages_edges_node build() {
    final _$result = _$v ??
        new _$GGetImagesData_getImages_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetImagesData_getImages_edges_node', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetImagesData_getImages_edges_node', 'id'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GGetImagesData_getImages_edges_node', 'url'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetImagesData_getImages_pageInfo
    extends GGetImagesData_getImages_pageInfo {
  @override
  final String G__typename;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;

  factory _$GGetImagesData_getImages_pageInfo(
          [void Function(GGetImagesData_getImages_pageInfoBuilder)? updates]) =>
      (new GGetImagesData_getImages_pageInfoBuilder()..update(updates)).build();

  _$GGetImagesData_getImages_pageInfo._(
      {required this.G__typename,
      required this.endCursor,
      required this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetImagesData_getImages_pageInfo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        endCursor, 'GGetImagesData_getImages_pageInfo', 'endCursor');
    BuiltValueNullFieldError.checkNotNull(
        hasNextPage, 'GGetImagesData_getImages_pageInfo', 'hasNextPage');
  }

  @override
  GGetImagesData_getImages_pageInfo rebuild(
          void Function(GGetImagesData_getImages_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetImagesData_getImages_pageInfoBuilder toBuilder() =>
      new GGetImagesData_getImages_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetImagesData_getImages_pageInfo &&
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
    return (newBuiltValueToStringHelper('GGetImagesData_getImages_pageInfo')
          ..add('G__typename', G__typename)
          ..add('endCursor', endCursor)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GGetImagesData_getImages_pageInfoBuilder
    implements
        Builder<GGetImagesData_getImages_pageInfo,
            GGetImagesData_getImages_pageInfoBuilder> {
  _$GGetImagesData_getImages_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _endCursor;
  String? get endCursor => _$this._endCursor;
  set endCursor(String? endCursor) => _$this._endCursor = endCursor;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GGetImagesData_getImages_pageInfoBuilder() {
    GGetImagesData_getImages_pageInfo._initializeBuilder(this);
  }

  GGetImagesData_getImages_pageInfoBuilder get _$this {
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
  void replace(GGetImagesData_getImages_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetImagesData_getImages_pageInfo;
  }

  @override
  void update(
      void Function(GGetImagesData_getImages_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetImagesData_getImages_pageInfo build() {
    final _$result = _$v ??
        new _$GGetImagesData_getImages_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetImagesData_getImages_pageInfo', 'G__typename'),
            endCursor: BuiltValueNullFieldError.checkNotNull(
                endCursor, 'GGetImagesData_getImages_pageInfo', 'endCursor'),
            hasNextPage: BuiltValueNullFieldError.checkNotNull(hasNextPage,
                'GGetImagesData_getImages_pageInfo', 'hasNextPage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
