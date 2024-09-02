import 'package:flutter/material.dart';
import 'package:live_score/core/extensions/date_time_extension.dart';
import 'package:live_score/core/theme/app_theme.dart';

class HomeDateElement extends StatelessWidget {
  const HomeDateElement({
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
          date.getFormattedDay(context),
          style: TextStyle(
            color: isSelected ? AppTheme.onSecondary : AppTheme.onPrimary2,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          date.getFormattedMonthDay(),
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
