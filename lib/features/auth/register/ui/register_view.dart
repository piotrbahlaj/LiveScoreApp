import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart'
    hide ModularWatchExtension;
import 'package:live_score/core/constants/routes.dart';
import 'package:live_score/core/exceptions/auth_error.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/confirm_button.dart';
import 'package:live_score/core/ui/form_text_field.dart';
import 'package:live_score/features/auth/register/cubit/register_cubit.dart';
import 'package:live_score/features/auth/shared/cubit/obscure_text_cubit.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});
  RegisterCubit _cubit(BuildContext context) => context.read<RegisterCubit>();

  @override
  Widget build(BuildContext context) {
    final usernameController = TextEditingController();
    final emailController = TextEditingController();
    final passwordController = TextEditingController();
    final confirmPasswordController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(
          color: AppTheme.onSecondary,
        ),
        backgroundColor: AppTheme.transparent,
        elevation: 0,
        title: Text(
          context.localizations.registerTitle,
          style: const TextStyle(
            color: AppTheme.onSecondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 100,
      ),
      body: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) => onRegisterStateChanged(context, state),
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FormTextField(
                  hint: context.localizations.username,
                  icon: Icons.person,
                  obscureText: false,
                  controller: usernameController,
                ),
                const SizedBox(height: 30),
                FormTextField(
                  hint: context.localizations.email,
                  icon: Icons.email,
                  obscureText: false,
                  controller: emailController,
                ),
                const SizedBox(height: 30),
                BlocBuilder<ObscureTextCubit, bool>(
                  builder: (context, state) {
                    final cubit = context.read<ObscureTextCubit>();
                    return Column(
                      children: [
                        FormTextField(
                          hint: context.localizations.password,
                          icon: Icons.lock,
                          obscureText: cubit.state,
                          controller: passwordController,
                          obscureTextIcon: state == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                          toggleObscure: cubit.toggleObscureText,
                        ),
                        const SizedBox(height: 30),
                        FormTextField(
                          hint: context.localizations.confirmPassword,
                          icon: Icons.lock,
                          obscureText: cubit.state,
                          controller: confirmPasswordController,
                          obscureTextIcon: state == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                          toggleObscure: cubit.toggleObscureText,
                        ),
                      ],
                    );
                  },
                ),
                const SizedBox(height: 40),
                if (state is Loading)
                  const Center(child: CircularProgressIndicator())
                else
                  ConfirmButton(
                    onPressed: () {
                      final username = usernameController.text;
                      final email = emailController.text;
                      final password = passwordController.text;
                      final confirmPassword = confirmPasswordController.text;
                      _cubit(context).register(
                        username,
                        email,
                        password,
                        confirmPassword,
                      );
                      FocusScope.of(context).unfocus();
                    },
                    text: context.localizations.register,
                  ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.localizations.alreadyHaveAnAccount,
                      style: const TextStyle(
                        color: AppTheme.infoText,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Modular.to.pushNamed(Routes.login),
                      child: Text(
                        context.localizations.logIn,
                        style: const TextStyle(
                          color: AppTheme.secondary,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  void onRegisterStateChanged(BuildContext context, RegisterState state) {
    state.map(
      initial: (_) {},
      loading: (_) {},
      success: (state) {
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              context.localizations.registerSuccessful,
            ),
          ),
        );
        Modular.to.pushNamed(Routes.login);
      },
      authError: (state) {
        ScaffoldMessenger.of(context).clearSnackBars();
        final message = AuthError.fromFirebaseError(state.error).message;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      },
      validationError: (state) {
        ScaffoldMessenger.of(context).clearSnackBars();
        final message = AuthError.fromValidationError(state.type).message;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message)),
        );
      },
    );
  }
}
