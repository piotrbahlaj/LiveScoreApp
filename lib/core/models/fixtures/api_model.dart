import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_model.freezed.dart';
part 'api_model.g.dart';

@freezed
class Fixtures with _$Fixtures {
  const factory Fixtures({
    required String country,
    required String league,
    required String homeTeam,
    required String awayTeam,
    required int homeTeamGoals,
    required int awayTeamGoals,
  }) = _Fixtures;

  factory Fixtures.fromJson(Map<String, dynamic> json) =>
      _$FixturesFromJson(json);
}
