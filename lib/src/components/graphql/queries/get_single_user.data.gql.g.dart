// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetSingleUserData> _$gGetSingleUserDataSerializer =
    new _$GGetSingleUserDataSerializer();
Serializer<GGetSingleUserData_getUser> _$gGetSingleUserDataGetUserSerializer =
    new _$GGetSingleUserData_getUserSerializer();
Serializer<GGetSingleUserData_getUser_records>
    _$gGetSingleUserDataGetUserRecordsSerializer =
    new _$GGetSingleUserData_getUser_recordsSerializer();
Serializer<GGetSingleUserData_getUser_records_edges>
    _$gGetSingleUserDataGetUserRecordsEdgesSerializer =
    new _$GGetSingleUserData_getUser_records_edgesSerializer();
Serializer<GGetSingleUserData_getUser_records_edges_node>
    _$gGetSingleUserDataGetUserRecordsEdgesNodeSerializer =
    new _$GGetSingleUserData_getUser_records_edges_nodeSerializer();
Serializer<GGetSingleUserData_getUser_records_pageInfo>
    _$gGetSingleUserDataGetUserRecordsPageInfoSerializer =
    new _$GGetSingleUserData_getUser_records_pageInfoSerializer();

class _$GGetSingleUserDataSerializer
    implements StructuredSerializer<GGetSingleUserData> {
  @override
  final Iterable<Type> types = const [GGetSingleUserData, _$GGetSingleUserData];
  @override
  final String wireName = 'GGetSingleUserData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetSingleUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'getUser',
      serializers.serialize(object.getUser,
          specifiedType: const FullType(GGetSingleUserData_getUser)),
    ];

    return result;
  }

  @override
  GGetSingleUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSingleUserDataBuilder();

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
        case 'getUser':
          result.getUser.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GGetSingleUserData_getUser))!
              as GGetSingleUserData_getUser);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSingleUserData_getUserSerializer
    implements StructuredSerializer<GGetSingleUserData_getUser> {
  @override
  final Iterable<Type> types = const [
    GGetSingleUserData_getUser,
    _$GGetSingleUserData_getUser
  ];
  @override
  final String wireName = 'GGetSingleUserData_getUser';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetSingleUserData_getUser object,
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
      'records',
      serializers.serialize(object.records,
          specifiedType: const FullType(GGetSingleUserData_getUser_records)),
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
  GGetSingleUserData_getUser deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSingleUserData_getUserBuilder();

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
        case 'records':
          result.records.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(GGetSingleUserData_getUser_records))!
              as GGetSingleUserData_getUser_records);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSingleUserData_getUser_recordsSerializer
    implements StructuredSerializer<GGetSingleUserData_getUser_records> {
  @override
  final Iterable<Type> types = const [
    GGetSingleUserData_getUser_records,
    _$GGetSingleUserData_getUser_records
  ];
  @override
  final String wireName = 'GGetSingleUserData_getUser_records';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetSingleUserData_getUser_records object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'edges',
      serializers.serialize(object.edges,
          specifiedType: const FullType(BuiltList, const [
            const FullType(GGetSingleUserData_getUser_records_edges)
          ])),
      'totalCount',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
      'pageInfo',
      serializers.serialize(object.pageInfo,
          specifiedType:
              const FullType(GGetSingleUserData_getUser_records_pageInfo)),
    ];

    return result;
  }

  @override
  GGetSingleUserData_getUser_records deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSingleUserData_getUser_recordsBuilder();

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
                const FullType(GGetSingleUserData_getUser_records_edges)
              ]))! as BuiltList<Object?>);
          break;
        case 'totalCount':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pageInfo':
          result.pageInfo.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GGetSingleUserData_getUser_records_pageInfo))!
              as GGetSingleUserData_getUser_records_pageInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSingleUserData_getUser_records_edgesSerializer
    implements StructuredSerializer<GGetSingleUserData_getUser_records_edges> {
  @override
  final Iterable<Type> types = const [
    GGetSingleUserData_getUser_records_edges,
    _$GGetSingleUserData_getUser_records_edges
  ];
  @override
  final String wireName = 'GGetSingleUserData_getUser_records_edges';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetSingleUserData_getUser_records_edges object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'node',
      serializers.serialize(object.node,
          specifiedType:
              const FullType(GGetSingleUserData_getUser_records_edges_node)),
    ];

    return result;
  }

  @override
  GGetSingleUserData_getUser_records_edges deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSingleUserData_getUser_records_edgesBuilder();

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
                      GGetSingleUserData_getUser_records_edges_node))!
              as GGetSingleUserData_getUser_records_edges_node);
          break;
      }
    }

    return result.build();
  }
}

