import 'package:live_score/core/models/fixtures_endpoint/fixtures_endpoint_model.dart';

abstract interface class FootballRepositoryInterface {
  Future<FixturesEndpointModel> getFixtures({required String date});
}
