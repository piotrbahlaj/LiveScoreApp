class DateUtil {
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
}
