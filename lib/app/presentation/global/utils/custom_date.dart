import 'package:intl/intl.dart';

abstract class CustomDate {
  CustomDate._();
  static String patternDate = 'dd/MM/yyyy';
  static String patternTime = 'HH:mm';

  static String parseDate(DateTime date) {
    return DateFormat(patternDate).format(date);
  }

  static String parseTime(DateTime date) {
    return DateFormat('hh:mm a').format(date);
  }

  static DateTime parteDatetime(String dateStr) {
    return DateTime.parse(dateStr);
  }
}
