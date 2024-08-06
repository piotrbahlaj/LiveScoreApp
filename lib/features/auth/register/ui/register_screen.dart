import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/features/auth/register/cubit/register_cubit.dart';
import 'package:live_score/features/auth/register/ui/register_view.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterCubit>(
      create: (context) => Modular.get<RegisterCubit>(),
      child: const RegisterView(),
    );
  }
}
