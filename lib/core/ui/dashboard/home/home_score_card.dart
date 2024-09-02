import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/cached_image.dart';
import 'package:live_score/core/ui/dashboard/home/loading_state_indicator.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class HomeScoreCard extends StatelessWidget {
  const HomeScoreCard({
    super.key,
    required this.homeTeam,
    required this.awayTeam,
    required this.homeScore,
    required this.awayScore,
    required this.status,
    required this.date,
    required this.homeLogo,
    required this.awayLogo,
  });
  final String homeTeam;
  final String awayTeam;
  final int? homeScore;
  final int? awayScore;
  final String status;
  final String date;
  final String? homeLogo;
  final String? awayLogo;

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
                  mainAxisAlignment: MainAxisAlignment.start,
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
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5,
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: CachedImage(
                              imageURL: homeLogo!,
                            ),
                          ),
                          const SizedBox(height: 15),
                          SizedBox(
                            width: 20,
                            height: 20,
                            child: CachedImage(
                              imageURL: awayLogo!,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
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
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 10,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            homeScore?.toString() ?? '',
                            style: const TextStyle(
                              color: AppTheme.onSecondary,
                            ),
                          ),
                          const SizedBox(height: 15),
                          Text(
                            awayScore?.toString() ?? '',
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
        // if state is not success
        return const LoadingStateIndicator(
          verticalPadding: 25,
          horizontalPadding: 0,
        );
      },
    );
  }
}
