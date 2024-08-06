import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/auth/login/cubit/login_cubit.dart';
import 'package:live_score/features/auth/login/ui/login_view.dart';
import 'package:live_score/features/auth/shared/cubit/obscure_text_cubit.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginCubit>(
          create: (context) => Modular.get<LoginCubit>(),
        ),
        BlocProvider<ObscureTextCubit>(
          create: (context) => ObscureTextCubit(),
        ),
      ],
      child: const LoginView(),
    );
  }
}
