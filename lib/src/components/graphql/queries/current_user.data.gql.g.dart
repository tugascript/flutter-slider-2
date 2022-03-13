// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_user.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GCurrentUserData> _$gCurrentUserDataSerializer =
    new _$GCurrentUserDataSerializer();
Serializer<GCurrentUserData_me> _$gCurrentUserDataMeSerializer =
    new _$GCurrentUserData_meSerializer();

class _$GCurrentUserDataSerializer
    implements StructuredSerializer<GCurrentUserData> {
  @override
  final Iterable<Type> types = const [GCurrentUserData, _$GCurrentUserData];
  @override
  final String wireName = 'GCurrentUserData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GCurrentUserData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'me',
      serializers.serialize(object.me,
          specifiedType: const FullType(GCurrentUserData_me)),
    ];

    return result;
  }

  @override
  GCurrentUserData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCurrentUserDataBuilder();

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
        case 'me':
          result.me.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GCurrentUserData_me))!
              as GCurrentUserData_me);
          break;
      }
    }

    return result.build();
  }
}

class _$GCurrentUserData_meSerializer
    implements StructuredSerializer<GCurrentUserData_me> {
  @override
  final Iterable<Type> types = const [
    GCurrentUserData_me,
    _$GCurrentUserData_me
  ];
  @override
  final String wireName = 'GCurrentUserData_me';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GCurrentUserData_me object,
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
  GCurrentUserData_me deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GCurrentUserData_meBuilder();

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

class _$GCurrentUserData extends GCurrentUserData {
  @override
  final String G__typename;
  @override
  final GCurrentUserData_me me;

  factory _$GCurrentUserData(
          [void Function(GCurrentUserDataBuilder)? updates]) =>
      (new GCurrentUserDataBuilder()..update(updates)).build();

  _$GCurrentUserData._({required this.G__typename, required this.me})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCurrentUserData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(me, 'GCurrentUserData', 'me');
  }

  @override
  GCurrentUserData rebuild(void Function(GCurrentUserDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCurrentUserDataBuilder toBuilder() =>
      new GCurrentUserDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCurrentUserData &&
        G__typename == other.G__typename &&
        me == other.me;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), me.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GCurrentUserData')
          ..add('G__typename', G__typename)
          ..add('me', me))
        .toString();
  }
}

class GCurrentUserDataBuilder
    implements Builder<GCurrentUserData, GCurrentUserDataBuilder> {
  _$GCurrentUserData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GCurrentUserData_meBuilder? _me;
  GCurrentUserData_meBuilder get me =>
      _$this._me ??= new GCurrentUserData_meBuilder();
  set me(GCurrentUserData_meBuilder? me) => _$this._me = me;

  GCurrentUserDataBuilder() {
    GCurrentUserData._initializeBuilder(this);
  }

  GCurrentUserDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _me = $v.me.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GCurrentUserData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCurrentUserData;
  }

  @override
  void update(void Function(GCurrentUserDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCurrentUserData build() {
    _$GCurrentUserData _$result;
    try {
      _$result = _$v ??
          new _$GCurrentUserData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GCurrentUserData', 'G__typename'),
              me: me.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'me';
        me.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GCurrentUserData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GCurrentUserData_me extends GCurrentUserData_me {
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

  factory _$GCurrentUserData_me(
          [void Function(GCurrentUserData_meBuilder)? updates]) =>
      (new GCurrentUserData_meBuilder()..update(updates)).build();

  _$GCurrentUserData_me._(
      {required this.G__typename,
      required this.id,
      required this.username,
      this.picture,
      required this.maxLevel})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GCurrentUserData_me', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(id, 'GCurrentUserData_me', 'id');
    BuiltValueNullFieldError.checkNotNull(
        username, 'GCurrentUserData_me', 'username');
    BuiltValueNullFieldError.checkNotNull(
        maxLevel, 'GCurrentUserData_me', 'maxLevel');
  }

  @override
  GCurrentUserData_me rebuild(
          void Function(GCurrentUserData_meBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GCurrentUserData_meBuilder toBuilder() =>
      new GCurrentUserData_meBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GCurrentUserData_me &&
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
    return (newBuiltValueToStringHelper('GCurrentUserData_me')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('username', username)
          ..add('picture', picture)
          ..add('maxLevel', maxLevel))
        .toString();
  }
}

class GCurrentUserData_meBuilder
    implements Builder<GCurrentUserData_me, GCurrentUserData_meBuilder> {
  _$GCurrentUserData_me? _$v;

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

  GCurrentUserData_meBuilder() {
    GCurrentUserData_me._initializeBuilder(this);
  }

  GCurrentUserData_meBuilder get _$this {
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
  void replace(GCurrentUserData_me other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GCurrentUserData_me;
  }

  @override
  void update(void Function(GCurrentUserData_meBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GCurrentUserData_me build() {
    final _$result = _$v ??
        new _$GCurrentUserData_me._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GCurrentUserData_me', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GCurrentUserData_me', 'id'),
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GCurrentUserData_me', 'username'),
            picture: picture,
            maxLevel: BuiltValueNullFieldError.checkNotNull(
                maxLevel, 'GCurrentUserData_me', 'maxLevel'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
