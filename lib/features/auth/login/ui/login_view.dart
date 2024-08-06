import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:live_score/core/constants/asset_images.dart';
import 'package:live_score/core/constants/routes.dart';
import 'package:live_score/core/exceptions/auth_error.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/confirm_button.dart';
import 'package:live_score/core/ui/form_text_field.dart';
import 'package:live_score/features/auth/login/cubit/login_cubit.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  LoginCubit _cubit(BuildContext context) => context.read<LoginCubit>();

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(
          color: AppTheme.onSecondary,
        ),
        backgroundColor: AppTheme.transparent,
        elevation: 0,
        title: Text(
          context.localizations.welcome,
          style: const TextStyle(
            color: AppTheme.onSecondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 100,
      ),
      body: BlocConsumer<LoginCubit, LoginState>(
        listener: (context, state) {
          state.map(
            initial: (_) {},
            loading: (_) {},
            error: (state) {
              ScaffoldMessenger.of(context).clearSnackBars();
              final message = AuthError.fromFirebaseError(state.error).message;
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(message)),
              );
            },
            success: (state) {
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    context.localizations.loginSuccessful,
                  ),
                ),
              );
              Modular.to.pushNamed(Routes.dashboard);
            },
          );
        },
        builder: (context, state) {
          return BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FormTextField(
                      hint: context.localizations.email,
                      icon: Icons.email,
                      obscureText: false,
                      controller: emailController,
                    ),
                    const SizedBox(height: 30),
                    FormTextField(
                      hint: context.localizations.password,
                      icon: Icons.lock,
                      obscureText: true,
                      controller: passwordController,
                    ),
                    const SizedBox(height: 40),
                    if (state is Loading)
                      const Center(child: CircularProgressIndicator())
                    else
                      ConfirmButton(
                        onPressed: () {
                          final email = emailController.text;
                          final password = passwordController.text;
                          _cubit(context).login(
                            email,
                            password,
                          );
                        },
                        text: context.localizations.logIn,
                      ),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          context.localizations.doNotHaveAnAccount,
                          style: const TextStyle(
                            color: AppTheme.infoText,
                          ),
                        ),
                        TextButton(
                          onPressed: () =>
                              Modular.to.pushNamed(Routes.register),
                          child: Text(
                            context.localizations.signUp,
                            style: const TextStyle(
                              color: AppTheme.secondary,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Image.asset(AssetImages.footballSplash),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
