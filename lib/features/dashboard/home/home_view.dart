import 'package:cached_network_image/cached_network_image.dart';
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
    final String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    context.read<DashboardCubit>().fetchFixtures(currentDate);
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
                height: 200,
                child: Builder(
                  builder: (context) {
                    if (state is Success) {
                      if (state.liveFixtures.response.isEmpty) {
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
                        itemCount: state.liveFixtures.response.length,
                        itemBuilder: (context, index) {
                          final liveFixture =
                              state.liveFixtures.response[index];
                          return DashboardLiveCard(
                            time: liveFixture.fixture.status.elapsed,
                            leagueName: liveFixture.league.name,
                            homeName: liveFixture.teams.home.name,
                            awayName: liveFixture.teams.away.name,
                            leagueLogo: liveFixture.league.logo!,
                            homeLogo: liveFixture.teams.home.logo!,
                            awayLogo: liveFixture.teams.away.logo!,
                            homeScore: liveFixture.goals.home,
                            awayScore: liveFixture.goals.away,
                          );
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
                          padding: const EdgeInsets.symmetric(vertical: 100),
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
                          child: ListView.builder(
                            itemCount: state.fixtures.response.length,
                            itemBuilder: (context, index) {
                              final fixtureDateTime = DateTime.parse(
                                  state.fixtures.response[index].fixture.date);
                              final formattedDate =
                                  DateFormat('MM/dd').format(fixtureDateTime);
                              final fixtures = state.fixtures.response[index];
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      const SizedBox(width: 20),
                                      SizedBox(
                                        width: 50,
                                        height: 20,
                                        child: CachedNetworkImage(
                                          imageUrl: fixtures.league.logo!,
                                          placeholder: (context, url) =>
                                              const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Center(
                                              child: SizedBox(
                                                width: 20,
                                                height: 20,
                                                child:
                                                    CircularProgressIndicator(
                                                  backgroundColor:
                                                      AppTheme.secondary,
                                                  color: AppTheme.onSecondary,
                                                ),
                                              ),
                                            ),
                                          ),
                                          errorWidget: (context, url, error) =>
                                              const Icon(Icons.error),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Flexible(
                                        child: Text(
                                          fixtures.league.name,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: AppTheme.cardLeagueName,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  DashboardScoreCard(
                                    homeLogo: fixtures.teams.home.logo,
                                    awayLogo: fixtures.teams.away.logo,
                                    homeScore: fixtures.goals.home,
                                    awayScore: fixtures.goals.away,
                                    homeTeam: fixtures.teams.home.name,
                                    awayTeam: fixtures.teams.away.name,
                                    status: fixtures.fixture.status.short,
                                    date: formattedDate,
                                  ),
                                ],
                              );
                            },
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
