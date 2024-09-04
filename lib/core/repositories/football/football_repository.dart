import 'package:live_score/core/models/fixtures_endpoint/fixtures_endpoint_model.dart';
import 'package:live_score/core/repositories/football/football_repository_interface.dart';
import 'package:live_score/services/api_service.dart';

class FootballRepository implements FootballRepositoryInterface {
  FootballRepository(this.service);
  final ApiService service;

  @override
  Future<FixturesEndpointModel> getFixtures({required String date}) async {
    try {
      final response = await service.getFixtures(date);
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<FixturesEndpointModel> getLiveFixtures({required String live}) async {
    try {
      final response = await service.getLiveFixtures(live);
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }

  @override
  Future<FixturesEndpointModel> getMatchDetails({required int id}) async {
    try {
      final response = await service.getMatchDetails(id);
      return response;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
