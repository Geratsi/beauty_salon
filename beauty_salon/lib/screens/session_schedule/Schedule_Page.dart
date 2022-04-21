import 'package:beauty_salon/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';
import 'package:intl/intl.dart';
import 'dart:math' as math;

class SessionSchedule extends StatefulWidget {
  const SessionSchedule({Key? key}) : super(key: key);

  @override
  State<SessionSchedule> createState() => _SessionScheduleState();
}

class _SessionScheduleState extends State<SessionSchedule> {
  final CalendarWeekController _controller = CalendarWeekController();

  final List _listItems = ['f', 'f', 'f', 'f', 'f','j','j'];

  Widget checkingTheMonth() {
    return _controller.selectedDate.month == 1
        ? const Text('Январь')
        : _controller.selectedDate.month == 2
            ? const Text('Февраль')
            : _controller.selectedDate.month == 3
                ? const Text('Март')
                : _controller.selectedDate.month == 4
                    ? const Text('Апрель')
                    : _controller.selectedDate.month == 5
                        ? const Text('Май')
                        : _controller.selectedDate.month == 6
                            ? const Text('Июнь')
                            : _controller.selectedDate.month == 7
                                ? const Text('Июль')
                                : _controller.selectedDate.month == 8
                                    ? const Text('Август')
                                    : _controller.selectedDate.month == 9
                                        ? const Text('Сентябрь')
                                        : _controller.selectedDate.month == 10
                                            ? const Text('Октябрь')
                                            : _controller.selectedDate.month ==
                                                    11
                                                ? const Text('Ноябрь')
                                                : _controller.selectedDate
                                                            .month ==
                                                        12
                                                    ? const Text('Декабрь')
                                                    : const Text('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: SafeArea(
          child: AppBar(
            elevation: 0,
            shadowColor: Config.primaryColor,
            //backgroundColor: Config.primaryColor,
            backgroundColor: Colors.white70,
            title: Padding(
              padding: EdgeInsets.only(left: Config.padding / 2),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  checkingTheMonth(),
                  PopupMenuButton(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(Config.borderRadius)),
                    color: Colors.blue.shade50,
                    onCanceled: () {},
                    icon: const Icon(
                      Icons.arrow_drop_down_outlined,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: checkingTheMonth(),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: Config.smallSizeText,
                            color: Colors.brown),
                        // child: Text(
                        //   'Октябрь',
                        //   style: TextStyle(
                        //       fontSize: Config.smallSizeText,
                        //       fontWeight: FontWeight.w600),
                        // ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            actions: [
              IconButton(
                splashColor: Colors.grey.shade300,
                padding: EdgeInsets.only(
                  right: Config.padding,
                ),
                onPressed: () {},
                icon: const Icon(
                  Icons.add_alert_rounded,
                  color: Colors.brown,
                  size: 30,
                ),
              )
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Config.primaryColor, boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    blurRadius: 10,
                    spreadRadius: 5)
              ]),
              child: CalendarWeek(
                marginMonth: const EdgeInsets.symmetric(vertical: 100),
                dayShapeBorder: CircleBorder(
                    side: BorderSide(width: 3, color: Colors.grey.shade200)),
                weekendsStyle: TextStyle(
                    color: Colors.pink.shade100,
                    fontWeight: FontWeight.w600,
                    fontSize: Config.smallSizeText),
                pressedDateBackgroundColor: Colors.greenAccent.shade100,
                backgroundColor: Config.primaryColor,
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
              ),
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _listItems.length,
        itemBuilder: (_, index) {
          return Card(
            margin:
                const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(1.0),
            child: Container(
              padding: const EdgeInsets.all(30),
              child: Text(
                _listItems[index],
                style: const TextStyle(fontSize: 24),
              ),
            ),
          );
        },
      ),
    );
  }
}
