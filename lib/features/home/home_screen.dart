import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Fetch Data'),
              onPressed: () => (),
            ),
            const SizedBox(height: 20),
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
