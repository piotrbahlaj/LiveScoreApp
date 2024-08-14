import 'package:flutter/material.dart';
import 'package:live_score/core/theme/app_theme.dart';
import 'package:live_score/core/utils/date_util.dart';

class DashboardDateElement extends StatelessWidget {
  const DashboardDateElement({
    super.key,
    required this.date,
    this.isSelected = false,
  });
  final DateTime date;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          DateUtil.getFormattedDay(date),
          style: TextStyle(
            color: isSelected ? AppTheme.onSecondary : AppTheme.onPrimary2,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          DateUtil.getFormattedMonthDay(date),
          style: TextStyle(
            color: isSelected ? AppTheme.onSecondary : AppTheme.onPrimary2,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Container(
          width: 65,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? AppTheme.secondary : AppTheme.primary,
          ),
        ),
      ],
    );
  }
}
