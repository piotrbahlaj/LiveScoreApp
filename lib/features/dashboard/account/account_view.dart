import 'package:flutter/material.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';

class AccountView extends StatelessWidget {
  const AccountView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        leadingWidth: 200,
        toolbarHeight: 100,
        backgroundColor: AppTheme.primary,
        leading: Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            context.localizations.myAccount,
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
