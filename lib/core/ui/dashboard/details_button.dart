import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        backgroundColor: AppTheme.secondary,
        fixedSize: const Size(300, 30),
      ),
      onPressed: () {},
      child: const Text(
        'Details',
        style: TextStyle(
          color: AppTheme.onSecondary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
