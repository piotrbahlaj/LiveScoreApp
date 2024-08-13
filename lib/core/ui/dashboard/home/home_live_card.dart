import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/home_details_button.dart';
import 'package:live_score/features/dashboard/cubit/dashboard_cubit.dart';

class DashboardLiveCard extends StatelessWidget {
  const DashboardLiveCard(
      {super.key,
      required this.leagueName,
      required this.homeName,
      required this.awayName,
      required this.leagueLogo,
      required this.homeLogo,
      required this.awayLogo,
      required this.homeScore,
      required this.awayScore,
      required this.time});
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
              width: 320,
              height: 200,
              child: Card(
                color: AppTheme.onPrimary3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 30,
                                height: 30,
                                child: CachedNetworkImage(
                                  imageUrl: leagueLogo,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(
                                    backgroundColor: AppTheme.secondary,
                                    color: AppTheme.onSecondary,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Flexible(
                                child: Text(
                                  leagueName,
                                  overflow: TextOverflow.ellipsis,
                                  style: const TextStyle(
                                      color: AppTheme.cardLeagueName,
                                      fontSize: 17),
                                ),
                              ),
                            ],
                          ),
                        ),
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
                                  time.toString(),
                                  style: TextStyle(
                                      color: AppTheme.cardClockTime,
                                      fontSize: 8),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              SizedBox(
                                width: 40,
                                height: 50,
                                child: CachedNetworkImage(
                                  imageUrl: homeLogo,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(
                                    backgroundColor: AppTheme.secondary,
                                    color: AppTheme.onSecondary,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                homeName,
                                softWrap: true,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: AppTheme.onSecondary,
                                ),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '${homeScore.toString()} - ${awayScore.toString()}',
                          style: const TextStyle(
                            color: AppTheme.onSecondary,
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          flex: 1,
                          child: Column(
                            children: [
                              SizedBox(
                                width: 40,
                                height: 50,
                                child: CachedNetworkImage(
                                  imageUrl: awayLogo,
                                  placeholder: (context, url) =>
                                      const CircularProgressIndicator(
                                    backgroundColor: AppTheme.secondary,
                                    color: AppTheme.onSecondary,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      const Icon(Icons.error),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                awayName,
                                softWrap: true,
                                overflow: TextOverflow.clip,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: AppTheme.onSecondary,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),
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
