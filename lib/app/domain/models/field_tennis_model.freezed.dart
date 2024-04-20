// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_tennis_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TennisFieldModel _$TennisFieldModelFromJson(Map<String, dynamic> json) {
  return _TennisFieldModel.fromJson(json);
}

/// @nodoc
mixin _$TennisFieldModel {
  @JsonKey(name: "fields")
  List<Field>? get fields => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TennisFieldModelCopyWith<TennisFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TennisFieldModelCopyWith<$Res> {
  factory $TennisFieldModelCopyWith(
          TennisFieldModel value, $Res Function(TennisFieldModel) then) =
      _$TennisFieldModelCopyWithImpl<$Res, TennisFieldModel>;
  @useResult
  $Res call({@JsonKey(name: "fields") List<Field>? fields});
}

/// @nodoc
class _$TennisFieldModelCopyWithImpl<$Res, $Val extends TennisFieldModel>
    implements $TennisFieldModelCopyWith<$Res> {
  _$TennisFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TennisFieldModelImplCopyWith<$Res>
    implements $TennisFieldModelCopyWith<$Res> {
  factory _$$TennisFieldModelImplCopyWith(_$TennisFieldModelImpl value,
          $Res Function(_$TennisFieldModelImpl) then) =
      __$$TennisFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "fields") List<Field>? fields});
}

/// @nodoc
class __$$TennisFieldModelImplCopyWithImpl<$Res>
    extends _$TennisFieldModelCopyWithImpl<$Res, _$TennisFieldModelImpl>
    implements _$$TennisFieldModelImplCopyWith<$Res> {
  __$$TennisFieldModelImplCopyWithImpl(_$TennisFieldModelImpl _value,
      $Res Function(_$TennisFieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fields = freezed,
  }) {
    return _then(_$TennisFieldModelImpl(
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TennisFieldModelImpl implements _TennisFieldModel {
  const _$TennisFieldModelImpl(
      {@JsonKey(name: "fields") final List<Field>? fields})
      : _fields = fields;

  factory _$TennisFieldModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TennisFieldModelImplFromJson(json);

  final List<Field>? _fields;
  @override
  @JsonKey(name: "fields")
  List<Field>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TennisFieldModel(fields: $fields)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TennisFieldModelImpl &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TennisFieldModelImplCopyWith<_$TennisFieldModelImpl> get copyWith =>
      __$$TennisFieldModelImplCopyWithImpl<_$TennisFieldModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TennisFieldModelImplToJson(
      this,
    );
  }
}

abstract class _TennisFieldModel implements TennisFieldModel {
  const factory _TennisFieldModel(
          {@JsonKey(name: "fields") final List<Field>? fields}) =
      _$TennisFieldModelImpl;

  factory _TennisFieldModel.fromJson(Map<String, dynamic> json) =
      _$TennisFieldModelImpl.fromJson;

  @override
  @JsonKey(name: "fields")
  List<Field>? get fields;
  @override
  @JsonKey(ignore: true)
  _$$TennisFieldModelImplCopyWith<_$TennisFieldModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Field _$FieldFromJson(Map<String, dynamic> json) {
  return _Field.fromJson(json);
}

/// @nodoc
mixin _$Field {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: "dates")
  List<Date>? get dates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FieldCopyWith<Field> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<$Res> {
  factory $FieldCopyWith(Field value, $Res Function(Field) then) =
      _$FieldCopyWithImpl<$Res, Field>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "dates") List<Date>? dates});
}

/// @nodoc
class _$FieldCopyWithImpl<$Res, $Val extends Field>
    implements $FieldCopyWith<$Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
    Object? path = freezed,
    Object? dates = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<Date>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FieldImplCopyWith<$Res> implements $FieldCopyWith<$Res> {
  factory _$$FieldImplCopyWith(
          _$FieldImpl value, $Res Function(_$FieldImpl) then) =
      __$$FieldImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "path") String? path,
      @JsonKey(name: "dates") List<Date>? dates});
}

