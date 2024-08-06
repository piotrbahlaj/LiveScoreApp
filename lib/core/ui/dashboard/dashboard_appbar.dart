import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';

class DashboardAppBar extends AppBar {
  DashboardAppBar({super.key})
      : super(
          leading: const Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 20,
            ),
            child: Text(
              'LiveScore',
              style: TextStyle(
                color: AppTheme.onSecondary,
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),
            ),
          ),
          toolbarHeight: 70,
          leadingWidth: 160,
          centerTitle: false,
          backgroundColor: AppTheme.transparent,
          elevation: 0,
          actions: const [
            Icon(
              Icons.search,
              color: AppTheme.onSecondary,
              size: 30,
            ),
            SizedBox(width: 20),
            Icon(
              Icons.notifications,
              color: AppTheme.onSecondary,
              size: 30,
            ),
            SizedBox(width: 20),
          ],
        );
}
