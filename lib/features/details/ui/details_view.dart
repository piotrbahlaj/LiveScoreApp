import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/theme/app_theme.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: () => Modular.to.pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppTheme.onSecondary,
          ),
        ),
        backgroundColor: AppTheme.primary,
        title: const Text(
          'league',
          style: TextStyle(color: AppTheme.onSecondary),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.star_border,
              size: 30,
              color: AppTheme.onSecondary,
            ),
          )
        ],
      ),
      backgroundColor: AppTheme.primary,
      body: const Column(
        children: [
          // Details card with basic info, like live card

          // Summary, stats, standings
        ],
      ),
    );
  }
}
