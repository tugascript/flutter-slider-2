// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_users.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFindUsersData> _$gFindUsersDataSerializer =
    new _$GFindUsersDataSerializer();
Serializer<GFindUsersData_getUsers> _$gFindUsersDataGetUsersSerializer =
    new _$GFindUsersData_getUsersSerializer();
Serializer<GFindUsersData_getUsers_edges>
    _$gFindUsersDataGetUsersEdgesSerializer =
    new _$GFindUsersData_getUsers_edgesSerializer();
Serializer<GFindUsersData_getUsers_edges_node>
    _$gFindUsersDataGetUsersEdgesNodeSerializer =
    new _$GFindUsersData_getUsers_edges_nodeSerializer();
Serializer<GFindUsersData_getUsers_pageInfo>
    _$gFindUsersDataGetUsersPageInfoSerializer =
    new _$GFindUsersData_getUsers_pageInfoSerializer();

class _$GFindUsersDataSerializer
    implements StructuredSerializer<GFindUsersData> {
  @override
  final Iterable<Type> types = const [GFindUsersData, _$GFindUsersData];
  @override
  final String wireName = 'GFindUsersData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFindUsersData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getUsers',
      serializers.serialize(object.getUsers,
          specifiedType: const FullType(GFindUsersData_getUsers)),
    ];

    return result;
  }

  @override
  GFindUsersData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindUsersDataBuilder();

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
        case 'getUsers':
          result.getUsers.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GFindUsersData_getUsers))!
              as GFindUsersData_getUsers);
          break;
      }
    }

    return result.build();
  }
}

class _$GFindUsersData_getUsersSerializer
    implements StructuredSerializer<GFindUsersData_getUsers> {
  @override
  final Iterable<Type> types = const [
    GFindUsersData_getUsers,
    _$GFindUsersData_getUsers
  ];
  @override
  final String wireName = 'GFindUsersData_getUsers';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFindUsersData_getUsers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'edges',
      serializers.serialize(object.edges,
          specifiedType: const FullType(BuiltList,
              const [const FullType(GFindUsersData_getUsers_edges)])),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType: const FullType(GFindUsersData_getUsers_pageInfo)),
    ];

    return result;
  }

  @override
  GFindUsersData_getUsers deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindUsersData_getUsersBuilder();

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
                const FullType(GFindUsersData_getUsers_edges)
              ]))! as BuiltList<Object?>);
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GFindUsersData_getUsers_pageInfo))!
              as GFindUsersData_getUsers_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GFindUsersData_getUsers_edgesSerializer
    implements StructuredSerializer<GFindUsersData_getUsers_edges> {
  @override
  final Iterable<Type> types = const [
    GFindUsersData_getUsers_edges,
    _$GFindUsersData_getUsers_edges
  ];
  @override
  final String wireName = 'GFindUsersData_getUsers_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFindUsersData_getUsers_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'node',
      serializers.serialize(object.node,
          specifiedType: const FullType(GFindUsersData_getUsers_edges_node)),
    ];

    return result;
  }

  @override
  GFindUsersData_getUsers_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindUsersData_getUsers_edgesBuilder();

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
                      const FullType(GFindUsersData_getUsers_edges_node))!
              as GFindUsersData_getUsers_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GFindUsersData_getUsers_edges_nodeSerializer
    implements StructuredSerializer<GFindUsersData_getUsers_edges_node> {
  @override
  final Iterable<Type> types = const [
    GFindUsersData_getUsers_edges_node,
    _$GFindUsersData_getUsers_edges_node
  ];
  @override
  final String wireName = 'GFindUsersData_getUsers_edges_node';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFindUsersData_getUsers_edges_node object,
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
      'maxLevel',
      serializers.serialize(object.maxLevel,
          specifiedType: const FullType(int)),
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
  GFindUsersData_getUsers_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindUsersData_getUsers_edges_nodeBuilder();

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
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'maxLevel':
          result.maxLevel = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GFindUsersData_getUsers_pageInfoSerializer
    implements StructuredSerializer<GFindUsersData_getUsers_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GFindUsersData_getUsers_pageInfo,
    _$GFindUsersData_getUsers_pageInfo
  ];
  @override
  final String wireName = 'GFindUsersData_getUsers_pageInfo';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GFindUsersData_getUsers_pageInfo object,
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
  GFindUsersData_getUsers_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindUsersData_getUsers_pageInfoBuilder();

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

