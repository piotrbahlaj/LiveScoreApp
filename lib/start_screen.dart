import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/constants/asset_images.dart';
import 'package:live_score/core/constants/routes.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppTheme.primary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppTheme.transparent,
        elevation: 0,
        toolbarHeight: 100,
        title: Center(
          child: Text(
            context.localizations.welcome,
            style: const TextStyle(
              color: AppTheme.onSecondary,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Image.asset(AssetImages.footballSplash),
            ),
            const SizedBox(height: 20),
            Text(
              context.localizations.logInOrRegister,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: AppTheme.onSecondary,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 40),
            TextButton(
              onPressed: () => Modular.to.pushNamed(Routes.login),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: AppTheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                context.localizations.logIn,
                style: const TextStyle(
                  color: AppTheme.onSecondary,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () => Modular.to.pushNamed(Routes.register),
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 15),
                backgroundColor: AppTheme.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text(
                context.localizations.signUp,
                style: const TextStyle(
                  color: AppTheme.onSecondary,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