class _$GGetSingleUserData_getUser_records_edges_nodeSerializer
    implements
        StructuredSerializer<GGetSingleUserData_getUser_records_edges_node> {
  @override
  final Iterable<Type> types = const [
    GGetSingleUserData_getUser_records_edges_node,
    _$GGetSingleUserData_getUser_records_edges_node
  ];
  @override
  final String wireName = 'GGetSingleUserData_getUser_records_edges_node';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetSingleUserData_getUser_records_edges_node object,
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
  GGetSingleUserData_getUser_records_edges_node deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSingleUserData_getUser_records_edges_nodeBuilder();

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

class _$GGetSingleUserData_getUser_records_pageInfoSerializer
    implements
        StructuredSerializer<GGetSingleUserData_getUser_records_pageInfo> {
  @override
  final Iterable<Type> types = const [
    GGetSingleUserData_getUser_records_pageInfo,
    _$GGetSingleUserData_getUser_records_pageInfo
  ];
  @override
  final String wireName = 'GGetSingleUserData_getUser_records_pageInfo';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GGetSingleUserData_getUser_records_pageInfo object,
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
  GGetSingleUserData_getUser_records_pageInfo deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSingleUserData_getUser_records_pageInfoBuilder();

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

class _$GGetSingleUserData extends GGetSingleUserData {
  @override
  final String G__typename;
  @override
  final GGetSingleUserData_getUser getUser;

  factory _$GGetSingleUserData(
          [void Function(GGetSingleUserDataBuilder)? updates]) =>
      (new GGetSingleUserDataBuilder()..update(updates)).build();

  _$GGetSingleUserData._({required this.G__typename, required this.getUser})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetSingleUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        getUser, 'GGetSingleUserData', 'getUser');
  }

  @override
  GGetSingleUserData rebuild(
          void Function(GGetSingleUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSingleUserDataBuilder toBuilder() =>
      new GGetSingleUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSingleUserData &&
        G__typename == other.G__typename &&
        getUser == other.getUser;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), getUser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSingleUserData')
          ..add('G__typename', G__typename)
          ..add('getUser', getUser))
        .toString();
  }
}

class GGetSingleUserDataBuilder
    implements Builder<GGetSingleUserData, GGetSingleUserDataBuilder> {
  _$GGetSingleUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetSingleUserData_getUserBuilder? _getUser;
  GGetSingleUserData_getUserBuilder get getUser =>
      _$this._getUser ??= new GGetSingleUserData_getUserBuilder();
  set getUser(GGetSingleUserData_getUserBuilder? getUser) =>
      _$this._getUser = getUser;

  GGetSingleUserDataBuilder() {
    GGetSingleUserData._initializeBuilder(this);
  }

  GGetSingleUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _getUser = $v.getUser.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSingleUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSingleUserData;
  }

  @override
  void update(void Function(GGetSingleUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSingleUserData build() {
    _$GGetSingleUserData _$result;
    try {
      _$result = _$v ??
          new _$GGetSingleUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetSingleUserData', 'G__typename'),
              getUser: getUser.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'getUser';
        getUser.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetSingleUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetSingleUserData_getUser extends GGetSingleUserData_getUser {
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
  @override
  final GGetSingleUserData_getUser_records records;

  factory _$GGetSingleUserData_getUser(
          [void Function(GGetSingleUserData_getUserBuilder)? updates]) =>
      (new GGetSingleUserData_getUserBuilder()..update(updates)).build();

  _$GGetSingleUserData_getUser._(
      {required this.G__typename,
      required this.id,
      required this.username,
      this.picture,
      required this.maxLevel,
      required this.records})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetSingleUserData_getUser', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetSingleUserData_getUser', 'id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetSingleUserData_getUser', 'username');
    BuiltValueNullFieldError.checkNotNull(
        maxLevel, 'GGetSingleUserData_getUser', 'maxLevel');
    BuiltValueNullFieldError.checkNotNull(
        records, 'GGetSingleUserData_getUser', 'records');
  }

  @override
  GGetSingleUserData_getUser rebuild(
          void Function(GGetSingleUserData_getUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSingleUserData_getUserBuilder toBuilder() =>
      new GGetSingleUserData_getUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSingleUserData_getUser &&
        G__typename == other.G__typename &&
        id == other.id &&
        username == other.username &&
        picture == other.picture &&
        maxLevel == other.maxLevel &&
        records == other.records;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, G__typename.hashCode), id.hashCode),
                    username.hashCode),
                picture.hashCode),
            maxLevel.hashCode),
        records.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSingleUserData_getUser')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username)
          ..add('picture', picture)
          ..add('maxLevel', maxLevel)
          ..add('records', records))
        .toString();
  }
}

