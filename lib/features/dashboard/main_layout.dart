import 'package:flutter/material.dart';
import 'package:live_score/core/ui/bottom_nav_bar.dart';
import 'package:live_score/features/dashboard/home/ui/home_screen.dart';

class MainLayout extends StatelessWidget {
  const MainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: BottomNavBar(),
      body: HomeScreen(),
    );
  }
}
