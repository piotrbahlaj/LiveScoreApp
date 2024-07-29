import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/models/fixtures_data/fixtures_data_model.dart';

part 'fixture_response_model.freezed.dart';
part 'fixture_response_model.g.dart';

@freezed
class FixtureResponseModel with _$FixtureResponseModel {
  factory FixtureResponseModel({
    required List<FixturesData> response,
  }) = _FixtureResponseModel;

  factory FixtureResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FixtureResponseModelFromJson(json);
}
