// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_image.data.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GDeleteImageData> _$gDeleteImageDataSerializer =
    new _$GDeleteImageDataSerializer();
Serializer<GDeleteImageData_deleteImage>
    _$gDeleteImageDataDeleteImageSerializer =
    new _$GDeleteImageData_deleteImageSerializer();

class _$GDeleteImageDataSerializer
    implements StructuredSerializer<GDeleteImageData> {
  @override
  final Iterable<Type> types = const [GDeleteImageData, _$GDeleteImageData];
  @override
  final String wireName = 'GDeleteImageData';

  @override
  Iterable<Object?> serialize(Serializers serializers, GDeleteImageData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'deleteImage',
      serializers.serialize(object.deleteImage,
          specifiedType: const FullType(GDeleteImageData_deleteImage)),
    ];

    return result;
  }

  @override
  GDeleteImageData deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteImageDataBuilder();

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
        case 'deleteImage':
          result.deleteImage.replace(serializers.deserialize(value,
                  specifiedType: const FullType(GDeleteImageData_deleteImage))!
              as GDeleteImageData_deleteImage);
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteImageData_deleteImageSerializer
    implements StructuredSerializer<GDeleteImageData_deleteImage> {
  @override
  final Iterable<Type> types = const [
    GDeleteImageData_deleteImage,
    _$GDeleteImageData_deleteImage
  ];
  @override
  final String wireName = 'GDeleteImageData_deleteImage';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, GDeleteImageData_deleteImage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      '__typename',
      serializers.serialize(object.G__typename,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GDeleteImageData_deleteImage deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GDeleteImageData_deleteImageBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GDeleteImageData extends GDeleteImageData {
  @override
  final String G__typename;
  @override
  final GDeleteImageData_deleteImage deleteImage;

  factory _$GDeleteImageData(
          [void Function(GDeleteImageDataBuilder)? updates]) =>
      (new GDeleteImageDataBuilder()..update(updates)).build();

  _$GDeleteImageData._({required this.G__typename, required this.deleteImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeleteImageData', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        deleteImage, 'GDeleteImageData', 'deleteImage');
  }

  @override
  GDeleteImageData rebuild(void Function(GDeleteImageDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteImageDataBuilder toBuilder() =>
      new GDeleteImageDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteImageData &&
        G__typename == other.G__typename &&
        deleteImage == other.deleteImage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), deleteImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteImageData')
          ..add('G__typename', G__typename)
          ..add('deleteImage', deleteImage))
        .toString();
  }
}

class GDeleteImageDataBuilder
    implements Builder<GDeleteImageData, GDeleteImageDataBuilder> {
  _$GDeleteImageData? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  GDeleteImageData_deleteImageBuilder? _deleteImage;
  GDeleteImageData_deleteImageBuilder get deleteImage =>
      _$this._deleteImage ??= new GDeleteImageData_deleteImageBuilder();
  set deleteImage(GDeleteImageData_deleteImageBuilder? deleteImage) =>
      _$this._deleteImage = deleteImage;

  GDeleteImageDataBuilder() {
    GDeleteImageData._initializeBuilder(this);
  }

  GDeleteImageDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _deleteImage = $v.deleteImage.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteImageData other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteImageData;
  }

  @override
  void update(void Function(GDeleteImageDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteImageData build() {
    _$GDeleteImageData _$result;
    try {
      _$result = _$v ??
          new _$GDeleteImageData._(
              G__typename: BuiltValueNullFieldError.checkNotNull(
                  G__typename, 'GDeleteImageData', 'G__typename'),
              deleteImage: deleteImage.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'deleteImage';
        deleteImage.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GDeleteImageData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$GDeleteImageData_deleteImage extends GDeleteImageData_deleteImage {
  @override
  final String G__typename;
  @override
  final String message;

  factory _$GDeleteImageData_deleteImage(
          [void Function(GDeleteImageData_deleteImageBuilder)? updates]) =>
      (new GDeleteImageData_deleteImageBuilder()..update(updates)).build();

  _$GDeleteImageData_deleteImage._(
      {required this.G__typename, required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        G__typename, 'GDeleteImageData_deleteImage', 'G__typename');
    BuiltValueNullFieldError.checkNotNull(
        message, 'GDeleteImageData_deleteImage', 'message');
  }

  @override
  GDeleteImageData_deleteImage rebuild(
          void Function(GDeleteImageData_deleteImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GDeleteImageData_deleteImageBuilder toBuilder() =>
      new GDeleteImageData_deleteImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GDeleteImageData_deleteImage &&
        G__typename == other.G__typename &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, G__typename.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GDeleteImageData_deleteImage')
          ..add('G__typename', G__typename)
          ..add('message', message))
        .toString();
  }
}

class GDeleteImageData_deleteImageBuilder
    implements
        Builder<GDeleteImageData_deleteImage,
            GDeleteImageData_deleteImageBuilder> {
  _$GDeleteImageData_deleteImage? _$v;

  String? _G__typename;
  String? get G__typename => _$this._G__typename;
  set G__typename(String? G__typename) => _$this._G__typename = G__typename;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  GDeleteImageData_deleteImageBuilder() {
    GDeleteImageData_deleteImage._initializeBuilder(this);
  }

  GDeleteImageData_deleteImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _G__typename = $v.G__typename;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GDeleteImageData_deleteImage other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GDeleteImageData_deleteImage;
  }

  @override
  void update(void Function(GDeleteImageData_deleteImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GDeleteImageData_deleteImage build() {
    final _$result = _$v ??
        new _$GDeleteImageData_deleteImage._(
            G__typename: BuiltValueNullFieldError.checkNotNull(
                G__typename, 'GDeleteImageData_deleteImage', 'G__typename'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, 'GDeleteImageData_deleteImage', 'message'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
