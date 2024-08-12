// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixtures_endpoint_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixturesEndpointModelImpl _$$FixturesEndpointModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FixturesEndpointModelImpl(
      response: (json['response'] as List<dynamic>)
          .map((e) => ResponseDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FixturesEndpointModelImplToJson(
        _$FixturesEndpointModelImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
    };
