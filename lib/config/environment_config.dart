import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:live_score/config/environment_config_interface.dart';

class EnvironmentConfig implements EnvironmentConfigInterface {
  @override
  String get baseUrl => dotenv.get('BASE_URL');

  @override
  String get apiKey => dotenv.get('API_KEY');
}
