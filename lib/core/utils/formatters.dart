import 'package:intl/intl.dart';

class Formatters {
  static String price(num value) => NumberFormat.currency(symbol: '4').format(value);
  static String date(DateTime date) => DateFormat.yMMMd().format(date);
  static String time(DateTime date) => DateFormat.jm().format(date);
}
