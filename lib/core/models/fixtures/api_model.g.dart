// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FixturesImpl _$$FixturesImplFromJson(Map<String, dynamic> json) =>
    _$FixturesImpl(
      country: json['country'] as String,
      league: json['league'] as String,
      homeTeam: json['homeTeam'] as String,
      awayTeam: json['awayTeam'] as String,
      homeTeamGoals: (json['homeTeamGoals'] as num).toInt(),
      awayTeamGoals: (json['awayTeamGoals'] as num).toInt(),
    );

Map<String, dynamic> _$$FixturesImplToJson(_$FixturesImpl instance) =>
    <String, dynamic>{
      'country': instance.country,
      'league': instance.league,
      'homeTeam': instance.homeTeam,
      'awayTeam': instance.awayTeam,
      'homeTeamGoals': instance.homeTeamGoals,
      'awayTeamGoals': instance.awayTeamGoals,
    };
