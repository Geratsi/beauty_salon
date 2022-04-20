
import 'package:beauty_salon/config.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, this.height, this.width,
    this.borderRadius, this.color}) : super(key: key);


  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.cyan.shade100,
        borderRadius: BorderRadius.circular(borderRadius ?? Config.borderRadius * 2.5),
      ),
      height: height ?? 60,
      width: width ?? 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(Config.borderRadius * 2.5),
        child: InkWell(
          splashColor: Colors.black,
          borderRadius: BorderRadius.circular(Config.borderRadius * 2.5),
          onTap: (){},
        ),
      ),
    );
  }
}