import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/models/away/away_team_model.dart';
import 'package:live_score/core/models/home/home_team_model.dart';

part 'teams_model.freezed.dart';
part 'teams_model.g.dart';

@freezed
class Teams with _$Teams {
  const factory Teams({
    required Home home,
    required Away away,
  }) = _Teams;

  factory Teams.fromJson(Map<String, dynamic> json) => _$TeamsFromJson(json);
}
