import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/auth/register/cubit/register_cubit.dart';
import 'package:live_score/features/auth/register/ui/register_view.dart';
import 'package:live_score/features/auth/shared/cubit/obscure_text_cubit.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});
  static const register = '/register';

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<RegisterCubit>(
          create: (context) => Modular.get<RegisterCubit>(),
        ),
        BlocProvider(
          create: (context) => ObscureTextCubit(),
        ),
      ],
      child: const RegisterView(),
    );
  }
}
