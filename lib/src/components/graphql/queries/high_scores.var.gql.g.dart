// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'high_scores.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GHighScoresVars> _$gHighScoresVarsSerializer =
    new _$GHighScoresVarsSerializer();

class _$GHighScoresVarsSerializer
    implements StructuredSerializer<GHighScoresVars> {
  @override
  final Iterable<Type> types = const [GHighScoresVars, _$GHighScoresVars];
  @override
  final String wireName = 'GHighScoresVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GHighScoresVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
    ];
    Object? value;
    value = object.first;
    if (value != null) {
      result
        ..add('first')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
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
  GHighScoresVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GHighScoresVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'level':
          result.level = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$GHighScoresVars extends GHighScoresVars {
  @override
  final int level;
  @override
  final int? first;
  @override
  final String? after;

  factory _$GHighScoresVars([void Function(GHighScoresVarsBuilder)? updates]) =>
      (new GHighScoresVarsBuilder()..update(updates)).build();

  _$GHighScoresVars._({required this.level, this.first, this.after})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(level, 'GHighScoresVars', 'level');
  }

  @override
  GHighScoresVars rebuild(void Function(GHighScoresVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GHighScoresVarsBuilder toBuilder() =>
      new GHighScoresVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GHighScoresVars &&
        level == other.level &&
        first == other.first &&
        after == other.after;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, level.hashCode), first.hashCode), after.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GHighScoresVars')
          ..add('level', level)
          ..add('first', first)
          ..add('after', after))
        .toString();
  }
}

class GHighScoresVarsBuilder
    implements Builder<GHighScoresVars, GHighScoresVarsBuilder> {
  _$GHighScoresVars? _$v;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  int? _first;
  int? get first => _$this._first;
  set first(int? first) => _$this._first = first;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  GHighScoresVarsBuilder();

  GHighScoresVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _level = $v.level;
      _first = $v.first;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GHighScoresVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GHighScoresVars;
  }

  @override
  void update(void Function(GHighScoresVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GHighScoresVars build() {
    final _$result = _$v ??
        new _$GHighScoresVars._(
            level: BuiltValueNullFieldError.checkNotNull(
                level, 'GHighScoresVars', 'level'),
            first: first,
            after: after);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
