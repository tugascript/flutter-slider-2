// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUploadImageVars> _$gUploadImageVarsSerializer =
    new _$GUploadImageVarsSerializer();

class _$GUploadImageVarsSerializer
    implements StructuredSerializer<GUploadImageVars> {
  @override
  final Iterable<Type> types = const [GUploadImageVars, _$GUploadImageVars];
  @override
  final String wireName = 'GUploadImageVars';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUploadImageVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'image',
      serializers.serialize(object.image,
          specifiedType: const FullType(_i1.MultipartFile)),
    ];

    return result;
  }

  @override
  GUploadImageVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUploadImageVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.MultipartFile))
              as _i1.MultipartFile;
          break;
      }
    }

    return result.build();
  }
}

class _$GUploadImageVars extends GUploadImageVars {
  @override
  final _i1.MultipartFile image;

  factory _$GUploadImageVars(
          [void Function(GUploadImageVarsBuilder)? updates]) =>
      (new GUploadImageVarsBuilder()..update(updates)).build();

  _$GUploadImageVars._({required this.image}) : super._() {
    BuiltValueNullFieldError.checkNotNull(image, 'GUploadImageVars', 'image');
  }

  @override
  GUploadImageVars rebuild(void Function(GUploadImageVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadImageVarsBuilder toBuilder() =>
      new GUploadImageVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUploadImageVars && image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(0, image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUploadImageVars')
          ..add('image', image))
        .toString();
  }
}

class GUploadImageVarsBuilder
    implements Builder<GUploadImageVars, GUploadImageVarsBuilder> {
  _$GUploadImageVars? _$v;

  _i1.MultipartFile? _image;
  _i1.MultipartFile? get image => _$this._image;
  set image(_i1.MultipartFile? image) => _$this._image = image;

  GUploadImageVarsBuilder();

  GUploadImageVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUploadImageVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUploadImageVars;
  }

  @override
  void update(void Function(GUploadImageVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUploadImageVars build() {
    final _$result = _$v ??
        new _$GUploadImageVars._(
            image: BuiltValueNullFieldError.checkNotNull(
                image, 'GUploadImageVars', 'image'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
