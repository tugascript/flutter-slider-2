// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upload_image.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GUploadImageData> _$gUploadImageDataSerializer =
    new _$GUploadImageDataSerializer();
Serializer<GUploadImageData_addImage> _$gUploadImageDataAddImageSerializer =
    new _$GUploadImageData_addImageSerializer();

class _$GUploadImageDataSerializer
    implements StructuredSerializer<GUploadImageData> {
  @override
  final Iterable<Type> types = const [GUploadImageData, _$GUploadImageData];
  @override
  final String wireName = 'GUploadImageData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GUploadImageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'addImage',
      serializers.serialize(object.addImage,
          specifiedType: const FullType(GUploadImageData_addImage)),
    ];

    return result;
  }

  @override
  GUploadImageData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUploadImageDataBuilder();

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
        case 'addImage':
          result.addImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GUploadImageData_addImage))!
              as GUploadImageData_addImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GUploadImageData_addImageSerializer
    implements StructuredSerializer<GUploadImageData_addImage> {
  @override
  final Iterable<Type> types = const [
    GUploadImageData_addImage,
    _$GUploadImageData_addImage
  ];
  @override
  final String wireName = 'GUploadImageData_addImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GUploadImageData_addImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GUploadImageData_addImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GUploadImageData_addImageBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GUploadImageData extends GUploadImageData {
  @override
  final String G__typename;
  @override
  final GUploadImageData_addImage addImage;

  factory _$GUploadImageData(
          [void Function(GUploadImageDataBuilder)? updates]) =>
      (new GUploadImageDataBuilder()..update(updates)).build();

  _$GUploadImageData._({required this.G__typename, required this.addImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUploadImageData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        addImage, 'GUploadImageData', 'addImage');
  }

  @override
  GUploadImageData rebuild(void Function(GUploadImageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadImageDataBuilder toBuilder() =>
      new GUploadImageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUploadImageData &&
        G__typename == other.G__typename &&
        addImage == other.addImage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), addImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUploadImageData')
          ..add('G__typename', G__typename)
          ..add('addImage', addImage))
        .toString();
  }
}

class GUploadImageDataBuilder
    implements Builder<GUploadImageData, GUploadImageDataBuilder> {
  _$GUploadImageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GUploadImageData_addImageBuilder? _addImage;
  GUploadImageData_addImageBuilder get addImage =>
      _$this._addImage ??= new GUploadImageData_addImageBuilder();
  set addImage(GUploadImageData_addImageBuilder? addImage) =>
      _$this._addImage = addImage;

  GUploadImageDataBuilder() {
    GUploadImageData._initializeBuilder(this);
  }

  GUploadImageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _addImage = $v.addImage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUploadImageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUploadImageData;
  }

  @override
  void update(void Function(GUploadImageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUploadImageData build() {
    _$GUploadImageData _$result;
    try {
      _$result = _$v ??
          new _$GUploadImageData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GUploadImageData', 'G__typename'),
              addImage: addImage.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'addImage';
        addImage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GUploadImageData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GUploadImageData_addImage extends GUploadImageData_addImage {
  @override
  final String G__typename;
  @override
  final int id;
  @override
  final String url;

  factory _$GUploadImageData_addImage(
          [void Function(GUploadImageData_addImageBuilder)? updates]) =>
      (new GUploadImageData_addImageBuilder()..update(updates)).build();

  _$GUploadImageData_addImage._(
      {required this.G__typename, required this.id, required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GUploadImageData_addImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        id, 'GUploadImageData_addImage', 'id');
    BuiltValueNullFieldError.checkNotNull(
        url, 'GUploadImageData_addImage', 'url');
  }

  @override
  GUploadImageData_addImage rebuild(
          void Function(GUploadImageData_addImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GUploadImageData_addImageBuilder toBuilder() =>
      new GUploadImageData_addImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GUploadImageData_addImage &&
        G__typename == other.G__typename &&
        id == other.id &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, G__typename.hashCode), id.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GUploadImageData_addImage')
          ..add('G__typename', G__typename)
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class GUploadImageData_addImageBuilder
    implements
        Builder<GUploadImageData_addImage, GUploadImageData_addImageBuilder> {
  _$GUploadImageData_addImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  GUploadImageData_addImageBuilder() {
    GUploadImageData_addImage._initializeBuilder(this);
  }

  GUploadImageData_addImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _id = $v.id;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GUploadImageData_addImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GUploadImageData_addImage;
  }

  @override
  void update(void Function(GUploadImageData_addImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GUploadImageData_addImage build() {
    final _$result = _$v ??
        new _$GUploadImageData_addImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GUploadImageData_addImage', 'G__typename'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'GUploadImageData_addImage', 'id'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'GUploadImageData_addImage', 'url'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
