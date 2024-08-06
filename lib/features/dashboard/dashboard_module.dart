import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/dashboard/ui/dashboard_screen.dart';

class DashboardModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const DashboardScreen());
  }
}
