import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/home_details_button.dart';
import 'package:live_score/core/ui/dashboard/home/home_live_card_team.dart';
import 'package:live_score/core/ui/dashboard/home/home_live_card_title.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class HomeLiveCard extends StatelessWidget {
  const HomeLiveCard({
    super.key,
    required this.leagueName,
    required this.homeName,
    required this.awayName,
    required this.leagueLogo,
    required this.homeLogo,
    required this.awayLogo,
    required this.homeScore,
    required this.awayScore,
    required this.time,
  });
  final String leagueName;
  final String homeName;
  final String awayName;
  final String leagueLogo;
  final String homeLogo;
  final String awayLogo;
  final int? homeScore;
  final int? awayScore;
  final int? time;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state is Success) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: SizedBox(
              width: 340,
              height: 200,
              child: Card(
                color: AppTheme.onPrimary3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(height: 10),
                    HomeLiveCardTitle(
                      name: leagueName,
                      logo: leagueLogo,
                      time: time,
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        HomeLiveCardTeam(logo: homeLogo, name: homeName),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '${homeScore.toString()} - ${awayScore.toString()}',
                            style: const TextStyle(
                              color: AppTheme.onSecondary,
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            ),
                          ),
                        ),
                        HomeLiveCardTeam(logo: awayLogo, name: awayName),
                      ],
                    ),
                    const SizedBox(height: 4),
                    const DetailsButton(),
                  ],
                ),
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
