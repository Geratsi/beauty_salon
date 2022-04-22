import 'dart:math';

import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/screens/session_schedule/components/ScreensNavigationBar/PresentationScreen2/PresentationScreen.dart';
import 'package:beauty_salon/screens/session_schedule/components/ScreensNavigationBar/ProfileScreen3/ProfileScreen.dart';
import 'package:beauty_salon/screens/session_schedule/components/ScreensNavigationBar/ScheduleScreen1/ScheduleScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_calendar_week/flutter_calendar_week.dart';

class SessionSchedule extends StatefulWidget {
  const SessionSchedule({Key? key}) : super(key: key);

  @override
  State<SessionSchedule> createState() => _SessionScheduleState();
}

class _SessionScheduleState extends State<SessionSchedule> {

  List<Widget> screensNavigationBar = const [
    ScheduleScreen(),
    PresentationScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screensNavigationBar[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Config.whiteColor,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.water_damage,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wysiwyg_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        iconSize: 30,
        onTap: _onItemTap,
        elevation: 0,
      ),
    );
  }
}
