import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:live_score/core/constants/dashboard_constants.dart';

class DateUtil {
  static final scrollController = ScrollController();
  static List<DateTime> generateDates(int totalDays) {
    DateTime now = DateTime.now();
    DateTime startOfPeriod = now.subtract(Duration(days: totalDays ~/ 2));
    return List<DateTime>.generate(
      totalDays,
      (index) => startOfPeriod.add(
        Duration(days: index),
      ),
    );
  }

  static getFormattedDay(DateTime date) {
    DateFormat dayFormat = DateFormat('E');
    DateTime today = DateTime.now();
    String day = date.year == today.year &&
            date.month == today.month &&
            date.day == today.day
        ? 'Today'
        : dayFormat.format(date);
    return day;
  }

  static getFormattedMonthDay(DateTime date) {
    DateFormat monthDayFormat = DateFormat('d MMM');
    String monthDay = monthDayFormat.format(date);
    return monthDay;
  }

  static void scrollLeft() {
    scrollController.animateTo(
      scrollController.offset - DashboardConstants.calendarScrollOffset,
      duration: const Duration(
        milliseconds: DashboardConstants.calendarScrollDuration,
      ),
      curve: Curves.easeInOut,
    );
  }

  static void scrollRight() {
    scrollController.animateTo(
      scrollController.offset + DashboardConstants.calendarScrollOffset,
      duration: const Duration(
        milliseconds: DashboardConstants.calendarScrollDuration,
      ),
      curve: Curves.easeInOut,
    );
  }
}
