// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixture_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixtureResponseModelImpl _$$FixtureResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FixtureResponseModelImpl(
      response: (json['response'] as List<dynamic>)
          .map((e) => FixturesData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FixtureResponseModelImplToJson(
        _$FixtureResponseModelImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
