import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/models/goals/goals_model.dart';
import 'package:live_score/core/models/league/league_model.dart';
import 'package:live_score/core/models/teams/teams_model.dart';

part 'fixtures_data_model.freezed.dart';
part 'fixtures_data_model.g.dart';

@freezed
class FixturesData with _$FixturesData {
  const factory FixturesData({
    required League league,
    required Teams teams,
    required Goals goals,
  }) = _FixturesData;

  factory FixturesData.fromJson(Map<String, dynamic> json) =>
      _$FixturesDataFromJson(json);
}
