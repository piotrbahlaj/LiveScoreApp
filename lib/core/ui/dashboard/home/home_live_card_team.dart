import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class HomeLiveCardTeam extends StatelessWidget {
  const HomeLiveCardTeam({super.key, required this.logo, required this.name});
  final String logo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Column(
        children: [
          SizedBox(
            width: 40,
            height: 45,
            child: CachedNetworkImage(
              imageUrl: logo,
              placeholder: (context, url) => const SizedBox(
                height: 30,
                width: 30,
                child: CircularProgressIndicator(
                  backgroundColor: AppTheme.secondary,
                  color: AppTheme.onSecondary,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            name,
            softWrap: true,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: AppTheme.onSecondary,
            ),
          )
        ],
      ),
    );
  }
}
