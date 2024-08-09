import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/dashboard_appbar.dart';
import 'package:live_score/core/ui/dashboard/dashboard_calendar.dart';
import 'package:live_score/core/ui/dashboard/dashboard_favorites_card.dart';
import 'package:live_score/core/ui/dashboard/dashboard_live_card.dart';
import 'package:live_score/core/ui/dashboard/dashboard_score_card.dart';
import 'package:live_score/core/ui/dashboard/dashboard_tabs.dart';
import 'package:live_score/core/ui/dashboard/dashboard_upcoming_card.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DashboardCubit>().fetchFixtures();
    return Scaffold(
      backgroundColor: AppTheme.primary,
      appBar: DashboardAppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DashboardCalendar(),
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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const DashboardLiveCard();
              },
            ),
          ),
          const SizedBox(height: 25),
          const DashboardTabs(),
          const SizedBox(height: 20),
          BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              switch (state.selectedTab) {
                case DashboardTab.upcoming:
                  return Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return const DashboardUpcomingCard();
                      },
                    ),
                  );
                case DashboardTab.score:
                  return Expanded(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            SizedBox(width: 20),
                            Icon(
                              Icons.access_time_filled_outlined,
                              color: AppTheme.onSecondary,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'league',
                              style: TextStyle(
                                color: AppTheme.cardLeagueName,
                                fontSize: 17,
                              ),
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
                  );
                case DashboardTab.favorites:
                  return Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return const DashboardFavoritesCard();
                      },
                    ),
                  );
              }
            },
          ),
        ],
      ),
    );
  }
}
