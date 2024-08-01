import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/config/environment_config.dart';
import 'package:live_score/core/config/environment_config_interface.dart';
import 'package:live_score/core/network/api_client.dart';
import 'package:live_score/core/services/api_service.dart';
import 'package:live_score/features/auth/register/register_screen.dart';
import 'package:live_score/features/dashboard/dashboard_screen.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<EnvironmentConfigInterface>(EnvironmentConfig.new);
    i.addLazySingleton(ApiClient.new);
    i.addLazySingleton(ApiService.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const RegisterScreen());
    r.child('/dashboard', child: (context) => const DashboardScreen());
  }
}
