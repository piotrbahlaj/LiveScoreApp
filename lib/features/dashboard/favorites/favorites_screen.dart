import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';
import 'package:live_score/features/dashboard/favorites/favorites_view.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});
  static const favorites = '/favorites';

  @override
  Widget build(BuildContext context) {
    return BlocProvider<DashboardCubit>(
      create: (context) => Modular.get<DashboardCubit>(),
      child: Scaffold(
        backgroundColor: AppTheme.primary,
        appBar: AppBar(
          leadingWidth: 150,
          toolbarHeight: 70,
          backgroundColor: AppTheme.primary,
          leading: Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              context.localizations.favorites,
              style: const TextStyle(
                color: AppTheme.onSecondary,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: const FavoritesView(),
      ),
    );
  }
}
