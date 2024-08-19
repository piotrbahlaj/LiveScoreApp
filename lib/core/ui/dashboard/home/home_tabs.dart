import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class HomeTabs extends StatelessWidget {
  const HomeTabs({super.key});

  String _getTitle(BuildContext context, DashboardTab tab) {
    return switch (tab) {
      DashboardTab.upcoming => context.localizations.upcoming,
      DashboardTab.score => context.localizations.score,
      DashboardTab.favorites => context.localizations.favorites,
    };
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DashboardCubit>();
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: DashboardTab.values.map((tab) {
              final isSelected = tab == state.selectedTab;
              return GestureDetector(
                onTap: () => cubit.selectTab(tab),
                child: Column(
                  children: [
                    Text(
                      _getTitle(context, tab),
                      style: TextStyle(
                        color: isSelected
                            ? AppTheme.onSecondary
                            : AppTheme.onPrimary2,
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                    ),
                    Container(
                      width: 80,
                      height: 2,
                      decoration: BoxDecoration(
                        color: isSelected
                            ? AppTheme.secondary
                            : Colors.transparent,
                      ),
                    ),
                  ],
                ),
              );
            }).toList());
      },
    );
  }
}
