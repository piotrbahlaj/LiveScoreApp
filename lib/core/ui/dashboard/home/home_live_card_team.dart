import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/ui/dashboard/home/cached_image.dart';

class HomeLiveCardTeam extends StatelessWidget {
  const HomeLiveCardTeam({
    super.key,
    required this.logo,
    required this.name,
  });
  final String logo;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: SizedBox(
        width: 100,
        height: 95,
        child: Column(
          children: [
            SizedBox(
              width: 40,
              height: 50,
              child: CachedImage(imageURL: logo),
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
      ),
    );
  }
}
