import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();

class InputSurat{
   final DateTime date;
   String get formattedDate {
    return formatter.format(date);
  }

  InputSurat({
    required this.date,
  });
}