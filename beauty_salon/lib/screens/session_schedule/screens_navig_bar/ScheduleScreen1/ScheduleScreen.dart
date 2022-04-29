
import 'dart:math';

import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/entity/Calendar.dart';
import 'package:beauty_salon/screens/session_schedule/screens_navig_bar/ScheduleScreen1/%D0%A1ompletionProcess.dart';
import 'package:beauty_salon/tools/HumanData.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

class ScheduleScreen extends StatefulWidget {
  ScheduleScreen({Key? key,
    required this.humanData
  }) : super(key: key);

  final List <HumanData> humanData;

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {

  List<HumanData> humansData = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      humansData = widget.humanData;
    });
  }

  final List<Color> circleColors = [
    Colors.lightGreen.shade50,
    Colors.brown.shade50,
    Colors.white54,
    Colors.red.shade50,
    Colors.blue.shade50,
    Colors.orange.shade50,
    Colors.lime.shade50,
    Colors.pink.shade50,
    Colors.deepPurple.shade50,
    Colors.teal.shade50,
  ];

  Color randomGenerator() {
    return circleColors[Random().nextInt(humansData.length)];
  }

  final CalendarWeekController _controller = CalendarWeekController();

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
        : _controller.selectedDate.month == 11
        ? const Text('Ноябрь')
        : _controller.selectedDate.month == 12
        ? const Text('Декабрь')
        : const Text('');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: Colors.white),
        shadowColor: Colors.white,
        elevation: 0.2,
        backgroundColor: Config.whiteColor,
        title: Padding(
          padding: EdgeInsets.only(
              left: Config.padding / 2, top: Config.padding / 2),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              checkingTheMonth(),
              PopupMenuButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Config.borderRadius)),
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
          Padding(
            padding: EdgeInsets.only(
              top: Config.padding / 2,
              right: Config.padding / 2,
            ),
            child: IconButton(
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
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            child:const CalendarWidget(),
          ),
        ),
      ),
      body: Container(
        color: Config.primaryColor,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: Config.padding),
          itemCount: humansData.length,
          itemBuilder: (BuildContext context, index) {
            return GestureDetector(
              onTap: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) =>
                    CompletionProcess(humanData: humansData[index],)));
              },
              child: InkWell(
                //onTap: (){},
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                    Config.borderRadius,
                  ),),
                  elevation: 0.1,
                  margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  color: randomGenerator(),
                  child: Padding(
                    padding: EdgeInsets.all(Config.padding),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(humansData[index].recordingTime),
                            Icon(Icons.access_alarm),
                          ],
                        ),
                        Row(
                          children: [
                            Text(humansData[index].name + ' ' + humansData[index].surname),
                            SizedBox(width: 30,),
                            Text(humansData[index].number),
                          ],
                        ),
                        SizedBox(height: Config.padding / 4,),
                        Row(
                          children: [
                            for (var i in humansData[index].services)
                            Text(i + ',  '),
                          ],
                        )
                      ],
                    ),
                  )
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
