// To parse this JSON data, do
//
//     final tennisFieldModel = tennisFieldModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'field_tennis_model.freezed.dart';
part 'field_tennis_model.g.dart';

TennisFieldModel tennisFieldModelFromJson(String str) =>
    TennisFieldModel.fromJson(json.decode(str));

String tennisFieldModelToJson(TennisFieldModel data) =>
    json.encode(data.toJson());

@freezed
class TennisFieldModel with _$TennisFieldModel {
  const factory TennisFieldModel({
    @JsonKey(name: "fields") List<Field>? fields,
  }) = _TennisFieldModel;

  factory TennisFieldModel.fromJson(Map<String, dynamic> json) =>
      _$TennisFieldModelFromJson(json);
}

@freezed
class Field with _$Field {
  const factory Field({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "dates") List<Date>? dates,
  }) = _Field;

  factory Field.fromJson(Map<String, dynamic> json) => _$FieldFromJson(json);
}

@freezed
class Date with _$Date {
  const factory Date({
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "rain_probability") String? rainProbability,
    @JsonKey(name: "available") bool? available,
  }) = _Date;

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);
}
