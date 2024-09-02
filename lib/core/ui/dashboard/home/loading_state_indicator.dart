import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class LoadingStateIndicator extends StatelessWidget {
  const LoadingStateIndicator(
      {super.key,
      required this.verticalPadding,
      required this.horizontalPadding});
  final double verticalPadding;
  final double horizontalPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: verticalPadding,
        horizontal: horizontalPadding,
      ),
      child: const Center(
        child: CircularProgressIndicator(
          backgroundColor: AppTheme.secondary,
          color: AppTheme.onSecondary,
          strokeWidth: 3,
        ),
      ),
    );
  }
}
