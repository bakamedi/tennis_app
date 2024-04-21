// ignore_for_file: non_constant_identifier_names

import 'package:intl/intl.dart';

final NOW = DateTime.now();

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

  static String getMonthName(DateTime dateTime) {
    switch (dateTime.month - 1) {
      case 1:
        return 'Enero ${NOW.year}';
      case 2:
        return 'Febrero ${NOW.year}';
      case 3:
        return 'Marzo ${NOW.year}';
      case 4:
        return 'Abril ${NOW.year}';
      case 5:
        return 'Mayo ${NOW.year}';
      case 6:
        return 'Junio ${NOW.year}';
      case 7:
        return 'Julio ${NOW.year}';
      case 8:
        return 'Agosto ${NOW.year}';
      case 9:
        return 'Septiembre ${NOW.year}';
      case 10:
        return 'Octubre ${NOW.year}';
      case 11:
        return 'Noviembre ${NOW.year}';
      case 12:
        return 'Diciembre ${NOW.year}';
      default:
        return '';
    }
  }
}
