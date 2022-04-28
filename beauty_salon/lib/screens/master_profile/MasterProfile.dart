
import 'package:beauty_salon/config.dart';
import 'package:flutter/material.dart';

class MasterProfile extends StatefulWidget {
  const MasterProfile({Key? key}) : super(key: key);

  @override
  State<MasterProfile> createState() => _MasterProfileState();
}

class _MasterProfileState extends State<MasterProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextButton(
          child: const Text('Назад',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
