import 'package:live_score/core/models/fixture_response/fixture_response_model.dart';
import 'package:live_score/core/repositories/football/football_repository_interface.dart';
import 'package:live_score/services/api_service.dart';

class FootballRepository implements FootballRepositoryInterface {
  FootballRepository(this.service);
  final ApiService service;

  @override
  Future<FixtureResponseModel> getFixtures() async {
    try {
      final response = await service.getFixtures();
      return response;
    } catch (e) {
      throw Exception(e);
    }
  }
}
