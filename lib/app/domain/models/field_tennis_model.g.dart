// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'field_tennis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TennisFieldModelImpl _$$TennisFieldModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TennisFieldModelImpl(
      fields: (json['fields'] as List<dynamic>?)
          ?.map((e) => Field.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TennisFieldModelImplToJson(
        _$TennisFieldModelImpl instance) =>
    <String, dynamic>{
      'fields': instance.fields,
    };

_$FieldImpl _$$FieldImplFromJson(Map<String, dynamic> json) => _$FieldImpl(
      id: json['id'] as String?,
      state: json['state'] as String?,
      name: json['name'] as String?,
      path: json['path'] as String?,
      dates: (json['dates'] as List<dynamic>?)
          ?.map((e) => Date.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FieldImplToJson(_$FieldImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'state': instance.state,
      'name': instance.name,
      'path': instance.path,
      'dates': instance.dates,
    };

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) => _$DateImpl(
      date: json['date'] as String?,
      rainProbability: json['rain_probability'] as String?,
      available: json['available'] as bool?,
    );

Map<String, dynamic> _$$DateImplToJson(_$DateImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'rain_probability': instance.rainProbability,
      'available': instance.available,
    };
