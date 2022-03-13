// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_record.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNewRecordVars> _$gNewRecordVarsSerializer =
    new _$GNewRecordVarsSerializer();

class _$GNewRecordVarsSerializer
    implements StructuredSerializer<GNewRecordVars> {
  @override
  final Iterable<Type> types = const [GNewRecordVars, _$GNewRecordVars];
  @override
  final String wireName = 'GNewRecordVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GNewRecordVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(_i1.GRecordInput)),
    ];

    return result;
  }

  @override
  GNewRecordVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewRecordVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'input':
          result.input.replace(serializers.deserialize(value,
                  specifiedType: const FullType(_i1.GRecordInput))!
              as _i1.GRecordInput);
          break;
      }
    }

    return result.build();
  }
}

class _$GNewRecordVars extends GNewRecordVars {
  @override
  final _i1.GRecordInput input;

  factory _$GNewRecordVars([void Function(GNewRecordVarsBuilder)? updates]) =>
      (new GNewRecordVarsBuilder()..update(updates)).build();

  _$GNewRecordVars._({required this.input}) : super._() {
    BuiltValueNullFieldError.checkNotNull(input, 'GNewRecordVars', 'input');
  }

  @override
  GNewRecordVars rebuild(void Function(GNewRecordVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewRecordVarsBuilder toBuilder() =>
      new GNewRecordVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewRecordVars && input == other.input;
  }

  @override
  int get hashCode {
    return $jf($jc(0, input.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewRecordVars')..add('input', input))
        .toString();
  }
}

class GNewRecordVarsBuilder
    implements Builder<GNewRecordVars, GNewRecordVarsBuilder> {
  _$GNewRecordVars? _$v;

  _i1.GRecordInputBuilder? _input;
  _i1.GRecordInputBuilder get input =>
      _$this._input ??= new _i1.GRecordInputBuilder();
  set input(_i1.GRecordInputBuilder? input) => _$this._input = input;

  GNewRecordVarsBuilder();

  GNewRecordVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _input = $v.input.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewRecordVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewRecordVars;
  }

  @override
  void update(void Function(GNewRecordVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewRecordVars build() {
    _$GNewRecordVars _$result;
    try {
      _$result = _$v ?? new _$GNewRecordVars._(input: input.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GNewRecordVars', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
