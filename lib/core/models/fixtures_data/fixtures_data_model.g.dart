// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixtures_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixturesDataImpl _$$FixturesDataImplFromJson(Map<String, dynamic> json) =>
    _$FixturesDataImpl(
      league: League.fromJson(json['league'] as Map<String, dynamic>),
      teams: Teams.fromJson(json['teams'] as Map<String, dynamic>),
      goals: Goals.fromJson(json['goals'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FixturesDataImplToJson(_$FixturesDataImpl instance) =>
    <String, dynamic>{
      'league': instance.league,
      'teams': instance.teams,
      'goals': instance.goals,
    };
