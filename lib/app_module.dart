import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/dashboard/dashboard_screen.dart';
import 'package:live_score/features/home/home_screen.dart';

class AppModule extends Module {
  @override
  void binds(i) {}
  @override
  void routes(r) {
    r.child('/', child: (context) => const HomeScreen());
    r.child('/dashboard', child: (context) => const DashboardScreen());
  }
}
