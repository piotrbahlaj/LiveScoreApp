import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/repositories/auth/auth_repository.dart';
import 'package:live_score/core/repositories/auth/auth_repository_interface.dart';
import 'package:live_score/features/auth/login/cubit/login_cubit.dart';
import 'package:live_score/features/auth/login/ui/login_screen.dart';
import 'package:live_score/features/auth/register/cubit/register_cubit.dart';
import 'package:live_score/features/auth/register/ui/register_screen.dart';

class AuthModule extends Module {
  static const auth = '/auth';
  @override
  void binds(i) {
    i.addLazySingleton<FirebaseAuth>(() => FirebaseAuth.instance);
    i.addLazySingleton<AuthRepositoryInterface>(
      AuthRepository.new,
    );
    i.addLazySingleton<RegisterCubit>(RegisterCubit.new);
    i.addLazySingleton<LoginCubit>(
      LoginCubit.new,
      config: BindConfig(
        onDispose: (cubit) => cubit.close(),
      ),
    );
  }

  @override
  void routes(r) {
    r.child(RegisterScreen.register,
        child: (context) => const RegisterScreen());
    r.child(LoginScreen.login, child: (context) => const LoginScreen());
  }
}
