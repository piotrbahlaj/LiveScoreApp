// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'league_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LeagueImpl _$$LeagueImplFromJson(Map<String, dynamic> json) => _$LeagueImpl(
      name: json['name'] as String,
      country: json['country'] as String,
      season: (json['season'] as num).toInt(),
      round: json['round'] as String,
    );

Map<String, dynamic> _$$LeagueImplToJson(_$LeagueImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'country': instance.country,
      'season': instance.season,
      'round': instance.round,
    };
