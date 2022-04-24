import 'package:beauty_salon/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {

  final CalendarWeekController _controller = CalendarWeekController();

  @override
  Widget build(BuildContext context) {
    return  CalendarWeek(
      todayBackgroundColor: Colors.cyan.shade700,
      marginMonth: const EdgeInsets.symmetric(vertical: 100),
      dayShapeBorder: CircleBorder(
          side: BorderSide(width: 3, color: Colors.grey.shade200)),
      weekendsStyle: TextStyle(
          color: Colors.pink.shade100,
          fontWeight: FontWeight.w600,
          fontSize: Config.smallSizeText),
      pressedDateBackgroundColor: Colors.greenAccent.shade100,
      backgroundColor: Colors.transparent,
      dateStyle: TextStyle(
          color: Colors.black, fontSize: Config.smallSizeText),
      todayDateStyle: TextStyle(
          color: Config.whiteColor, fontSize: Config.smallSizeText),
      dayOfWeekStyle: const TextStyle(color: Colors.grey),
      dayOfWeek: const [
        'ПН',
        'ВТ',
        'СР',
        'ЧТ',
        'ПТ',
        'СБ',
        'ВС',
      ],
      controller: _controller,
      height: 100,
      showMonth: true,
      minDate: DateTime.now().add(
        const Duration(days: -365),
      ),
      maxDate: DateTime.now().add(
        const Duration(days: 365),
      ),
      onDatePressed: (DateTime datetime) {
        // Do something
        setState(() {});
      },
      onDateLongPressed: (DateTime datetime) {
        // Do something
      },
      onWeekChanged: () {
        // Do something
      },
      monthViewBuilder: (DateTime time) => Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
      ),
    );
  }
}
