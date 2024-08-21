import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:live_score/app_database.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/favorites/favorites_card.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class FavoritesView extends StatelessWidget {
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<DashboardCubit>();
    return BlocBuilder<DashboardCubit, DashboardState>(
      builder: (context, state) {
        return Scaffold(
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
          body: FutureBuilder<List<MatchData>>(
            future: cubit.loadCachedMatches(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(
                  child: Text(
                    'Error: ${snapshot.error}',
                    style: const TextStyle(color: AppTheme.onSecondary),
                  ),
                );
              }
              final matches = snapshot.data!;
              if (matches.isEmpty) {
                return Center(
                  child: Text(
                    context.localizations.noCachedMatchData,
                    style: const TextStyle(color: AppTheme.onSecondary),
                  ),
                );
              }
              return ListView.builder(
                itemCount: matches.length,
                itemBuilder: (context, index) {
                  final match = matches[index];
                  final DateTime parsedDate =
                      DateFormat('MM/dd').parse(match.matchDate);
                  final String formattedDate =
                      DateFormat('MM/dd').format(parsedDate);

                  return FavoritesCard(
                    homeLogo: match.homeLogo,
                    awayLogo: match.awayLogo,
                    homeScore: match.homeScore,
                    awayScore: match.awayScore,
                    homeTeam: match.homeTeam,
                    awayTeam: match.awayTeam,
                    status: '',
                    date: formattedDate,
                    id: match.id,
                    onDelete: () => matches.removeAt(index),
                  );
                },
              );
            },
          ),
        );
      },
    );
  }
}
