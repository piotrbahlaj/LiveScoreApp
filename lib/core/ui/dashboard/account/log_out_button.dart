import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key, required this.onPressed});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: AppTheme.secondary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: const Text(
            'Log Out',
            style: TextStyle(color: AppTheme.onSecondary, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
