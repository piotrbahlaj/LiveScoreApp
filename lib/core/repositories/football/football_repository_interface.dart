import 'package:live_score/core/models/fixture_response/fixture_response_model.dart';

abstract interface class FootballRepositoryInterface {
  Future<FixtureResponseModel> getFixtures();
}
