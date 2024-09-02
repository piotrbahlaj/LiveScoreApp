import 'package:flutter/material.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        leadingWidth: 150,
        toolbarHeight: 100,
        backgroundColor: AppTheme.primary,
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            context.localizations.favorites,
            style: const TextStyle(
              color: AppTheme.onSecondary,
              fontSize: 23,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: const Column(),
    );
  }
}
