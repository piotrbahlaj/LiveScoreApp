import 'package:flutter/material.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/bottom_nav_bar.dart';
import 'package:live_score/core/ui/dashboard/dashboard_appbar.dart';
import 'package:live_score/core/ui/dashboard/dashboard_calendar.dart';
import 'package:live_score/core/ui/dashboard/dashboard_live_card.dart';
import 'package:live_score/core/ui/dashboard/dashboard_score_card.dart';
import 'package:live_score/core/ui/dashboard/dashboard_tabs.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: DashboardAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DashboardCalendar(),
          // SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  context.localizations.liveNow,
                  style: const TextStyle(
                    color: AppTheme.onSecondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    context.localizations.seeMore,
                    style: const TextStyle(
                      color: AppTheme.secondary,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 190,
            child: Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const DashboardLiveCard();
                },
              ),
            ),
          ),
          const SizedBox(height: 25),
          const DashboardTabs(),
          const SizedBox(height: 20),
          const Row(
            children: [
              SizedBox(width: 20),
              Icon(
                Icons.access_time_filled_outlined,
                color: AppTheme.onSecondary,
              ),
              SizedBox(width: 10),
              Text(
                'liga',
                style: TextStyle(color: AppTheme.cardLeagueName, fontSize: 17),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return const DashboardScoreCard();
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
