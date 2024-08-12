import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/home_details_button.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class DashboardLiveCard extends StatelessWidget {
  const DashboardLiveCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state is Success) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              width: 320,
              height: 190,
              child: Card(
                color: AppTheme.onPrimary3,
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        const SizedBox(width: 20),
                        const Icon(
                          Icons.access_time_filled_outlined,
                          color: AppTheme.onSecondary,
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          'league',
                          style: TextStyle(
                              color: AppTheme.cardLeagueName, fontSize: 17),
                        ),
                        const SizedBox(width: 135),
                        Container(
                          height: 27,
                          width: 52,
                          decoration: BoxDecoration(
                            color: AppTheme.onSecondary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            child: Row(
                              children: [
                                Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: AppTheme.cardClock,
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Text(
                                  '78',
                                  style: TextStyle(
                                    color: AppTheme.cardClockTime,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    const Row(
                      children: [
                        SizedBox(width: 50),
                        Column(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              color: AppTheme.onSecondary,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'home team',
                              style: TextStyle(
                                color: AppTheme.onSecondary,
                              ),
                            )
                          ],
                        ),
                        SizedBox(width: 10),
                        Text(
                          'score',
                          style: TextStyle(
                            color: AppTheme.onSecondary,
                          ),
                        ),
                        SizedBox(width: 10),
                        Column(
                          children: [
                            Icon(
                              Icons.access_time_filled,
                              color: AppTheme.onSecondary,
                            ),
                            SizedBox(height: 5),
                            Text(
                              'away team',
                              style: TextStyle(
                                color: AppTheme.onSecondary,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const DetailsButton()
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
