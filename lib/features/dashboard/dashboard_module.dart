import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/config/environment_config.dart';
import 'package:live_score/config/environment_config_interface.dart';
import 'package:live_score/core/network/api_client.dart';
import 'package:live_score/core/repositories/auth/auth_repository.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';
import 'package:live_score/core/repositories/football/football_repository.dart';
import 'package:live_score/core/repositories/football/football_repository_interface.dart';
import 'package:live_score/features/dashboard/account/account_screen.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:live_score/features/dashboard/dashboard_layout.dart';
import 'package:live_score/features/dashboard/favorites/favorites_screen.dart';
import 'package:live_score/features/dashboard/home/home_screen.dart';
import 'package:live_score/services/api_service.dart';

class DashboardModule extends Module {
  static const dashboard = '/dashboard';
  @override
  void binds(i) {
    i.addLazySingleton<EnvironmentConfigInterface>(EnvironmentConfig.new);
    i.addLazySingleton(ApiClient.new);
    i.addLazySingleton(ApiService.new);
    i.addLazySingleton<DashboardCubit>(DashboardCubit.new);
    i.addLazySingleton<FootballRepositoryInterface>(
      FootballRepository.new,
    );
    i.addLazySingleton<AuthRepositoryInterface>(AuthRepository.new);
    i.addLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const DashboardLayout(),
      children: [
        ChildRoute(HomeScreen.home, child: (context) => const HomeScreen()),
        ChildRoute(FavoritesScreen.favorites,
            child: (context) => const FavoritesScreen()),
        ChildRoute(AccountScreen.account,
            child: (context) => const AccountScreen()),
      ],
    );
  }
}
