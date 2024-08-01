import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/auth/login/login_screen.dart';
import 'package:live_score/features/auth/register/register_screen.dart';

class AuthModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const RegisterScreen());
    r.child('/login', child: (context) => const LoginScreen());
  }
}
