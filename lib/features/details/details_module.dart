import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/app_database.dart';
import 'package:live_score/config/environment_config.dart';
import 'package:live_score/config/environment_config_interface.dart';
import 'package:live_score/core/network/api_client.dart';
import 'package:live_score/core/repositories/football/football_repository.dart';
import 'package:live_score/core/repositories/football/football_repository_interface.dart';
import 'package:live_score/features/details/ui/cubit/details_cubit.dart';
import 'package:live_score/features/details/ui/details_screen.dart';
import 'package:live_score/services/api_service.dart';

class DetailsModule extends Module {
  static const details = '/details';
  @override
  void binds(i) {
    i.addLazySingleton<EnvironmentConfigInterface>(EnvironmentConfig.new);
    i.addLazySingleton(ApiClient.new);
    i.addLazySingleton(ApiService.new);
    i.addLazySingleton<FootballRepositoryInterface>(
      FootballRepository.new,
    );
    i.addLazySingleton<AppDatabase>(AppDatabase.new);
    i.addLazySingleton<DetailsCubit>(DetailsCubit.new);
  }

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const DetailsScreen(),
    );
  }
}
