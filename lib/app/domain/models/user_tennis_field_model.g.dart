// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tennis_field_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTennisFieldModelImpl _$$UserTennisFieldModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTennisFieldModelImpl(
      id: json['id'] as String?,
      date: json['date'] as String?,
      rainProbability: json['rain_probability'] as String?,
      title: json['title'] as String?,
      path: json['path'] as String?,
      name: json['name'] as String?,
      time: json['time'] as String?,
      createdDate: json['created_date'] as String?,
    );

Map<String, dynamic> _$$UserTennisFieldModelImplToJson(
        _$UserTennisFieldModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'rain_probability': instance.rainProbability,
      'title': instance.title,
      'path': instance.path,
      'name': instance.name,
      'time': instance.time,
      'created_date': instance.createdDate,
    };
