import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/dashboard/account/account_screen.dart';
import 'package:live_score/features/dashboard/favorites/favorites_screen.dart';
import 'package:live_score/features/dashboard/home/ui/home_screen.dart';
import 'package:live_score/features/dashboard/main_layout.dart';

class DashboardModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child(
      '/',
      child: (context) => const MainLayout(),
      children: [
        ChildRoute('/', child: (context) => const HomeScreen()),
        ChildRoute('/favorites', child: (context) => const FavoritesScreen()),
        ChildRoute('/account', child: (context) => const AccountScreen()),
      ],
    );
  }
}
