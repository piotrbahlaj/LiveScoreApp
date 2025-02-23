import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_model.freezed.dart';
part 'league_model.g.dart';

@freezed
class League with _$League {
  const factory League({
    required String name,
    required String country,
    required String round,
    required String? logo,
  }) = _League;

  factory League.fromJson(Map<String, dynamic> json) => _$LeagueFromJson(json);
}
