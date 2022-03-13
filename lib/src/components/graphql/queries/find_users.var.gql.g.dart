// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'find_users.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GFindUsersVars> _$gFindUsersVarsSerializer =
    new _$GFindUsersVarsSerializer();

class _$GFindUsersVarsSerializer
    implements StructuredSerializer<GFindUsersVars> {
  @override
  final Iterable<Type> types = const [GFindUsersVars, _$GFindUsersVars];
  @override
  final String wireName = 'GFindUsersVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GFindUsersVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.search;
    if (value != null) {
      result
        ..add('search')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
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
    value = object.cursor;
    if (value != null) {
      result
        ..add('cursor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(_i1.GUsersCursor)));
    }
    return result;
  }

  @override
  GFindUsersVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GFindUsersVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'search':
          result.search = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'first':
          result.first = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'after':
          result.after = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cursor':
          result.cursor = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GUsersCursor))
              as _i1.GUsersCursor?;
          break;
      }
    }

    return result.build();
  }
}

class _$GFindUsersVars extends GFindUsersVars {
  @override
  final String? search;
  @override
  final int? first;
  @override
  final String? after;
  @override
  final _i1.GUsersCursor? cursor;

  factory _$GFindUsersVars([void Function(GFindUsersVarsBuilder)? updates]) =>
      (new GFindUsersVarsBuilder()..update(updates)).build();

  _$GFindUsersVars._({this.search, this.first, this.after, this.cursor})
      : super._();

  @override
  GFindUsersVars rebuild(void Function(GFindUsersVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GFindUsersVarsBuilder toBuilder() =>
      new GFindUsersVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GFindUsersVars &&
        search == other.search &&
        first == other.first &&
        after == other.after &&
        cursor == other.cursor;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, search.hashCode), first.hashCode), after.hashCode),
        cursor.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GFindUsersVars')
          ..add('search', search)
          ..add('first', first)
          ..add('after', after)
          ..add('cursor', cursor))
        .toString();
  }
}

class GFindUsersVarsBuilder
    implements Builder<GFindUsersVars, GFindUsersVarsBuilder> {
  _$GFindUsersVars? _$v;

  String? _search;
  String? get search => _$this._search;
  set search(String? search) => _$this._search = search;

  int? _first;
  int? get first => _$this._first;
  set first(int? first) => _$this._first = first;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  _i1.GUsersCursor? _cursor;
  _i1.GUsersCursor? get cursor => _$this._cursor;
  set cursor(_i1.GUsersCursor? cursor) => _$this._cursor = cursor;

  GFindUsersVarsBuilder();

  GFindUsersVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _search = $v.search;
      _first = $v.first;
      _after = $v.after;
      _cursor = $v.cursor;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GFindUsersVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GFindUsersVars;
  }

  @override
  void update(void Function(GFindUsersVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GFindUsersVars build() {
    final _$result = _$v ??
        new _$GFindUsersVars._(
            search: search, first: first, after: after, cursor: cursor);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
