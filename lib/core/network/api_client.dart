import 'package:dio/dio.dart';
import 'package:live_score/config/environment_config_interface.dart';

class ApiClient {
  EnvironmentConfigInterface environmentConfigInterface;
  ApiClient({
    required this.environmentConfigInterface,
  }) {
    dio = createDio();
  }
  late Dio dio;

  Dio createDio() {
    return Dio(
      BaseOptions(
        baseUrl: environmentConfigInterface.baseUrl,
        headers: {
          'x-apisports-key': environmentConfigInterface.apiKey,
        },
      ),
    );
  }
}
