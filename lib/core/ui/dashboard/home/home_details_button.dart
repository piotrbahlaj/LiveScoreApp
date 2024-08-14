import 'package:flutter/material.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
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
        fixedSize: const Size(300, 20),
        maximumSize: const Size(300, 40),
      ),
      onPressed: () {},
      child: Text(
        context.localizations.details,
        style: const TextStyle(
          color: AppTheme.onSecondary,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
