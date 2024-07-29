import 'package:freezed_annotation/freezed_annotation.dart';

part 'goals_model.freezed.dart';
part 'goals_model.g.dart';

@freezed
class Goals with _$Goals {
  const factory Goals({
    required int home,
    required int away,
  }) = _Goals;

  factory Goals.fromJson(Map<String, dynamic> json) => _$GoalsFromJson(json);
}
