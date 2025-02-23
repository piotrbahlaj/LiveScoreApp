import 'package:flutter/material.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';
import 'package:live_score/core/theme/app_theme.dart';

class HomeAppbar extends AppBar {
  HomeAppbar({required BuildContext context, super.key})
      : super(
          forceMaterialTransparency: true,
          leading: Stack(
            children: [
              Positioned(
                bottom: 18,
                left: 22,
                child: Text(
                  context.localizations.liveScore,
                  style: const TextStyle(
                    color: AppTheme.onSecondary,
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),
                ),
              ),
              Positioned(
                top: 18,
                right: 0,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    color: AppTheme.secondary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          toolbarHeight: 70,
          leadingWidth: 150,
          centerTitle: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: const [
            Icon(
              Icons.search,
              color: AppTheme.onSecondary,
              size: 30,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.notifications_outlined,
              color: AppTheme.onSecondary,
              size: 30,
            ),
            SizedBox(width: 20),
          ],
        );
}
