// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'agenda_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AgendaState {
  UserTennisFieldModel? get userTennisFieldSelected =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgendaStateCopyWith<AgendaState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgendaStateCopyWith<$Res> {
  factory $AgendaStateCopyWith(
          AgendaState value, $Res Function(AgendaState) then) =
      _$AgendaStateCopyWithImpl<$Res, AgendaState>;
  @useResult
  $Res call({UserTennisFieldModel? userTennisFieldSelected});

  $UserTennisFieldModelCopyWith<$Res>? get userTennisFieldSelected;
}

/// @nodoc
class _$AgendaStateCopyWithImpl<$Res, $Val extends AgendaState>
    implements $AgendaStateCopyWith<$Res> {
  _$AgendaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTennisFieldSelected = freezed,
  }) {
    return _then(_value.copyWith(
      userTennisFieldSelected: freezed == userTennisFieldSelected
          ? _value.userTennisFieldSelected
          : userTennisFieldSelected // ignore: cast_nullable_to_non_nullable
              as UserTennisFieldModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserTennisFieldModelCopyWith<$Res>? get userTennisFieldSelected {
    if (_value.userTennisFieldSelected == null) {
      return null;
    }

    return $UserTennisFieldModelCopyWith<$Res>(_value.userTennisFieldSelected!,
        (value) {
      return _then(_value.copyWith(userTennisFieldSelected: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AgendaStateImplCopyWith<$Res>
    implements $AgendaStateCopyWith<$Res> {
  factory _$$AgendaStateImplCopyWith(
          _$AgendaStateImpl value, $Res Function(_$AgendaStateImpl) then) =
      __$$AgendaStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserTennisFieldModel? userTennisFieldSelected});

  @override
  $UserTennisFieldModelCopyWith<$Res>? get userTennisFieldSelected;
}

/// @nodoc
class __$$AgendaStateImplCopyWithImpl<$Res>
    extends _$AgendaStateCopyWithImpl<$Res, _$AgendaStateImpl>
    implements _$$AgendaStateImplCopyWith<$Res> {
  __$$AgendaStateImplCopyWithImpl(
      _$AgendaStateImpl _value, $Res Function(_$AgendaStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userTennisFieldSelected = freezed,
  }) {
    return _then(_$AgendaStateImpl(
      userTennisFieldSelected: freezed == userTennisFieldSelected
          ? _value.userTennisFieldSelected
          : userTennisFieldSelected // ignore: cast_nullable_to_non_nullable
              as UserTennisFieldModel?,
    ));
  }
}

/// @nodoc

class _$AgendaStateImpl extends _AgendaState {
  const _$AgendaStateImpl({this.userTennisFieldSelected}) : super._();

  @override
  final UserTennisFieldModel? userTennisFieldSelected;

  @override
  String toString() {
    return 'AgendaState(userTennisFieldSelected: $userTennisFieldSelected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgendaStateImpl &&
            (identical(
                    other.userTennisFieldSelected, userTennisFieldSelected) ||
                other.userTennisFieldSelected == userTennisFieldSelected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userTennisFieldSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AgendaStateImplCopyWith<_$AgendaStateImpl> get copyWith =>
      __$$AgendaStateImplCopyWithImpl<_$AgendaStateImpl>(this, _$identity);
}

abstract class _AgendaState extends AgendaState {
  const factory _AgendaState(
          {final UserTennisFieldModel? userTennisFieldSelected}) =
      _$AgendaStateImpl;
  const _AgendaState._() : super._();

  @override
  UserTennisFieldModel? get userTennisFieldSelected;
  @override
  @JsonKey(ignore: true)
  _$$AgendaStateImplCopyWith<_$AgendaStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
