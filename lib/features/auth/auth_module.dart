import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/repositories/auth/auth_repository.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';
import 'package:live_score/features/auth/login/ui/login_screen.dart';
import 'package:live_score/features/auth/register/ui/register_screen.dart';

class AuthModule extends Module {
  @override
  void binds(i) {
    i.addLazySingleton<AuthRepositoryInterface>(
      (i) => AuthRepository(auth: FirebaseAuth.instance),
    );
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const RegisterScreen());
    r.child('/login', child: (context) => const LoginScreen());
  }
}
