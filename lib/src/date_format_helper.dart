import 'package:intl/intl.dart';

class DateFormatHelper {
  /// Converts a [DateTime] to a string in the specified [format].
  static String formatDate(DateTime date, String format) {
    return DateFormat(format).format(date);
  }

  /// Returns a human-readable date like 'Monday, 23 Dec 2024'.
  static String formatFullDate(DateTime date) {
    return DateFormat('EEEE, d MMM y').format(date);
  }

  /// Returns a short date like '23/12/2024'.
  static String formatShortDate(DateTime date) {
    return DateFormat('dd/MM/yyyy').format(date);
  }

  /// Returns time in 12-hour format like '05:30 PM'.
  static String formatTime12Hour(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  /// Returns time in 24-hour format like '17:30'.
  static String formatTime24Hour(DateTime date) {
    return DateFormat('HH:mm').format(date);
  }

  /// Returns a timestamp format like '2024-12-23 17:30:00'.
  static String formatTimestamp(DateTime date) {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(date);
  }

  /// Returns the ISO-8601 format like '2024-12-23T17:30:00.000Z'.
  static String formatISO(DateTime date) {
    return date.toIso8601String();
  }

  /// Parses a string to a DateTime using the given [format].
  static DateTime parseDate(String dateString, String format) {
    return DateFormat(format).parse(dateString);
  }

  /// Returns a relative time string like '2 days ago'.
  static String formatRelative(DateTime date) {
    final Duration diff = DateTime.now().difference(date);
    if (diff.inDays > 1) return '${diff.inDays} days ago';
    if (diff.inHours > 1) return '${diff.inHours} hours ago';
    if (diff.inMinutes > 1) return '${diff.inMinutes} minutes ago';
    return 'just now';
  }

  /// Returns the full day name like 'Monday'.
  static String getDayName(DateTime date) {
    return DateFormat('EEEE').format(date);
  }

  /// Returns the short day name like 'Mon'.
  static String getShortDayName(DateTime date) {
    return DateFormat('EEE').format(date);
  }

  /// Returns the day number in the month (e.g., 23 for December 23rd).
  static int getDayNumber(DateTime date) {
    return date.day;
  }

  /// Returns the full month name like 'December'.
  static String getMonthName(DateTime date) {
    return DateFormat('MMMM').format(date);
  }

  /// Returns the short month name like 'Dec'.
  static String getShortMonthName(DateTime date) {
    return DateFormat('MMM').format(date);
  }

  /// Returns the year as an integer.
  static int getYear(DateTime date) {
    return date.year;
  }

  /// Returns the week number of the year for the given date.
  static int getWeekNumber(DateTime date) {
    final firstDayOfYear = DateTime(date.year, 1, 1);
    final daysDifference = date.difference(firstDayOfYear).inDays;
    return ((daysDifference + firstDayOfYear.weekday) / 7).ceil();
  }

  /// Returns the quarter of the year (1, 2, 3, or 4).
  static int getQuarter(DateTime date) {
    return ((date.month - 1) ~/ 3) + 1;
  }

  /// Returns whether the given year is a leap year.
  static bool isLeapYear(int year) {
    return (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);
  }
}
