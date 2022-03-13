// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_profile_picture.var.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNewProfilePictureVars> _$gNewProfilePictureVarsSerializer =
    new _$GNewProfilePictureVarsSerializer();

class _$GNewProfilePictureVarsSerializer
    implements StructuredSerializer<GNewProfilePictureVars> {
  @override
  final Iterable<Type> types = const [
    GNewProfilePictureVars,
    _$GNewProfilePictureVars
  ];
  @override
  final String wireName = 'GNewProfilePictureVars';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNewProfilePictureVars object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'picture',
      serializers.serialize(object.picture,
          specifiedType: const FullType(_i1.MultipartFile)),
    ];

    return result;
  }

  @override
  GNewProfilePictureVars deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewProfilePictureVarsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'picture':
          result.picture = serializers.deserialize(value,
                  specifiedType: const FullType(_i1.MultipartFile))
              as _i1.MultipartFile;
          break;
      }
    }

    return result.build();
  }
}

class _$GNewProfilePictureVars extends GNewProfilePictureVars {
  @override
  final _i1.MultipartFile picture;

  factory _$GNewProfilePictureVars(
          [void Function(GNewProfilePictureVarsBuilder)? updates]) =>
      (new GNewProfilePictureVarsBuilder()..update(updates)).build();

  _$GNewProfilePictureVars._({required this.picture}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        picture, 'GNewProfilePictureVars', 'picture');
  }

  @override
  GNewProfilePictureVars rebuild(
          void Function(GNewProfilePictureVarsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewProfilePictureVarsBuilder toBuilder() =>
      new GNewProfilePictureVarsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewProfilePictureVars && picture == other.picture;
  }

  @override
  int get hashCode {
    return $jf($jc(0, picture.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewProfilePictureVars')
          ..add('picture', picture))
        .toString();
  }
}

class GNewProfilePictureVarsBuilder
    implements Builder<GNewProfilePictureVars, GNewProfilePictureVarsBuilder> {
  _$GNewProfilePictureVars? _$v;

  _i1.MultipartFile? _picture;
  _i1.MultipartFile? get picture => _$this._picture;
  set picture(_i1.MultipartFile? picture) => _$this._picture = picture;

  GNewProfilePictureVarsBuilder();

  GNewProfilePictureVarsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _picture = $v.picture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewProfilePictureVars other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewProfilePictureVars;
  }

  @override
  void update(void Function(GNewProfilePictureVarsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewProfilePictureVars build() {
    final _$result = _$v ??
        new _$GNewProfilePictureVars._(
            picture: BuiltValueNullFieldError.checkNotNull(
                picture, 'GNewProfilePictureVars', 'picture'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
