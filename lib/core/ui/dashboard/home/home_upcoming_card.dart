import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class DashboardUpcomingCard extends StatelessWidget {
  const DashboardUpcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        if (state is Success) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Card(
              color: AppTheme.onPrimary3,
              child: SizedBox(
                width: 360,
                height: 80,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'status',
                            style: TextStyle(
                              color: AppTheme.onPrimary2,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'date',
                            style: TextStyle(
                              color: AppTheme.onPrimary2,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
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
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: Column(
                        children: [
                          Text(
                            'home team',
                            style: TextStyle(
                              color: AppTheme.onSecondary,
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            'away team',
                            style: TextStyle(
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
