import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 18,
          color: AppTheme.onSecondary,
        ),
      ),
    );
  }
}