/// @nodoc
class __$$FieldImplCopyWithImpl<$Res>
    extends _$FieldCopyWithImpl<$Res, _$FieldImpl>
    implements _$$FieldImplCopyWith<$Res> {
  __$$FieldImplCopyWithImpl(
      _$FieldImpl _value, $Res Function(_$FieldImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? state = freezed,
    Object? path = freezed,
    Object? dates = freezed,
  }) {
    return _then(_$FieldImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
      dates: freezed == dates
          ? _value._dates
          : dates // ignore: cast_nullable_to_non_nullable
              as List<Date>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FieldImpl implements _Field {
  const _$FieldImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "path") this.path,
      @JsonKey(name: "dates") final List<Date>? dates})
      : _dates = dates;

  factory _$FieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$FieldImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "path")
  final String? path;
  final List<Date>? _dates;
  @override
  @JsonKey(name: "dates")
  List<Date>? get dates {
    final value = _dates;
    if (value == null) return null;
    if (_dates is EqualUnmodifiableListView) return _dates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Field(id: $id, state: $state, path: $path, dates: $dates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.path, path) || other.path == path) &&
            const DeepCollectionEquality().equals(other._dates, _dates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, state, path,
      const DeepCollectionEquality().hash(_dates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      __$$FieldImplCopyWithImpl<_$FieldImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FieldImplToJson(
      this,
    );
  }
}

abstract class _Field implements Field {
  const factory _Field(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "state") final String? state,
      @JsonKey(name: "path") final String? path,
      @JsonKey(name: "dates") final List<Date>? dates}) = _$FieldImpl;

  factory _Field.fromJson(Map<String, dynamic> json) = _$FieldImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(name: "dates")
  List<Date>? get dates;
  @override
  @JsonKey(ignore: true)
  _$$FieldImplCopyWith<_$FieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Date _$DateFromJson(Map<String, dynamic> json) {
  return _Date.fromJson(json);
}

/// @nodoc
mixin _$Date {
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "rain_probability")
  String? get rainProbability => throw _privateConstructorUsedError;
  @JsonKey(name: "available")
  bool? get available => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res, Date>;
  @useResult
  $Res call(
      {@JsonKey(name: "date") String? date,
      @JsonKey(name: "rain_probability") String? rainProbability,
      @JsonKey(name: "available") bool? available});
}

/// @nodoc
class _$DateCopyWithImpl<$Res, $Val extends Date>
    implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? rainProbability = freezed,
    Object? available = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      rainProbability: freezed == rainProbability
          ? _value.rainProbability
          : rainProbability // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DateImplCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$$DateImplCopyWith(
          _$DateImpl value, $Res Function(_$DateImpl) then) =
      __$$DateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "date") String? date,
      @JsonKey(name: "rain_probability") String? rainProbability,
      @JsonKey(name: "available") bool? available});
}

/// @nodoc
class __$$DateImplCopyWithImpl<$Res>
    extends _$DateCopyWithImpl<$Res, _$DateImpl>
    implements _$$DateImplCopyWith<$Res> {
  __$$DateImplCopyWithImpl(_$DateImpl _value, $Res Function(_$DateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? rainProbability = freezed,
    Object? available = freezed,
  }) {
    return _then(_$DateImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      rainProbability: freezed == rainProbability
          ? _value.rainProbability
          : rainProbability // ignore: cast_nullable_to_non_nullable
              as String?,
      available: freezed == available
          ? _value.available
          : available // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DateImpl implements _Date {
  const _$DateImpl(
      {@JsonKey(name: "date") this.date,
      @JsonKey(name: "rain_probability") this.rainProbability,
      @JsonKey(name: "available") this.available});

  factory _$DateImpl.fromJson(Map<String, dynamic> json) =>
      _$$DateImplFromJson(json);

  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "rain_probability")
  final String? rainProbability;
  @override
  @JsonKey(name: "available")
  final bool? available;

  @override
  String toString() {
    return 'Date(date: $date, rainProbability: $rainProbability, available: $available)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.rainProbability, rainProbability) ||
                other.rainProbability == rainProbability) &&
            (identical(other.available, available) ||
                other.available == available));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, date, rainProbability, available);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      __$$DateImplCopyWithImpl<_$DateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DateImplToJson(
      this,
    );
  }
}

abstract class _Date implements Date {
  const factory _Date(
      {@JsonKey(name: "date") final String? date,
      @JsonKey(name: "rain_probability") final String? rainProbability,
      @JsonKey(name: "available") final bool? available}) = _$DateImpl;

  factory _Date.fromJson(Map<String, dynamic> json) = _$DateImpl.fromJson;

  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "rain_probability")
  String? get rainProbability;
  @override
  @JsonKey(name: "available")
  bool? get available;
  @override
  @JsonKey(ignore: true)
  _$$DateImplCopyWith<_$DateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