class _$GFindUsersData extends GFindUsersData {
  @override
  final String G__typename;
  @override
  final GFindUsersData_getUsers getUsers;

  factory _$GFindUsersData([void Function(GFindUsersDataBuilder)? updates]) =>
      (new GFindUsersDataBuilder()..update(updates)).build();

  _$GFindUsersData._({required this.G__typename, required this.getUsers})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindUsersData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getUsers, 'GFindUsersData', 'getUsers');
  }

  @override
  GFindUsersData rebuild(void Function(GFindUsersDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindUsersDataBuilder toBuilder() =>
      new GFindUsersDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindUsersData &&
        G__typename == other.G__typename &&
        getUsers == other.getUsers;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getUsers.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFindUsersData')
          ..add('G__typename', G__typename)
          ..add('getUsers', getUsers))
        .toString();
  }
}

class GFindUsersDataBuilder
    implements Builder<GFindUsersData, GFindUsersDataBuilder> {
  _$GFindUsersData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFindUsersData_getUsersBuilder? _getUsers;
  GFindUsersData_getUsersBuilder get getUsers =>
      _$this._getUsers ??= new GFindUsersData_getUsersBuilder();
  set getUsers(GFindUsersData_getUsersBuilder? getUsers) =>
      _$this._getUsers = getUsers;

  GFindUsersDataBuilder() {
    GFindUsersData._initializeBuilder(this);
  }

  GFindUsersDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getUsers = $v.getUsers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFindUsersData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindUsersData;
  }

  @override
  void update(void Function(GFindUsersDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindUsersData build() {
    _$GFindUsersData _$result;
    try {
      _$result = _$v ??
          new _$GFindUsersData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFindUsersData', 'G__typename'),
              getUsers: getUsers.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getUsers';
        getUsers.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFindUsersData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFindUsersData_getUsers extends GFindUsersData_getUsers {
  @override
  final String G__typename;
  @override
  final BuiltList<GFindUsersData_getUsers_edges> edges;
  @override
  final int totalCount;
  @override
  final GFindUsersData_getUsers_pageInfo pageInfo;

  factory _$GFindUsersData_getUsers(
          [void Function(GFindUsersData_getUsersBuilder)? updates]) =>
      (new GFindUsersData_getUsersBuilder()..update(updates)).build();

  _$GFindUsersData_getUsers._(
      {required this.G__typename,
      required this.edges,
      required this.totalCount,
      required this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindUsersData_getUsers', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        edges, 'GFindUsersData_getUsers', 'edges');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GFindUsersData_getUsers', 'totalCount');
    BuiltValueNullFieldError.checkNotNull(
        pageInfo, 'GFindUsersData_getUsers', 'pageInfo');
  }

  @override
  GFindUsersData_getUsers rebuild(
          void Function(GFindUsersData_getUsersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindUsersData_getUsersBuilder toBuilder() =>
      new GFindUsersData_getUsersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindUsersData_getUsers &&
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
    return (newBuiltValueToStringHelper('GFindUsersData_getUsers')
          ..add('G__typename', G__typename)
          ..add('edges', edges)
          ..add('totalCount', totalCount)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GFindUsersData_getUsersBuilder
    implements
        Builder<GFindUsersData_getUsers, GFindUsersData_getUsersBuilder> {
  _$GFindUsersData_getUsers? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GFindUsersData_getUsers_edges>? _edges;
  ListBuilder<GFindUsersData_getUsers_edges> get edges =>
      _$this._edges ??= new ListBuilder<GFindUsersData_getUsers_edges>();
  set edges(ListBuilder<GFindUsersData_getUsers_edges>? edges) =>
      _$this._edges = edges;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GFindUsersData_getUsers_pageInfoBuilder? _pageInfo;
  GFindUsersData_getUsers_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??= new GFindUsersData_getUsers_pageInfoBuilder();
  set pageInfo(GFindUsersData_getUsers_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  GFindUsersData_getUsersBuilder() {
    GFindUsersData_getUsers._initializeBuilder(this);
  }

  GFindUsersData_getUsersBuilder get _$this {
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
  void replace(GFindUsersData_getUsers other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindUsersData_getUsers;
  }

  @override
  void update(void Function(GFindUsersData_getUsersBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindUsersData_getUsers build() {
    _$GFindUsersData_getUsers _$result;
    try {
      _$result = _$v ??
          new _$GFindUsersData_getUsers._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFindUsersData_getUsers', 'G__typename'),
              edges: edges.build(),
              totalCount: BuiltValueNullFieldError.checkNotNull(
                  totalCount, 'GFindUsersData_getUsers', 'totalCount'),
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
            'GFindUsersData_getUsers', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFindUsersData_getUsers_edges extends GFindUsersData_getUsers_edges {
  @override
  final String G__typename;
  @override
  final GFindUsersData_getUsers_edges_node node;

  factory _$GFindUsersData_getUsers_edges(
          [void Function(GFindUsersData_getUsers_edgesBuilder)? updates]) =>
      (new GFindUsersData_getUsers_edgesBuilder()..update(updates)).build();

  _$GFindUsersData_getUsers_edges._(
      {required this.G__typename, required this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindUsersData_getUsers_edges', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        node, 'GFindUsersData_getUsers_edges', 'node');
  }

  @override
  GFindUsersData_getUsers_edges rebuild(
          void Function(GFindUsersData_getUsers_edgesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindUsersData_getUsers_edgesBuilder toBuilder() =>
      new GFindUsersData_getUsers_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindUsersData_getUsers_edges &&
        G__typename == other.G__typename &&
        node == other.node;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), node.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFindUsersData_getUsers_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GFindUsersData_getUsers_edgesBuilder
    implements
        Builder<GFindUsersData_getUsers_edges,
            GFindUsersData_getUsers_edgesBuilder> {
  _$GFindUsersData_getUsers_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GFindUsersData_getUsers_edges_nodeBuilder? _node;
  GFindUsersData_getUsers_edges_nodeBuilder get node =>
      _$this._node ??= new GFindUsersData_getUsers_edges_nodeBuilder();
  set node(GFindUsersData_getUsers_edges_nodeBuilder? node) =>
      _$this._node = node;

  GFindUsersData_getUsers_edgesBuilder() {
    GFindUsersData_getUsers_edges._initializeBuilder(this);
  }

  GFindUsersData_getUsers_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFindUsersData_getUsers_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindUsersData_getUsers_edges;
  }

  @override
  void update(void Function(GFindUsersData_getUsers_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindUsersData_getUsers_edges build() {
    _$GFindUsersData_getUsers_edges _$result;
    try {
      _$result = _$v ??
          new _$GFindUsersData_getUsers_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GFindUsersData_getUsers_edges', 'G__typename'),
              node: node.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GFindUsersData_getUsers_edges', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GFindUsersData_getUsers_edges_node
    extends GFindUsersData_getUsers_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String username;
  @override
  final String? picture;
  @override
  final int maxLevel;

  factory _$GFindUsersData_getUsers_edges_node(
          [void Function(GFindUsersData_getUsers_edges_nodeBuilder)?
              updates]) =>
      (new GFindUsersData_getUsers_edges_nodeBuilder()..update(updates))
          .build();

  _$GFindUsersData_getUsers_edges_node._(
      {required this.G__typename,
      required this.id,
      required this.username,
      this.picture,
      required this.maxLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindUsersData_getUsers_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GFindUsersData_getUsers_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GFindUsersData_getUsers_edges_node', 'username');
    BuiltValueNullFieldError.checkNotNull(
        maxLevel, 'GFindUsersData_getUsers_edges_node', 'maxLevel');
  }

  @override
  GFindUsersData_getUsers_edges_node rebuild(
          void Function(GFindUsersData_getUsers_edges_nodeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindUsersData_getUsers_edges_nodeBuilder toBuilder() =>
      new GFindUsersData_getUsers_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindUsersData_getUsers_edges_node &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username &&
        picture == other.picture &&
        maxLevel == other.maxLevel;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                username.hashCode),
            picture.hashCode),
        maxLevel.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFindUsersData_getUsers_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username)
          ..add('picture', picture)
          ..add('maxLevel', maxLevel))
        .toString();
  }
}

class GFindUsersData_getUsers_edges_nodeBuilder
    implements
        Builder<GFindUsersData_getUsers_edges_node,
            GFindUsersData_getUsers_edges_nodeBuilder> {
  _$GFindUsersData_getUsers_edges_node? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  int? _maxLevel;
  int? get maxLevel => _$this._maxLevel;
  set maxLevel(int? maxLevel) => _$this._maxLevel = maxLevel;

  GFindUsersData_getUsers_edges_nodeBuilder() {
    GFindUsersData_getUsers_edges_node._initializeBuilder(this);
  }

  GFindUsersData_getUsers_edges_nodeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _picture = $v.picture;
      _maxLevel = $v.maxLevel;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFindUsersData_getUsers_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindUsersData_getUsers_edges_node;
  }

  @override
  void update(
      void Function(GFindUsersData_getUsers_edges_nodeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindUsersData_getUsers_edges_node build() {
    final _$result = _$v ??
        new _$GFindUsersData_getUsers_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GFindUsersData_getUsers_edges_node', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GFindUsersData_getUsers_edges_node', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GFindUsersData_getUsers_edges_node', 'username'),
            picture: picture,
            maxLevel: BuiltValueNullFieldError.checkNotNull(
                maxLevel, 'GFindUsersData_getUsers_edges_node', 'maxLevel'));
    replace(_$result);
    return _$result;
  }
}

class _$GFindUsersData_getUsers_pageInfo
    extends GFindUsersData_getUsers_pageInfo {
  @override
  final String G__typename;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;

  factory _$GFindUsersData_getUsers_pageInfo(
          [void Function(GFindUsersData_getUsers_pageInfoBuilder)? updates]) =>
      (new GFindUsersData_getUsers_pageInfoBuilder()..update(updates)).build();

  _$GFindUsersData_getUsers_pageInfo._(
      {required this.G__typename,
      required this.endCursor,
      required this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GFindUsersData_getUsers_pageInfo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        endCursor, 'GFindUsersData_getUsers_pageInfo', 'endCursor');
    BuiltValueNullFieldError.checkNotNull(
        hasNextPage, 'GFindUsersData_getUsers_pageInfo', 'hasNextPage');
  }

  @override
  GFindUsersData_getUsers_pageInfo rebuild(
          void Function(GFindUsersData_getUsers_pageInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindUsersData_getUsers_pageInfoBuilder toBuilder() =>
      new GFindUsersData_getUsers_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindUsersData_getUsers_pageInfo &&
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
    return (newBuiltValueToStringHelper('GFindUsersData_getUsers_pageInfo')
          ..add('G__typename', G__typename)
          ..add('endCursor', endCursor)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GFindUsersData_getUsers_pageInfoBuilder
    implements
        Builder<GFindUsersData_getUsers_pageInfo,
            GFindUsersData_getUsers_pageInfoBuilder> {
  _$GFindUsersData_getUsers_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _endCursor;
  String? get endCursor => _$this._endCursor;
  set endCursor(String? endCursor) => _$this._endCursor = endCursor;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GFindUsersData_getUsers_pageInfoBuilder() {
    GFindUsersData_getUsers_pageInfo._initializeBuilder(this);
  }

  GFindUsersData_getUsers_pageInfoBuilder get _$this {
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
  void replace(GFindUsersData_getUsers_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindUsersData_getUsers_pageInfo;
  }

  @override
  void update(void Function(GFindUsersData_getUsers_pageInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindUsersData_getUsers_pageInfo build() {
    final _$result = _$v ??
        new _$GFindUsersData_getUsers_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GFindUsersData_getUsers_pageInfo', 'G__typename'),
            endCursor: BuiltValueNullFieldError.checkNotNull(
                endCursor, 'GFindUsersData_getUsers_pageInfo', 'endCursor'),
            hasNextPage: BuiltValueNullFieldError.checkNotNull(hasNextPage,
                'GFindUsersData_getUsers_pageInfo', 'hasNextPage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
