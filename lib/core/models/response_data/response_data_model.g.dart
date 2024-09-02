// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDataImpl _$$ResponseDataImplFromJson(Map<String, dynamic> json) =>
    _$ResponseDataImpl(
      league: League.fromJson(json['league'] as Map<String, dynamic>),
      teams: Teams.fromJson(json['teams'] as Map<String, dynamic>),
      goals: Goals.fromJson(json['goals'] as Map<String, dynamic>),
      fixture: Fixture.fromJson(json['fixture'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDataImplToJson(_$ResponseDataImpl instance) =>
    <String, dynamic>{
      'league': instance.league,
      'teams': instance.teams,
      'goals': instance.goals,
      'fixture': instance.fixture,
    };
