import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/repositories/auth/auth_repository.dart';
import 'package:live_score/features/auth/register/cubit/register_cubit.dart';
import 'package:live_score/features/auth/register/ui/register_view.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RegisterCubit(
        AuthRepository(
          auth: FirebaseAuth.instance,
        ),
      ),
      child: const RegisterView(),
    );
  }
}
