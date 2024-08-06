import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/bottom_nav_bar.dart';
import 'package:live_score/core/ui/dashboard/dashboard_appbar.dart';
import 'package:live_score/core/ui/dashboard/dashboard_calendar.dart';
import 'package:live_score/core/ui/dashboard/dashboard_live_card.dart';
import 'package:live_score/core/ui/dashboard/dashboard_tabs.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: DashboardAppBar(),
      body: const Column(
        children: [
          DashboardCalendar(),
          SizedBox(height: 20),
          Row(
            children: [
              Text('Live Now'),
              Text('See more'),
            ],
          ),
          SizedBox(height: 20),
          DashboardLiveCard(),
          SizedBox(height: 20),
          DashboardTabs(),
          // conditionally build selected tab
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
