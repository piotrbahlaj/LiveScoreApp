import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_team_model.freezed.dart';
part 'home_team_model.g.dart';

@freezed
class Home with _$Home {
  const factory Home({
    required String name,
    required bool? winner,
    required String? logo,
  }) = _Home;

  factory Home.fromJson(Map<String, dynamic> json) => _$HomeFromJson(json);
}
