import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class FormTextField extends StatelessWidget {
  const FormTextField(
      {super.key,
      required this.hint,
      required this.icon,
      required this.obscureText,
      required this.controller,
      this.obscureTextIcon,
      this.toggleObscure});
  final String hint;
  final IconData icon;
  final bool obscureText;
  final TextEditingController controller;
  final IconData? obscureTextIcon;
  final void Function()? toggleObscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      style: const TextStyle(color: AppTheme.onSecondary),
      decoration: InputDecoration(
        suffixIcon: GestureDetector(
          onTap: toggleObscure,
          child: Icon(
            obscureTextIcon,
            color: AppTheme.hintText,
          ),
        ),
        prefixIcon: Icon(icon, color: AppTheme.hintText),
        hintText: hint,
        hintStyle: const TextStyle(color: AppTheme.hintText),
        filled: true,
        fillColor: AppTheme.onPrimary,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: const BorderSide(color: AppTheme.secondary),
        ),
      ),
    );
  }
}
