import 'package:dio/dio.dart';
import 'package:live_score/core/models/fixtures/api_model.dart';
import 'package:live_score/core/network/api_client.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(ApiClient apiClient, {String? baseUrl}) =>
      _ApiService(apiClient.dio);

  @GET('/fixtures')
  Future<List<Fixtures>> getFixtures();
}
