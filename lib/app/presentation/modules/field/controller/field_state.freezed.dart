// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldState {
  bool get fetching => throw _privateConstructorUsedError;
  DateTime? get dateTo => throw _privateConstructorUsedError;
  DateTime? get timeTo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldStateCopyWith<FieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStateCopyWith<$Res> {
  factory $FieldStateCopyWith(
          FieldState value, $Res Function(FieldState) then) =
      _$FieldStateCopyWithImpl<$Res, FieldState>;
  @useResult
  $Res call({bool fetching, DateTime? dateTo, DateTime? timeTo});
}

/// @nodoc
class _$FieldStateCopyWithImpl<$Res, $Val extends FieldState>
    implements $FieldStateCopyWith<$Res> {
  _$FieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? dateTo = freezed,
    Object? timeTo = freezed,
  }) {
    return _then(_value.copyWith(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldStateImplCopyWith<$Res>
    implements $FieldStateCopyWith<$Res> {
  factory _$$FieldStateImplCopyWith(
          _$FieldStateImpl value, $Res Function(_$FieldStateImpl) then) =
      __$$FieldStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool fetching, DateTime? dateTo, DateTime? timeTo});
}

/// @nodoc
class __$$FieldStateImplCopyWithImpl<$Res>
    extends _$FieldStateCopyWithImpl<$Res, _$FieldStateImpl>
    implements _$$FieldStateImplCopyWith<$Res> {
  __$$FieldStateImplCopyWithImpl(
      _$FieldStateImpl _value, $Res Function(_$FieldStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? dateTo = freezed,
    Object? timeTo = freezed,
  }) {
    return _then(_$FieldStateImpl(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$FieldStateImpl extends _FieldState {
  const _$FieldStateImpl({this.fetching = false, this.dateTo, this.timeTo})
      : super._();

  @override
  @JsonKey()
  final bool fetching;
  @override
  final DateTime? dateTo;
  @override
  final DateTime? timeTo;

  @override
  String toString() {
    return 'FieldState(fetching: $fetching, dateTo: $dateTo, timeTo: $timeTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldStateImpl &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.timeTo, timeTo) || other.timeTo == timeTo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetching, dateTo, timeTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldStateImplCopyWith<_$FieldStateImpl> get copyWith =>
      __$$FieldStateImplCopyWithImpl<_$FieldStateImpl>(this, _$identity);
}

abstract class _FieldState extends FieldState {
  const factory _FieldState(
      {final bool fetching,
      final DateTime? dateTo,
      final DateTime? timeTo}) = _$FieldStateImpl;
  const _FieldState._() : super._();

  @override
  bool get fetching;
  @override
  DateTime? get dateTo;
  @override
  DateTime? get timeTo;
  @override
  @JsonKey(ignore: true)
  _$$FieldStateImplCopyWith<_$FieldStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
