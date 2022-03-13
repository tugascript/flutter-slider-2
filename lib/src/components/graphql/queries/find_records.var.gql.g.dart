// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_records.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFindRecordsVars> _$gFindRecordsVarsSerializer =
    new _$GFindRecordsVarsSerializer();

class _$GFindRecordsVarsSerializer
    implements StructuredSerializer<GFindRecordsVars> {
  @override
  final Iterable<Type> types = const [GFindRecordsVars, _$GFindRecordsVars];
  @override
  final String wireName = 'GFindRecordsVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFindRecordsVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'userId',
      serializers.serialize(object.userId, specifiedType: const FullType(int)),
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.after;
    if (value != null) {
      result
        ..add('after')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GFindRecordsVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindRecordsVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userId':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFindRecordsVars extends GFindRecordsVars {
  @override
  final int userId;
  @override
  final int level;
  @override
  final String? after;

  factory _$GFindRecordsVars(
          [void Function(GFindRecordsVarsBuilder)? updates]) =>
      (new GFindRecordsVarsBuilder()..update(updates)).build();

  _$GFindRecordsVars._({required this.userId, required this.level, this.after})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(userId, 'GFindRecordsVars', 'userId');
    BuiltValueNullFieldError.checkNotNull(level, 'GFindRecordsVars', 'level');
  }

  @override
  GFindRecordsVars rebuild(void Function(GFindRecordsVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindRecordsVarsBuilder toBuilder() =>
      new GFindRecordsVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindRecordsVars &&
        userId == other.userId &&
        level == other.level &&
        after == other.after;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, userId.hashCode), level.hashCode), after.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFindRecordsVars')
          ..add('userId', userId)
          ..add('level', level)
          ..add('after', after))
        .toString();
  }
}

class GFindRecordsVarsBuilder
    implements Builder<GFindRecordsVars, GFindRecordsVarsBuilder> {
  _$GFindRecordsVars? _$v;

  int? _userId;
  int? get userId => _$this._userId;
  set userId(int? userId) => _$this._userId = userId;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  GFindRecordsVarsBuilder();

  GFindRecordsVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _level = $v.level;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFindRecordsVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindRecordsVars;
  }

  @override
  void update(void Function(GFindRecordsVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindRecordsVars build() {
    final _$result = _$v ??
        new _$GFindRecordsVars._(
            userId: BuiltValueNullFieldError.checkNotNull(
                userId, 'GFindRecordsVars', 'userId'),
            level: BuiltValueNullFieldError.checkNotNull(
                level, 'GFindRecordsVars', 'level'),
            after: after);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
