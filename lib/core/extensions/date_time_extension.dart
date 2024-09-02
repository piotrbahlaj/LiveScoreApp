import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:live_score/core/extensions/localization/app_localizations_context.dart';

extension DateTimeExtension on DateTime {
  String getFormattedDay(BuildContext context) {
    DateFormat dayFormat = DateFormat('E');
    DateTime today = DateTime.now();
    String day =
        year == today.year && month == today.month && this.day == today.day
            ? context.localizations.today
            : dayFormat.format(this);
    return day;
  }

  String getFormattedMonthDay() {
    DateFormat monthDayFormat = DateFormat('d MMM');
    String monthDay = monthDayFormat.format(this);
    return monthDay;
  }

  List<DateTime> generateDates(int totalDays) {
    DateTime now = DateTime.now();
    DateTime startOfPeriod = now.subtract(Duration(days: totalDays ~/ 2));
    return List<DateTime>.generate(
      totalDays,
      (index) => startOfPeriod.add(
        Duration(days: index),
      ),
    );
  }
}
