import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:live_score/core/models/response_data/response_data_model.dart';

part 'fixtures_endpoint_model.freezed.dart';
part 'fixtures_endpoint_model.g.dart';

@freezed
class FixturesEndpointModel with _$FixturesEndpointModel {
  factory FixturesEndpointModel({
    required List<ResponseDataModel> response,
  }) = _FixturesEndpointModel;

  factory FixturesEndpointModel.fromJson(Map<String, dynamic> json) =>
      _$FixturesEndpointModelFromJson(json);
}
