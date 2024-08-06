import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/repositories/auth/auth_repository.dart';
import 'package:live_score/features/auth/login/cubit/login_cubit.dart';
import 'package:live_score/features/auth/login/ui/login_view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
        AuthRepository(
          auth: FirebaseAuth.instance,
        ),
      ),
      child: const LoginView(),
    );
  }
}
