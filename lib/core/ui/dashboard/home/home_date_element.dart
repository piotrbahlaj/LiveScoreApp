import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:live_score/core/theme/app_theme.dart';

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
    DateFormat dayFormat = DateFormat('E');
    DateFormat monthDayFormat = DateFormat('d MMM');
    DateTime today = DateTime.now();
    String day = date.year == today.year &&
            date.month == today.month &&
            date.day == today.day
        ? 'Today'
        : dayFormat.format(date);
    String monthDay = monthDayFormat.format(date);
    return Column(
      children: [
        Text(
          day,
          style: TextStyle(
            color: isSelected ? AppTheme.onSecondary : AppTheme.onPrimary2,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          monthDay,
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
