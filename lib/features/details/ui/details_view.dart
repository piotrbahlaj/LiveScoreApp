import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/loading_state_indicator.dart';
import 'package:live_score/features/details/ui/cubit/details_cubit.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: GestureDetector(
          onTap: () => Modular.to.pop(),
          child: const Icon(
            Icons.arrow_back_ios,
            color: AppTheme.onSecondary,
          ),
        ),
        backgroundColor: AppTheme.primary,
        title: const Text(
          'league',
          style: TextStyle(color: AppTheme.onSecondary),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Icon(
              Icons.star_border,
              size: 30,
              color: AppTheme.onSecondary,
            ),
          ),
        ],
      ),
      backgroundColor: AppTheme.primary,
      body: BlocBuilder<DetailsCubit, DetailsState>(
        builder: (context, state) {
          if (state is Success) {
            return const Column(
              children: [
                // Details card with basic info, like live card
                // DetailsCard(
                //   leagueName: leagueName,
                //   homeName: homeName,
                //   awayName: awayName,
                //   leagueLogo: leagueLogo,
                //   homeLogo: homeLogo,
                //   awayLogo: awayLogo,
                //   homeScore: homeScore,
                //   awayScore: awayScore,
                //   time: time,
                // ),
                // Summary, stats, standings
              ],
            );
          }
          return const LoadingStateIndicator(
            verticalPadding: 20,
            horizontalPadding: 20,
          );
        },
      ),
    );
  }
}
