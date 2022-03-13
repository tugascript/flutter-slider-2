// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_single_user.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetSingleUserVars> _$gGetSingleUserVarsSerializer =
    new _$GGetSingleUserVarsSerializer();

class _$GGetSingleUserVarsSerializer
    implements StructuredSerializer<GGetSingleUserVars> {
  @override
  final Iterable<Type> types = const [GGetSingleUserVars, _$GGetSingleUserVars];
  @override
  final String wireName = 'GGetSingleUserVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GGetSingleUserVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GGetSingleUserVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetSingleUserVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$GGetSingleUserVars extends GGetSingleUserVars {
  @override
  final String username;
  @override
  final int level;

  factory _$GGetSingleUserVars(
          [void Function(GGetSingleUserVarsBuilder)? updates]) =>
      (new GGetSingleUserVarsBuilder()..update(updates)).build();

  _$GGetSingleUserVars._({required this.username, required this.level})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        username, 'GGetSingleUserVars', 'username');
    BuiltValueNullFieldError.checkNotNull(level, 'GGetSingleUserVars', 'level');
  }

  @override
  GGetSingleUserVars rebuild(
          void Function(GGetSingleUserVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetSingleUserVarsBuilder toBuilder() =>
      new GGetSingleUserVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetSingleUserVars &&
        username == other.username &&
        level == other.level;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, username.hashCode), level.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetSingleUserVars')
          ..add('username', username)
          ..add('level', level))
        .toString();
  }
}

class GGetSingleUserVarsBuilder
    implements Builder<GGetSingleUserVars, GGetSingleUserVarsBuilder> {
  _$GGetSingleUserVars? _$v;

  String? _username;
  String? get username => _$this._username;
  set username(String? username) => _$this._username = username;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  GGetSingleUserVarsBuilder();

  GGetSingleUserVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _username = $v.username;
      _level = $v.level;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetSingleUserVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetSingleUserVars;
  }

  @override
  void update(void Function(GGetSingleUserVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetSingleUserVars build() {
    final _$result = _$v ??
        new _$GGetSingleUserVars._(
            username: BuiltValueNullFieldError.checkNotNull(
                username, 'GGetSingleUserVars', 'username'),
            level: BuiltValueNullFieldError.checkNotNull(
                level, 'GGetSingleUserVars', 'level'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
