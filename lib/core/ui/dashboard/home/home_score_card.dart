import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class DashboardScoreCard extends StatelessWidget {
  const DashboardScoreCard(
      {super.key,
      required this.homeTeam,
      required this.awayTeam,
      required this.homeScore,
      required this.awayScore,
      required this.status,
      required this.date});
  final String homeTeam;
  final String awayTeam;
  final int? homeScore;
  final int? awayScore;
  final String status;
  final String date;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state is Success) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Card(
              color: AppTheme.onPrimary3,
              child: SizedBox(
                width: 360,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            status,
                            style: const TextStyle(
                              color: AppTheme.onPrimary2,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            date,
                            style: const TextStyle(
                              color: AppTheme.onPrimary2,
                            ),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          Text(
                            homeTeam,
                            style: const TextStyle(
                              color: AppTheme.onSecondary,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            awayTeam,
                            style: const TextStyle(
                              color: AppTheme.onSecondary,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 130),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          Text(
                            homeScore.toString(),
                            style: const TextStyle(
                              color: AppTheme.onSecondary,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            awayScore.toString(),
                            style: const TextStyle(
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
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Center(
            child: CircularProgressIndicator(
              backgroundColor: AppTheme.secondary,
              color: AppTheme.onSecondary,
              strokeWidth: 3,
            ),
          ),
        );
      },
    );
  }
}
