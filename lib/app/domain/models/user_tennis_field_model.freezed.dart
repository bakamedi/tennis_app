// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_tennis_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserTennisFieldModel _$UserTennisFieldModelFromJson(Map<String, dynamic> json) {
  return _UserTennisFieldModel.fromJson(json);
}

/// @nodoc
mixin _$UserTennisFieldModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "rain_probability")
  String? get rainProbability => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "path")
  String? get path => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserTennisFieldModelCopyWith<UserTennisFieldModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserTennisFieldModelCopyWith<$Res> {
  factory $UserTennisFieldModelCopyWith(UserTennisFieldModel value,
          $Res Function(UserTennisFieldModel) then) =
      _$UserTennisFieldModelCopyWithImpl<$Res, UserTennisFieldModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "rain_probability") String? rainProbability,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "path") String? path});
}

/// @nodoc
class _$UserTennisFieldModelCopyWithImpl<$Res,
        $Val extends UserTennisFieldModel>
    implements $UserTennisFieldModelCopyWith<$Res> {
  _$UserTennisFieldModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? rainProbability = freezed,
    Object? title = freezed,
    Object? path = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      rainProbability: freezed == rainProbability
          ? _value.rainProbability
          : rainProbability // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserTennisFieldModelImplCopyWith<$Res>
    implements $UserTennisFieldModelCopyWith<$Res> {
  factory _$$UserTennisFieldModelImplCopyWith(_$UserTennisFieldModelImpl value,
          $Res Function(_$UserTennisFieldModelImpl) then) =
      __$$UserTennisFieldModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "date") String? date,
      @JsonKey(name: "rain_probability") String? rainProbability,
      @JsonKey(name: "title") String? title,
      @JsonKey(name: "path") String? path});
}

/// @nodoc
class __$$UserTennisFieldModelImplCopyWithImpl<$Res>
    extends _$UserTennisFieldModelCopyWithImpl<$Res, _$UserTennisFieldModelImpl>
    implements _$$UserTennisFieldModelImplCopyWith<$Res> {
  __$$UserTennisFieldModelImplCopyWithImpl(_$UserTennisFieldModelImpl _value,
      $Res Function(_$UserTennisFieldModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? date = freezed,
    Object? rainProbability = freezed,
    Object? title = freezed,
    Object? path = freezed,
  }) {
    return _then(_$UserTennisFieldModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      rainProbability: freezed == rainProbability
          ? _value.rainProbability
          : rainProbability // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserTennisFieldModelImpl implements _UserTennisFieldModel {
  const _$UserTennisFieldModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "date") this.date,
      @JsonKey(name: "rain_probability") this.rainProbability,
      @JsonKey(name: "title") this.title,
      @JsonKey(name: "path") this.path});

  factory _$UserTennisFieldModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserTennisFieldModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "date")
  final String? date;
  @override
  @JsonKey(name: "rain_probability")
  final String? rainProbability;
  @override
  @JsonKey(name: "title")
  final String? title;
  @override
  @JsonKey(name: "path")
  final String? path;

  @override
  String toString() {
    return 'UserTennisFieldModel(id: $id, date: $date, rainProbability: $rainProbability, title: $title, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserTennisFieldModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.rainProbability, rainProbability) ||
                other.rainProbability == rainProbability) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, date, rainProbability, title, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserTennisFieldModelImplCopyWith<_$UserTennisFieldModelImpl>
      get copyWith =>
          __$$UserTennisFieldModelImplCopyWithImpl<_$UserTennisFieldModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserTennisFieldModelImplToJson(
      this,
    );
  }
}

abstract class _UserTennisFieldModel implements UserTennisFieldModel {
  const factory _UserTennisFieldModel(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "date") final String? date,
      @JsonKey(name: "rain_probability") final String? rainProbability,
      @JsonKey(name: "title") final String? title,
      @JsonKey(name: "path") final String? path}) = _$UserTennisFieldModelImpl;

  factory _UserTennisFieldModel.fromJson(Map<String, dynamic> json) =
      _$UserTennisFieldModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "date")
  String? get date;
  @override
  @JsonKey(name: "rain_probability")
  String? get rainProbability;
  @override
  @JsonKey(name: "title")
  String? get title;
  @override
  @JsonKey(name: "path")
  String? get path;
  @override
  @JsonKey(ignore: true)
  _$$UserTennisFieldModelImplCopyWith<_$UserTennisFieldModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
