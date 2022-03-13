// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_images.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GGetImagesVars> _$gGetImagesVarsSerializer =
    new _$GGetImagesVarsSerializer();

class _$GGetImagesVarsSerializer
    implements StructuredSerializer<GGetImagesVars> {
  @override
  final Iterable<Type> types = const [GGetImagesVars, _$GGetImagesVars];
  @override
  final String wireName = 'GGetImagesVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GGetImagesVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'first',
      serializers.serialize(object.first, specifiedType: const FullType(int)),
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
  GGetImagesVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GGetImagesVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'first':
          result.first = serializers.deserialize(value,
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

class _$GGetImagesVars extends GGetImagesVars {
  @override
  final int first;
  @override
  final String? after;

  factory _$GGetImagesVars([void Function(GGetImagesVarsBuilder)? updates]) =>
      (new GGetImagesVarsBuilder()..update(updates)).build();

  _$GGetImagesVars._({required this.first, this.after}) : super._() {
    BuiltValueNullFieldError.checkNotNull(first, 'GGetImagesVars', 'first');
  }

  @override
  GGetImagesVars rebuild(void Function(GGetImagesVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GGetImagesVarsBuilder toBuilder() =>
      new GGetImagesVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GGetImagesVars &&
        first == other.first &&
        after == other.after;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, first.hashCode), after.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GGetImagesVars')
          ..add('first', first)
          ..add('after', after))
        .toString();
  }
}

class GGetImagesVarsBuilder
    implements Builder<GGetImagesVars, GGetImagesVarsBuilder> {
  _$GGetImagesVars? _$v;

  int? _first;
  int? get first => _$this._first;
  set first(int? first) => _$this._first = first;

  String? _after;
  String? get after => _$this._after;
  set after(String? after) => _$this._after = after;

  GGetImagesVarsBuilder();

  GGetImagesVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _first = $v.first;
      _after = $v.after;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GGetImagesVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GGetImagesVars;
  }

  @override
  void update(void Function(GGetImagesVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GGetImagesVars build() {
    final _$result = _$v ??
        new _$GGetImagesVars._(
            first: BuiltValueNullFieldError.checkNotNull(
                first, 'GGetImagesVars', 'first'),
            after: after);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
