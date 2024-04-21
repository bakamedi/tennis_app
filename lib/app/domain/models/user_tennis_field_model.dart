// To parse this JSON data, do
//
//     final userTennisFieldModel = userTennisFieldModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_tennis_field_model.freezed.dart';
part 'user_tennis_field_model.g.dart';

UserTennisFieldModel userTennisFieldModelFromJson(String str) =>
    UserTennisFieldModel.fromJson(json.decode(str));

String userTennisFieldModelToJson(UserTennisFieldModel data) =>
    json.encode(data.toJson());

@freezed
class UserTennisFieldModel with _$UserTennisFieldModel {
  const factory UserTennisFieldModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "date") String? date,
    @JsonKey(name: "rain_probability") String? rainProbability,
    @JsonKey(name: "title") String? title,
    @JsonKey(name: "path") String? path,
    @JsonKey(name: "name") String? name,
  }) = _UserTennisFieldModel;

  factory UserTennisFieldModel.fromJson(Map<String, dynamic> json) =>
      _$UserTennisFieldModelFromJson(json);
}
