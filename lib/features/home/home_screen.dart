import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            const SizedBox(height: 50),
            ElevatedButton(
              child: const Text('Navigate to dashboard'),
              onPressed: () => Modular.to.pushNamed('/dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
