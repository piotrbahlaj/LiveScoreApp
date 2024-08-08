import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/constants/routes.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(context.localizations.welcome),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Navigate to login screen'),
              onPressed: () => Modular.to.pushNamed(Routes.login),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              child: const Text('Navigate to register screen'),
              onPressed: () => Modular.to.pushNamed(Routes.register),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              child: const Text('Navigate to dashboard'),
              onPressed: () => Modular.to.pushNamed(Routes.home),
            ),
          ],
        ),
      ),
    );
  }
}
