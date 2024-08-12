// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixture_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixtureImpl _$$FixtureImplFromJson(Map<String, dynamic> json) =>
    _$FixtureImpl(
      date: json['date'] as String,
      timezone: json['timezone'] as String,
      status: Status.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FixtureImplToJson(_$FixtureImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'timezone': instance.timezone,
      'status': instance.status,
    };
