// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_profile_picture.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GNewProfilePictureData> _$gNewProfilePictureDataSerializer =
    new _$GNewProfilePictureDataSerializer();
Serializer<GNewProfilePictureData_updateProfilePicture>
    _$gNewProfilePictureDataUpdateProfilePictureSerializer =
    new _$GNewProfilePictureData_updateProfilePictureSerializer();

class _$GNewProfilePictureDataSerializer
    implements StructuredSerializer<GNewProfilePictureData> {
  @override
  final Iterable<Type> types = const [
    GNewProfilePictureData,
    _$GNewProfilePictureData
  ];
  @override
  final String wireName = 'GNewProfilePictureData';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GNewProfilePictureData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'updateProfilePicture',
      serializers.serialize(object.updateProfilePicture,
          specifiedType:
              const FullType(GNewProfilePictureData_updateProfilePicture)),
    ];

    return result;
  }

  @override
  GNewProfilePictureData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewProfilePictureDataBuilder();

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
        case 'updateProfilePicture':
          result.updateProfilePicture.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      GNewProfilePictureData_updateProfilePicture))!
              as GNewProfilePictureData_updateProfilePicture);
          break;
      }
    }

    return result.build();
  }
}

class _$GNewProfilePictureData_updateProfilePictureSerializer
    implements
        StructuredSerializer<GNewProfilePictureData_updateProfilePicture> {
  @override
  final Iterable<Type> types = const [
    GNewProfilePictureData_updateProfilePicture,
    _$GNewProfilePictureData_updateProfilePicture
  ];
  @override
  final String wireName = 'GNewProfilePictureData_updateProfilePicture';

  @override
  Iterable<Object?> serialize(Serializers serializers,
      GNewProfilePictureData_updateProfilePicture object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
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
  GNewProfilePictureData_updateProfilePicture deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GNewProfilePictureData_updateProfilePictureBuilder();

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
        case 'picture':
          result.picture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GNewProfilePictureData extends GNewProfilePictureData {
  @override
  final String G__typename;
  @override
  final GNewProfilePictureData_updateProfilePicture updateProfilePicture;

  factory _$GNewProfilePictureData(
          [void Function(GNewProfilePictureDataBuilder)? updates]) =>
      (new GNewProfilePictureDataBuilder()..update(updates)).build();

  _$GNewProfilePictureData._(
      {required this.G__typename, required this.updateProfilePicture})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GNewProfilePictureData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        updateProfilePicture, 'GNewProfilePictureData', 'updateProfilePicture');
  }

  @override
  GNewProfilePictureData rebuild(
          void Function(GNewProfilePictureDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewProfilePictureDataBuilder toBuilder() =>
      new GNewProfilePictureDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewProfilePictureData &&
        G__typename == other.G__typename &&
        updateProfilePicture == other.updateProfilePicture;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, G__typename.hashCode), updateProfilePicture.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GNewProfilePictureData')
          ..add('G__typename', G__typename)
          ..add('updateProfilePicture', updateProfilePicture))
        .toString();
  }
}

class GNewProfilePictureDataBuilder
    implements Builder<GNewProfilePictureData, GNewProfilePictureDataBuilder> {
  _$GNewProfilePictureData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GNewProfilePictureData_updateProfilePictureBuilder? _updateProfilePicture;
  GNewProfilePictureData_updateProfilePictureBuilder get updateProfilePicture =>
      _$this._updateProfilePicture ??=
          new GNewProfilePictureData_updateProfilePictureBuilder();
  set updateProfilePicture(
          GNewProfilePictureData_updateProfilePictureBuilder?
              updateProfilePicture) =>
      _$this._updateProfilePicture = updateProfilePicture;

  GNewProfilePictureDataBuilder() {
    GNewProfilePictureData._initializeBuilder(this);
  }

  GNewProfilePictureDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _updateProfilePicture = $v.updateProfilePicture.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewProfilePictureData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewProfilePictureData;
  }

  @override
  void update(void Function(GNewProfilePictureDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewProfilePictureData build() {
    _$GNewProfilePictureData _$result;
    try {
      _$result = _$v ??
          new _$GNewProfilePictureData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GNewProfilePictureData', 'G__typename'),
              updateProfilePicture: updateProfilePicture.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'updateProfilePicture';
        updateProfilePicture.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GNewProfilePictureData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GNewProfilePictureData_updateProfilePicture
    extends GNewProfilePictureData_updateProfilePicture {
  @override
  final String G__typename;
  @override
  final String? picture;

  factory _$GNewProfilePictureData_updateProfilePicture(
          [void Function(GNewProfilePictureData_updateProfilePictureBuilder)?
              updates]) =>
      (new GNewProfilePictureData_updateProfilePictureBuilder()
            ..update(updates))
          .build();

  _$GNewProfilePictureData_updateProfilePicture._(
      {required this.G__typename, this.picture})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(G__typename,
        'GNewProfilePictureData_updateProfilePicture', 'G__typename');
  }

  @override
  GNewProfilePictureData_updateProfilePicture rebuild(
          void Function(GNewProfilePictureData_updateProfilePictureBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GNewProfilePictureData_updateProfilePictureBuilder toBuilder() =>
      new GNewProfilePictureData_updateProfilePictureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GNewProfilePictureData_updateProfilePicture &&
        G__typename == other.G__typename &&
        picture == other.picture;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), picture.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'GNewProfilePictureData_updateProfilePicture')
          ..add('G__typename', G__typename)
          ..add('picture', picture))
        .toString();
  }
}

class GNewProfilePictureData_updateProfilePictureBuilder
    implements
        Builder<GNewProfilePictureData_updateProfilePicture,
            GNewProfilePictureData_updateProfilePictureBuilder> {
  _$GNewProfilePictureData_updateProfilePicture? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _picture;
  String? get picture => _$this._picture;
  set picture(String? picture) => _$this._picture = picture;

  GNewProfilePictureData_updateProfilePictureBuilder() {
    GNewProfilePictureData_updateProfilePicture._initializeBuilder(this);
  }

  GNewProfilePictureData_updateProfilePictureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _picture = $v.picture;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GNewProfilePictureData_updateProfilePicture other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GNewProfilePictureData_updateProfilePicture;
  }

  @override
  void update(
      void Function(GNewProfilePictureData_updateProfilePictureBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GNewProfilePictureData_updateProfilePicture build() {
    final _$result = _$v ??
        new _$GNewProfilePictureData_updateProfilePicture._(
            G__typename: BuiltValueNullFieldError.checkNotNull(G__typename,
                'GNewProfilePictureData_updateProfilePicture', 'G__typename'),
            picture: picture);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
