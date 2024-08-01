import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/confirm_button.dart';
import 'package:live_score/core/ui/form_text_field.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        backgroundColor: AppTheme.transparent,
        elevation: 0,
        title: const Text(
          'Enter your account details',
          style: TextStyle(
            color: AppTheme.onSecondary,
            fontWeight: FontWeight.bold,
          ),
        ),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const FormTextField(
              hint: 'Username',
              icon: Icons.person,
              obscureText: false,
            ),
            const SizedBox(height: 30),
            const FormTextField(
              hint: 'Email',
              icon: Icons.email,
              obscureText: false,
            ),
            const SizedBox(height: 30),
            const FormTextField(
              hint: 'Password',
              icon: Icons.lock,
              obscureText: true,
            ),
            const SizedBox(height: 30),
            const FormTextField(
              hint: 'Confirm Password',
              icon: Icons.lock,
              obscureText: true,
            ),
            const SizedBox(height: 40),
            ConfirmButton(
              onPressed: () {},
              text: 'Register',
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Already have an account?',
                  style: TextStyle(color: AppTheme.infoText),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      color: AppTheme.secondary,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
