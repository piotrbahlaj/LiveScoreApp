import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/config/environment_config.dart';
import 'package:live_score/config/environment_config_interface.dart';
import 'package:live_score/core/network/api_client.dart';
import 'package:live_score/features/auth/auth_module.dart';
import 'package:live_score/features/dashboard/dashboard_module.dart';
import 'package:live_score/services/api_service.dart';
import 'package:live_score/start_screen.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<EnvironmentConfigInterface>(EnvironmentConfig.new);
    i.addLazySingleton(ApiClient.new);
    i.addLazySingleton(ApiService.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const StartScreen());
    r.module(AuthModule.auth, module: AuthModule());
    r.module(DashboardModule.dashboard, module: DashboardModule());
  }
}
