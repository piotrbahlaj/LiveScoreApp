import 'package:freezed_annotation/freezed_annotation.dart';

part 'away_team_model.freezed.dart';
part 'away_team_model.g.dart';

@freezed
class Away with _$Away {
  const factory Away({
    required String name,
    required bool? winner,
    required String? logo,
  }) = _Away;

  factory Away.fromJson(Map<String, dynamic> json) => _$AwayFromJson(json);
}
