import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/models/status/status_model.dart';

part 'fixture_model.freezed.dart';
part 'fixture_model.g.dart';

@freezed
class Fixture with _$Fixture {
  const factory Fixture({
    required String date,
    required String timezone,
    required Status status,
  }) = _Fixture;

  factory Fixture.fromJson(Map<String, dynamic> json) =>
      _$FixtureFromJson(json);
}
