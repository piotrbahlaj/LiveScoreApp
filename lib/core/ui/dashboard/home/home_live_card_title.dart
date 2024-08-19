import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class HomeLiveCardTitle extends StatelessWidget {
  const HomeLiveCardTitle(
      {super.key, required this.name, required this.logo, required this.time});
  final String name;
  final String logo;
  final int? time;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                  imageUrl: logo,
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(
                    backgroundColor: AppTheme.secondary,
                    color: AppTheme.onSecondary,
                  ),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: AppTheme.cardLeagueName,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 27,
          width: 55,
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
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
