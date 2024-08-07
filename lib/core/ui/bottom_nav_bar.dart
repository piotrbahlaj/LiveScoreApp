import 'package:flutter/material.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppTheme.onSecondary,
      unselectedItemColor: AppTheme.hintText,
      unselectedIconTheme: const IconThemeData(color: AppTheme.hintText),
      selectedIconTheme: const IconThemeData(color: AppTheme.secondary),
      selectedFontSize: 16,
      unselectedFontSize: 16,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: [
        BottomNavigationBarItem(
          icon: _selectedIndex == 0
              ? const Icon(Icons.home, size: 30)
              : const Icon(Icons.home_outlined, size: 30),
          label: context.localizations.home,
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 1
              ? const Icon(Icons.favorite, size: 30)
              : const Icon(Icons.favorite_border, size: 30),
          label: context.localizations.favorites,
        ),
        BottomNavigationBarItem(
          icon: _selectedIndex == 2
              ? const Icon(Icons.person, size: 30)
              : const Icon(Icons.person_outlined, size: 30),
          label: context.localizations.account,
        ),
      ],
      backgroundColor: AppTheme.primary,
    );
  }
}
