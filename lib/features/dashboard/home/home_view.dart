import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/home_appbar.dart';
import 'package:live_score/core/ui/dashboard/home/home_calendar.dart';
import 'package:live_score/core/ui/dashboard/home/home_live_card.dart';
import 'package:live_score/core/ui/dashboard/home/home_live_now_row.dart';
import 'package:live_score/core/ui/dashboard/home/home_score_tab.dart';
import 'package:live_score/core/ui/dashboard/home/home_tabs.dart';
import 'package:live_score/core/ui/dashboard/home/loading_state_indicator.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:live_score/features/dashboard/favorites/favorites_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  DashboardCubit _loginCubit(BuildContext context) =>
      context.read<DashboardCubit>();
  @override
  Widget build(BuildContext context) {
    final String currentDate = DateFormat('yyyy-MM-dd').format(DateTime.now());
    _loginCubit(context).fetchFixtures(currentDate);
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: AppTheme.primary,
          appBar: HomeAppbar(
            context: context,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeCalendar(),
              const HomeLiveNowRow(),
              SizedBox(
                height: 220,
                child: Builder(
                  builder: (context) {
                    return _liveCardBuilder(context, state);
                  },
                ),
              ),
              const SizedBox(height: 10),
              const HomeTabs(),
              const SizedBox(height: 20),
              BlocBuilder<DashboardCubit, DashboardState>(
                builder: (context, state) {
                  return _tabBuilder(context, state);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}

_liveCardBuilder(BuildContext context, DashboardState state) {
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
        final liveFixture = state.liveFixtures.response[index];
        return HomeLiveCard(
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
}

_tabBuilder(BuildContext context, DashboardState state) {
  if (state is Success) {
    switch (state.selectedTab) {
      // UPCOMING TAB
      case DashboardTab.upcoming:
        return const SizedBox();

      // SCORE TAB
      case DashboardTab.score:
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
        return const HomeScoreTab();

      // FAVORITES TAB
      case DashboardTab.favorites:
        return const Expanded(
          child: FavoritesView(),
        );
    }
  }

  // IF STATE IS NOT SUCCESS
  return const Column(
    children: [
      SizedBox(height: 80),
      LoadingStateIndicator(
        verticalPadding: 25,
        horizontalPadding: 0,
      )
    ],
  );
}
