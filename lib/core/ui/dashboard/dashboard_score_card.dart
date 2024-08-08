import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class DashboardScoreCard extends StatelessWidget {
  const DashboardScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        color: AppTheme.onPrimary3,
        child: SizedBox(
          width: 360,
          height: 90,
          child: Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'FT',
                      style: TextStyle(
                        color: AppTheme.onPrimary2,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'DATA',
                      style: TextStyle(
                        color: AppTheme.onPrimary2,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.access_time_filled,
                      color: AppTheme.onSecondary,
                    ),
                    SizedBox(height: 10),
                    Icon(
                      Icons.access_time_filled,
                      color: AppTheme.onSecondary,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Text(
                      'home team',
                      style: TextStyle(
                        color: AppTheme.onSecondary,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      'away team',
                      style: TextStyle(
                        color: AppTheme.onSecondary,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 130),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                ),
                child: Column(
                  children: [
                    Text(
                      '0',
                      style: TextStyle(
                        color: AppTheme.onSecondary,
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      '0',
                      style: TextStyle(
                        color: AppTheme.onSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
