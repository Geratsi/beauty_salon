import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/tools/HumanData.dart';
import 'package:flutter/material.dart';

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({Key? key, required this.humanData,}) : super(key: key);

  final List<HumanData> humanData;

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(Config.padding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Презентация',
                  style: TextStyle(
                    fontSize: Config.bigSizeText,
                    fontWeight: FontWeight.w500,
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