class GGetSingleUserData_getUserBuilder
    implements
        Builder<GGetSingleUserData_getUser, GGetSingleUserData_getUserBuilder> {
  _$GGetSingleUserData_getUser? _$v;

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

  GGetSingleUserData_getUser_recordsBuilder? _records;
  GGetSingleUserData_getUser_recordsBuilder get records =>
      _$this._records ??= new GGetSingleUserData_getUser_recordsBuilder();
  set records(GGetSingleUserData_getUser_recordsBuilder? records) =>
      _$this._records = records;

  GGetSingleUserData_getUserBuilder() {
    GGetSingleUserData_getUser._initializeBuilder(this);
  }

  GGetSingleUserData_getUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _username = $v.username;
      _picture = $v.picture;
      _maxLevel = $v.maxLevel;
      _records = $v.records.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSingleUserData_getUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSingleUserData_getUser;
  }

  @override
  void update(void Function(GGetSingleUserData_getUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSingleUserData_getUser build() {
    _$GGetSingleUserData_getUser _$result;
    try {
      _$result = _$v ??
          new _$GGetSingleUserData_getUser._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GGetSingleUserData_getUser', 'G__typename'),
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'GGetSingleUserData_getUser', 'id'),
              username: BuiltValueNullFieldError.checkNotNull(
                  username, 'GGetSingleUserData_getUser', 'username'),
              picture: picture,
              maxLevel: BuiltValueNullFieldError.checkNotNull(
                  maxLevel, 'GGetSingleUserData_getUser', 'maxLevel'),
              records: records.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'records';
        records.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetSingleUserData_getUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetSingleUserData_getUser_records
    extends GGetSingleUserData_getUser_records {
  @override
  final String G__typename;
  @override
  final BuiltList<GGetSingleUserData_getUser_records_edges> edges;
  @override
  final int totalCount;
  @override
  final GGetSingleUserData_getUser_records_pageInfo pageInfo;

  factory _$GGetSingleUserData_getUser_records(
          [void Function(GGetSingleUserData_getUser_recordsBuilder)?
              updates]) =>
      (new GGetSingleUserData_getUser_recordsBuilder()..update(updates))
          .build();

  _$GGetSingleUserData_getUser_records._(
      {required this.G__typename,
      required this.edges,
      required this.totalCount,
      required this.pageInfo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetSingleUserData_getUser_records', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        edges, 'GGetSingleUserData_getUser_records', 'edges');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'GGetSingleUserData_getUser_records', 'totalCount');
    BuiltValueNullFieldError.checkNotNull(
        pageInfo, 'GGetSingleUserData_getUser_records', 'pageInfo');
  }

  @override
  GGetSingleUserData_getUser_records rebuild(
          void Function(GGetSingleUserData_getUser_recordsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSingleUserData_getUser_recordsBuilder toBuilder() =>
      new GGetSingleUserData_getUser_recordsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSingleUserData_getUser_records &&
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
    return (newBuiltValueToStringHelper('GGetSingleUserData_getUser_records')
          ..add('G__typename', G__typename)
          ..add('edges', edges)
          ..add('totalCount', totalCount)
          ..add('pageInfo', pageInfo))
        .toString();
  }
}

class GGetSingleUserData_getUser_recordsBuilder
    implements
        Builder<GGetSingleUserData_getUser_records,
            GGetSingleUserData_getUser_recordsBuilder> {
  _$GGetSingleUserData_getUser_records? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  ListBuilder<GGetSingleUserData_getUser_records_edges>? _edges;
  ListBuilder<GGetSingleUserData_getUser_records_edges> get edges =>
      _$this._edges ??=
          new ListBuilder<GGetSingleUserData_getUser_records_edges>();
  set edges(ListBuilder<GGetSingleUserData_getUser_records_edges>? edges) =>
      _$this._edges = edges;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  GGetSingleUserData_getUser_records_pageInfoBuilder? _pageInfo;
  GGetSingleUserData_getUser_records_pageInfoBuilder get pageInfo =>
      _$this._pageInfo ??=
          new GGetSingleUserData_getUser_records_pageInfoBuilder();
  set pageInfo(GGetSingleUserData_getUser_records_pageInfoBuilder? pageInfo) =>
      _$this._pageInfo = pageInfo;

  GGetSingleUserData_getUser_recordsBuilder() {
    GGetSingleUserData_getUser_records._initializeBuilder(this);
  }

  GGetSingleUserData_getUser_recordsBuilder get _$this {
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
  void replace(GGetSingleUserData_getUser_records other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSingleUserData_getUser_records;
  }

  @override
  void update(
      void Function(GGetSingleUserData_getUser_recordsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSingleUserData_getUser_records build() {
    _$GGetSingleUserData_getUser_records _$result;
    try {
      _$result = _$v ??
          new _$GGetSingleUserData_getUser_records._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetSingleUserData_getUser_records', 'G__typename'),
              edges: edges.build(),
              totalCount: BuiltValueNullFieldError.checkNotNull(totalCount,
                  'GGetSingleUserData_getUser_records', 'totalCount'),
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
            'GGetSingleUserData_getUser_records', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetSingleUserData_getUser_records_edges
    extends GGetSingleUserData_getUser_records_edges {
  @override
  final String G__typename;
  @override
  final GGetSingleUserData_getUser_records_edges_node node;

  factory _$GGetSingleUserData_getUser_records_edges(
          [void Function(GGetSingleUserData_getUser_records_edgesBuilder)?
              updates]) =>
      (new GGetSingleUserData_getUser_records_edgesBuilder()..update(updates))
          .build();

  _$GGetSingleUserData_getUser_records_edges._(
      {required this.G__typename, required this.node})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GGetSingleUserData_getUser_records_edges', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        node, 'GGetSingleUserData_getUser_records_edges', 'node');
  }

  @override
  GGetSingleUserData_getUser_records_edges rebuild(
          void Function(GGetSingleUserData_getUser_records_edgesBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSingleUserData_getUser_records_edgesBuilder toBuilder() =>
      new GGetSingleUserData_getUser_records_edgesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSingleUserData_getUser_records_edges &&
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
            'GGetSingleUserData_getUser_records_edges')
          ..add('G__typename', G__typename)
          ..add('node', node))
        .toString();
  }
}

class GGetSingleUserData_getUser_records_edgesBuilder
    implements
        Builder<GGetSingleUserData_getUser_records_edges,
            GGetSingleUserData_getUser_records_edgesBuilder> {
  _$GGetSingleUserData_getUser_records_edges? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GGetSingleUserData_getUser_records_edges_nodeBuilder? _node;
  GGetSingleUserData_getUser_records_edges_nodeBuilder get node =>
      _$this._node ??=
          new GGetSingleUserData_getUser_records_edges_nodeBuilder();
  set node(GGetSingleUserData_getUser_records_edges_nodeBuilder? node) =>
      _$this._node = node;

  GGetSingleUserData_getUser_records_edgesBuilder() {
    GGetSingleUserData_getUser_records_edges._initializeBuilder(this);
  }

  GGetSingleUserData_getUser_records_edgesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _node = $v.node.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSingleUserData_getUser_records_edges other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSingleUserData_getUser_records_edges;
  }

  @override
  void update(
      void Function(GGetSingleUserData_getUser_records_edgesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSingleUserData_getUser_records_edges build() {
    _$GGetSingleUserData_getUser_records_edges _$result;
    try {
      _$result = _$v ??
          new _$GGetSingleUserData_getUser_records_edges._(
              G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                  'GGetSingleUserData_getUser_records_edges', 'G__typename'),
              node: node.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'node';
        node.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GGetSingleUserData_getUser_records_edges',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GGetSingleUserData_getUser_records_edges_node
    extends GGetSingleUserData_getUser_records_edges_node {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final int time;
  @override
  final int moves;

  factory _$GGetSingleUserData_getUser_records_edges_node(
          [void Function(GGetSingleUserData_getUser_records_edges_nodeBuilder)?
              updates]) =>
      (new GGetSingleUserData_getUser_records_edges_nodeBuilder()
            ..update(updates))
          .build();

  _$GGetSingleUserData_getUser_records_edges_node._(
      {required this.G__typename,
      required this.id,
      required this.time,
      required this.moves})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetSingleUserData_getUser_records_edges_node', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GGetSingleUserData_getUser_records_edges_node', 'id');
    BuiltValueNullFieldError.checkNotNull(
        time, 'GGetSingleUserData_getUser_records_edges_node', 'time');
    BuiltValueNullFieldError.checkNotNull(
        moves, 'GGetSingleUserData_getUser_records_edges_node', 'moves');
  }

  @override
  GGetSingleUserData_getUser_records_edges_node rebuild(
          void Function(GGetSingleUserData_getUser_records_edges_nodeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSingleUserData_getUser_records_edges_nodeBuilder toBuilder() =>
      new GGetSingleUserData_getUser_records_edges_nodeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSingleUserData_getUser_records_edges_node &&
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
            'GGetSingleUserData_getUser_records_edges_node')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('time', time)
          ..add('moves', moves))
        .toString();
  }
}

class GGetSingleUserData_getUser_records_edges_nodeBuilder
    implements
        Builder<GGetSingleUserData_getUser_records_edges_node,
            GGetSingleUserData_getUser_records_edges_nodeBuilder> {
  _$GGetSingleUserData_getUser_records_edges_node? _$v;

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

  GGetSingleUserData_getUser_records_edges_nodeBuilder() {
    GGetSingleUserData_getUser_records_edges_node._initializeBuilder(this);
  }

  GGetSingleUserData_getUser_records_edges_nodeBuilder get _$this {
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
  void replace(GGetSingleUserData_getUser_records_edges_node other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSingleUserData_getUser_records_edges_node;
  }

  @override
  void update(
      void Function(GGetSingleUserData_getUser_records_edges_nodeBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSingleUserData_getUser_records_edges_node build() {
    final _$result = _$v ??
        new _$GGetSingleUserData_getUser_records_edges_node._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetSingleUserData_getUser_records_edges_node', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GGetSingleUserData_getUser_records_edges_node', 'id'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, 'GGetSingleUserData_getUser_records_edges_node', 'time'),
            moves: BuiltValueNullFieldError.checkNotNull(moves,
                'GGetSingleUserData_getUser_records_edges_node', 'moves'));
    replace(_$result);
    return _$result;
  }
}

class _$GGetSingleUserData_getUser_records_pageInfo
    extends GGetSingleUserData_getUser_records_pageInfo {
  @override
  final String G__typename;
  @override
  final String endCursor;
  @override
  final bool hasNextPage;

  factory _$GGetSingleUserData_getUser_records_pageInfo(
          [void Function(GGetSingleUserData_getUser_records_pageInfoBuilder)?
              updates]) =>
      (new GGetSingleUserData_getUser_records_pageInfoBuilder()
            ..update(updates))
          .build();

  _$GGetSingleUserData_getUser_records_pageInfo._(
      {required this.G__typename,
      required this.endCursor,
      required this.hasNextPage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GGetSingleUserData_getUser_records_pageInfo', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        endCursor, 'GGetSingleUserData_getUser_records_pageInfo', 'endCursor');
    BuiltValueNullFieldError.checkNotNull(hasNextPage,
        'GGetSingleUserData_getUser_records_pageInfo', 'hasNextPage');
  }

  @override
  GGetSingleUserData_getUser_records_pageInfo rebuild(
          void Function(GGetSingleUserData_getUser_records_pageInfoBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSingleUserData_getUser_records_pageInfoBuilder toBuilder() =>
      new GGetSingleUserData_getUser_records_pageInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSingleUserData_getUser_records_pageInfo &&
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
            'GGetSingleUserData_getUser_records_pageInfo')
          ..add('G__typename', G__typename)
          ..add('endCursor', endCursor)
          ..add('hasNextPage', hasNextPage))
        .toString();
  }
}

class GGetSingleUserData_getUser_records_pageInfoBuilder
    implements
        Builder<GGetSingleUserData_getUser_records_pageInfo,
            GGetSingleUserData_getUser_records_pageInfoBuilder> {
  _$GGetSingleUserData_getUser_records_pageInfo? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _endCursor;
  String? get endCursor => _$this._endCursor;
  set endCursor(String? endCursor) => _$this._endCursor = endCursor;

  bool? _hasNextPage;
  bool? get hasNextPage => _$this._hasNextPage;
  set hasNextPage(bool? hasNextPage) => _$this._hasNextPage = hasNextPage;

  GGetSingleUserData_getUser_records_pageInfoBuilder() {
    GGetSingleUserData_getUser_records_pageInfo._initializeBuilder(this);
  }

  GGetSingleUserData_getUser_records_pageInfoBuilder get _$this {
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
  void replace(GGetSingleUserData_getUser_records_pageInfo other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSingleUserData_getUser_records_pageInfo;
  }

  @override
  void update(
      void Function(GGetSingleUserData_getUser_records_pageInfoBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSingleUserData_getUser_records_pageInfo build() {
    final _$result = _$v ??
        new _$GGetSingleUserData_getUser_records_pageInfo._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GGetSingleUserData_getUser_records_pageInfo', 'G__typename'),
            endCursor: BuiltValueNullFieldError.checkNotNull(endCursor,
                'GGetSingleUserData_getUser_records_pageInfo', 'endCursor'),
            hasNextPage: BuiltValueNullFieldError.checkNotNull(hasNextPage,
                'GGetSingleUserData_getUser_records_pageInfo', 'hasNextPage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
