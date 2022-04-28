import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/screens/master_profile/MasterProfile.dart';
import 'package:beauty_salon/screens/session_schedule/screens_navig_bar/ProfileScreen3/component/calculaterWidget.dart';
import 'package:beauty_salon/tools/HumanData.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Профиль',
          style: TextStyle(fontSize: Config.bigSizeText),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.only(right: Config.padding / 2),
              child: Text(
                'Выйти',
                style: TextStyle(
                    color: Colors.red.shade300, fontSize: Config.bigSizeText),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(Config.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.rightToLeft,
                      child: MasterProfile(),
                    ),
                  );
                },
                child: Container(
                  height: 110,
                  decoration: BoxDecoration(
                      color: Config.whiteColor,
                      borderRadius: BorderRadius.circular(
                        Config.borderRadius * 2,
                      ),
                      border: Border.all(
                        color: Colors.grey.shade200,
                      )),
                  child: Padding(
                    padding: EdgeInsets.all(Config.padding - 3),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: 250,
                          width: 80,
                          decoration: BoxDecoration(
                            color: Colors.cyan.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                            child: Text(
                              'ЕИ',
                              style: TextStyle(
                                fontSize: Config.verySmallSizeText * 2,
                                fontWeight: FontWeight.w600,
                                color: Config.whiteColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: Config.padding,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Екатерина Иванова',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: Config.bigSizeText,
                                  fontWeight: FontWeight.w600,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: Config.padding / 2,
                              ),
                              const Text('Студия: Epilier Казань'),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: Config.padding * 4,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.blue.shade300,
                          size: Config.bigSizeText,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Config.padding * 2,
              ),
              CulculatorWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
