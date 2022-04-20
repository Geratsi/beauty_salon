
import 'package:beauty_salon/config.dart';
import 'package:flutter/material.dart';

class ShapesWidget extends StatefulWidget {
  const ShapesWidget({Key? key}) : super(key: key);

  @override
  State<ShapesWidget> createState() => _ShapesWidgetState();
}

class _ShapesWidgetState extends State<ShapesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Config.padding * 5,),
        SizedBox(
          width: 38,
          height: 38,
          child: Image.asset('assets/image/image1.png'),
        ),
        Container(
          height: 23,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.red.shade300,
            border: Border.all(color: Config.primaryColor, width: 0.0),
            borderRadius: const BorderRadius.all(Radius.elliptical(90, 50)),
          ),
          margin: EdgeInsets.only(top: Config.padding / 2),
        ),
        SizedBox(height:Config.padding * 1.5,),
        Text('Личный кабинет',
          style: TextStyle(
            fontWeight: FontWeight.w500, fontSize: Config.bigSizeText,
          ),
        ),
        SizedBox(height: Config.padding / 2,),
        Text(
          'Укажите номер телефона и пароль',
          style: TextStyle(
            fontSize: Config.smallSizeText,
          ),
        ),
        SizedBox(height: Config.padding * 1.5),
      ],
    );
  }
}