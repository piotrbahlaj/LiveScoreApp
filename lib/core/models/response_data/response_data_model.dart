import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/models/fixture/fixture_model.dart';
import 'package:live_score/core/models/goals/goals_model.dart';
import 'package:live_score/core/models/league/league_model.dart';
import 'package:live_score/core/models/teams/teams_model.dart';

part 'response_data_model.freezed.dart';
part 'response_data_model.g.dart';

@freezed
class ResponseDataModel with _$ResponseDataModel {
  const factory ResponseDataModel({
    required League league,
    required Teams teams,
    required Goals goals,
    required Fixture fixture,
  }) = _ResponseData;

  factory ResponseDataModel.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataModelFromJson(json);
}
