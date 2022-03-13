// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_image.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteImageVars> _$gDeleteImageVarsSerializer =
    new _$GDeleteImageVarsSerializer();

class _$GDeleteImageVarsSerializer
    implements StructuredSerializer<GDeleteImageVars> {
  @override
  final Iterable<Type> types = const [GDeleteImageVars, _$GDeleteImageVars];
  @override
  final String wireName = 'GDeleteImageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteImageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'imageId',
      serializers.serialize(object.imageId, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GDeleteImageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteImageVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'imageId':
          result.imageId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteImageVars extends GDeleteImageVars {
  @override
  final int imageId;

  factory _$GDeleteImageVars(
          [void Function(GDeleteImageVarsBuilder)? updates]) =>
      (new GDeleteImageVarsBuilder()..update(updates)).build();

  _$GDeleteImageVars._({required this.imageId}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        imageId, 'GDeleteImageVars', 'imageId');
  }

  @override
  GDeleteImageVars rebuild(void Function(GDeleteImageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteImageVarsBuilder toBuilder() =>
      new GDeleteImageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteImageVars && imageId == other.imageId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, imageId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteImageVars')
          ..add('imageId', imageId))
        .toString();
  }
}

class GDeleteImageVarsBuilder
    implements Builder<GDeleteImageVars, GDeleteImageVarsBuilder> {
  _$GDeleteImageVars? _$v;

  int? _imageId;
  int? get imageId => _$this._imageId;
  set imageId(int? imageId) => _$this._imageId = imageId;

  GDeleteImageVarsBuilder();

  GDeleteImageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _imageId = $v.imageId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteImageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteImageVars;
  }

  @override
  void update(void Function(GDeleteImageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteImageVars build() {
    final _$result = _$v ??
        new _$GDeleteImageVars._(
            imageId: BuiltValueNullFieldError.checkNotNull(
                imageId, 'GDeleteImageVars', 'imageId'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
