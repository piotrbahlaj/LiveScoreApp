import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/cached_image.dart';
import 'package:live_score/core/ui/dashboard/home/home_score_card.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class HomeScoreTab extends StatelessWidget {
  const HomeScoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state is Success) {
          return Expanded(
            child: ListView.builder(
              itemCount: state.fixtures.response.length,
              itemBuilder: (context, index) {
                final fixtureDateTime =
                    DateTime.parse(state.fixtures.response[index].fixture.date);
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
                          child: CachedImage(
                            imageURL: fixtures.league.logo!,
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
                    HomeScoreCard(
                      homeLogo: fixtures.teams.home.logo,
                      awayLogo: fixtures.teams.away.logo,
                      homeScore: fixtures.goals.home,
                      awayScore: fixtures.goals.away,
                      homeTeam: fixtures.teams.home.name,
                      awayTeam: fixtures.teams.away.name,
                      status: fixtures.fixture.status.short,
                      date: formattedDate,
                      id: fixtures.fixture.id,
                      leagueLogo: fixtures.league.logo,
                      leagueName: fixtures.league.name,
                      time: fixtures.fixture.status.elapsed,
                    ),
                  ],
                );
              },
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
