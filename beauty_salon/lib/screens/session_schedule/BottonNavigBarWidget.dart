
import 'package:beauty_salon/Api.dart';
import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/screens/session_schedule/screens_navig_bar/PresentationScreen2/PresentationScreen.dart';
import 'package:beauty_salon/screens/session_schedule/screens_navig_bar/ProfileScreen3/ProfileScreen.dart';
import 'package:beauty_salon/screens/session_schedule/screens_navig_bar/ScheduleScreen1/ScheduleScreen.dart';
import 'package:beauty_salon/tools/HumanData.dart';
import 'package:beauty_salon/tools/Services.dart';
import 'package:flutter/material.dart';

class SessionSchedule extends StatefulWidget {
  const SessionSchedule({Key? key}) : super(key: key);

  @override
  State<SessionSchedule> createState() => _SessionScheduleState();
}

class _SessionScheduleState extends State<SessionSchedule> {

  late List<HumanData> humanData;

  late List<Services> services;
  
  @override
  void initState() {
    Api.apiHumanData().then((value) {
      setState(() {
        humanData = value;
      });
    });
    super.initState();

    Api.apiServices().then((value) {
        setState(() {
          services = value;
        });
      });
  }

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _selectedIndex == 0 ?
      ScheduleScreen(humanData: humanData,) :
          _selectedIndex == 1 ?
          PresentationScreen(services: services,) :
              _selectedIndex == 2 ?
              const ProfileScreen() :
                  const Center(
                    child: CircularProgressIndicator(),
                  ),

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
