// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.schema.gql.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GQueryOrder _$gQueryOrderASC = const GQueryOrder._('ASC');
const GQueryOrder _$gQueryOrderDESC = const GQueryOrder._('DESC');

GQueryOrder _$gQueryOrderValueOf(String name) {
  switch (name) {
    case 'ASC':
      return _$gQueryOrderASC;
    case 'DESC':
      return _$gQueryOrderDESC;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GQueryOrder> _$gQueryOrderValues =
    new BuiltSet<GQueryOrder>(const <GQueryOrder>[
  _$gQueryOrderASC,
  _$gQueryOrderDESC,
]);

const GUsersCursor _$gUsersCursorDATE = const GUsersCursor._('DATE');
const GUsersCursor _$gUsersCursorALPHABET = const GUsersCursor._('ALPHABET');

GUsersCursor _$gUsersCursorValueOf(String name) {
  switch (name) {
    case 'DATE':
      return _$gUsersCursorDATE;
    case 'ALPHABET':
      return _$gUsersCursorALPHABET;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<GUsersCursor> _$gUsersCursorValues =
    new BuiltSet<GUsersCursor>(const <GUsersCursor>[
  _$gUsersCursorDATE,
  _$gUsersCursorALPHABET,
]);

Serializer<GQueryOrder> _$gQueryOrderSerializer = new _$GQueryOrderSerializer();
Serializer<GRecordInput> _$gRecordInputSerializer =
    new _$GRecordInputSerializer();
Serializer<GUsersCursor> _$gUsersCursorSerializer =
    new _$GUsersCursorSerializer();

class _$GQueryOrderSerializer implements PrimitiveSerializer<GQueryOrder> {
  @override
  final Iterable<Type> types = const <Type>[GQueryOrder];
  @override
  final String wireName = 'GQueryOrder';

  @override
  Object serialize(Serializers serializers, GQueryOrder object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GQueryOrder deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GQueryOrder.valueOf(serialized as String);
}

class _$GRecordInputSerializer implements StructuredSerializer<GRecordInput> {
  @override
  final Iterable<Type> types = const [GRecordInput, _$GRecordInput];
  @override
  final String wireName = 'GRecordInput';

  @override
  Iterable<Object?> serialize(Serializers serializers, GRecordInput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'level',
      serializers.serialize(object.level, specifiedType: const FullType(int)),
      'moves',
      serializers.serialize(object.moves, specifiedType: const FullType(int)),
      'time',
      serializers.serialize(object.time, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  GRecordInput deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GRecordInputBuilder();

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
        case 'moves':
          result.moves = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$GUsersCursorSerializer implements PrimitiveSerializer<GUsersCursor> {
  @override
  final Iterable<Type> types = const <Type>[GUsersCursor];
  @override
  final String wireName = 'GUsersCursor';

  @override
  Object serialize(Serializers serializers, GUsersCursor object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  GUsersCursor deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GUsersCursor.valueOf(serialized as String);
}

class _$GRecordInput extends GRecordInput {
  @override
  final int level;
  @override
  final int moves;
  @override
  final int time;

  factory _$GRecordInput([void Function(GRecordInputBuilder)? updates]) =>
      (new GRecordInputBuilder()..update(updates)).build();

  _$GRecordInput._(
      {required this.level, required this.moves, required this.time})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(level, 'GRecordInput', 'level');
    BuiltValueNullFieldError.checkNotNull(moves, 'GRecordInput', 'moves');
    BuiltValueNullFieldError.checkNotNull(time, 'GRecordInput', 'time');
  }

  @override
  GRecordInput rebuild(void Function(GRecordInputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GRecordInputBuilder toBuilder() => new GRecordInputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GRecordInput &&
        level == other.level &&
        moves == other.moves &&
        time == other.time;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, level.hashCode), moves.hashCode), time.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GRecordInput')
          ..add('level', level)
          ..add('moves', moves)
          ..add('time', time))
        .toString();
  }
}

class GRecordInputBuilder
    implements Builder<GRecordInput, GRecordInputBuilder> {
  _$GRecordInput? _$v;

  int? _level;
  int? get level => _$this._level;
  set level(int? level) => _$this._level = level;

  int? _moves;
  int? get moves => _$this._moves;
  set moves(int? moves) => _$this._moves = moves;

  int? _time;
  int? get time => _$this._time;
  set time(int? time) => _$this._time = time;

  GRecordInputBuilder();

  GRecordInputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _level = $v.level;
      _moves = $v.moves;
      _time = $v.time;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GRecordInput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GRecordInput;
  }

  @override
  void update(void Function(GRecordInputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GRecordInput build() {
    final _$result = _$v ??
        new _$GRecordInput._(
            level: BuiltValueNullFieldError.checkNotNull(
                level, 'GRecordInput', 'level'),
            moves: BuiltValueNullFieldError.checkNotNull(
                moves, 'GRecordInput', 'moves'),
            time: BuiltValueNullFieldError.checkNotNull(
                time, 'GRecordInput', 'time'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
