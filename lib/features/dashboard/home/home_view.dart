import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/home_appbar.dart';
import 'package:live_score/core/ui/dashboard/home/home_calendar.dart';
import 'package:live_score/core/ui/dashboard/home/home_favorites_card.dart';
import 'package:live_score/core/ui/dashboard/home/home_live_card.dart';
import 'package:live_score/core/ui/dashboard/home/home_score_card.dart';
import 'package:live_score/core/ui/dashboard/home/home_tabs.dart';
import 'package:live_score/core/ui/dashboard/home/home_upcoming_card.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<DashboardCubit>().fetchFixtures();
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppTheme.primary,
          appBar: DashboardAppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DashboardCalendar(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                child: Builder(
                  builder: (context) {
                    if (state is Success) {
                      if (state.fixtures.response.isEmpty) {
                        return Center(
                          child: Text(
                            context.localizations.noLiveMatches,
                            style: const TextStyle(
                              color: AppTheme.cardLeagueName,
                              fontSize: 17,
                            ),
                          ),
                        );
                      }
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const DashboardLiveCard();
                        },
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(
                        backgroundColor: AppTheme.secondary,
                        color: AppTheme.onSecondary,
                        strokeWidth: 3,
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 25),
              const DashboardTabs(),
              const SizedBox(height: 20),
              BlocBuilder<DashboardCubit, DashboardState>(
                builder: (context, state) {
                  if (state is Success) {
                    if (state.fixtures.response.isEmpty) {
                      return Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 110),
                          child: Text(
                            context.localizations.noMatchesFound,
                            style: const TextStyle(
                              color: AppTheme.cardLeagueName,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      );
                    }
                    switch (state.selectedTab) {
                      case DashboardTab.upcoming:
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
                                    return const DashboardUpcomingCard();
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      case DashboardTab.score:
                        return Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const SizedBox(width: 20),
                                  const Icon(
                                    Icons.access_time_filled_outlined,
                                    color: AppTheme.onSecondary,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    state.fixtures.response.first.league.name,
                                    style: const TextStyle(
                                      color: AppTheme.cardLeagueName,
                                      fontSize: 17,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: state.fixtures.response.length,
                                  itemBuilder: (context, index) {
                                    final fixtureDateTime = DateTime.parse(state
                                        .fixtures.response[index].fixture.date);
                                    final formattedDate = DateFormat('MM/dd')
                                        .format(fixtureDateTime);
                                    final fixtures =
                                        state.fixtures.response[index];
                                    return DashboardScoreCard(
                                      homeScore: fixtures.goals.home,
                                      awayScore: fixtures.goals.away,
                                      homeTeam: fixtures.teams.home.name,
                                      awayTeam: fixtures.teams.away.name,
                                      status: fixtures.fixture.status.short,
                                      date: formattedDate,
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                      case DashboardTab.favorites:
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
                                    return const DashboardFavoritesCard();
                                  },
                                ),
                              ),
                            ],
                          ),
                        );
                    }
                  }
                  return const Column(
                    children: [
                      SizedBox(height: 80),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 25),
                        child: Center(
                          child: CircularProgressIndicator(
                            backgroundColor: AppTheme.secondary,
                            color: AppTheme.onSecondary,
                            strokeWidth: 3,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
