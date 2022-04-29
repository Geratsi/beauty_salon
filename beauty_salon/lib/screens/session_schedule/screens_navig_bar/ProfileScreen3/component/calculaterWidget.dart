
import 'package:beauty_salon/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalculatorWidget extends StatefulWidget {
  const CalculatorWidget({Key? key}) : super(key: key);

  @override
  State<CalculatorWidget> createState() => _CalculatorWidgetState();
}

class _CalculatorWidgetState extends State<CalculatorWidget> {

  @override
  void initState() {
    super.initState();
    // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    //   statusBarColor: Colors.blue,
    // ));

   // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  void dispose() {
    super.dispose();
    // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    //   statusBarColor: Config.primaryColor,
    // ));

    //SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);

  }

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.93,
        maxChildSize: 0.93,
        minChildSize: 0.5,
        builder: (context, controller) => Container(
          decoration: BoxDecoration(
            color: Config.primaryColor,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(Config.borderRadius * 2),),
          ),
          child: Padding(
            padding: EdgeInsets.all(Config.padding),
            child: Column(
              children: [
                SizedBox(height: Config.padding,),
                Text('Калькулятор',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: Config.mediumSizeText),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: Config.padding / 2,),
                const Divider(),
                SizedBox(height: Config.padding,),
                TextFormField(

                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Config.bigSizeText,
                  ),

                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                      borderSide: BorderSide(
                          color: Colors.grey.shade200, width: 2.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                      borderSide: BorderSide(
                          color: Colors.grey.shade200, width: 1.5),
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      horizontal: Config.padding,
                      vertical: Config.padding * 1.5,),

                    labelText: 'Цель, Р/мес.',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: Config.verySmallSizeText),

                    filled: true,
                    fillColor: Config.whiteColor,

                  ),
                ),
                SizedBox(height: Config.padding,),
                TextFormField(
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Config.bigSizeText,
                  ),

                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                      borderSide: BorderSide(
                          color: Colors.grey.shade200, width: 2.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                      borderSide: BorderSide(
                          color: Colors.grey.shade200, width: 1.5),
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      horizontal: Config.padding,
                      vertical: Config.padding * 1.5,),

                    labelText: 'Клиенты, чел./мес',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: Config.verySmallSizeText),

                    filled: true,
                    fillColor: Config.whiteColor,
                  ),
                ),
                SizedBox(height: Config.padding,),
                TextFormField(
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: Config.bigSizeText,
                  ),

                  decoration: InputDecoration(

                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                    ),

                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                      borderSide: BorderSide(
                          color: Colors.grey.shade200, width: 2.0),
                    ),

                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          Config.borderRadius,
                        ),
                      ),
                      borderSide: BorderSide(
                          color: Colors.grey.shade200, width: 1.5),
                    ),

                    contentPadding: EdgeInsets.symmetric(
                      horizontal: Config.padding,
                      vertical: Config.padding * 1.5,),

                    labelText: 'Средний чек, Р/чел.',
                    labelStyle: TextStyle(color: Colors.grey, fontSize: Config.verySmallSizeText),

                    filled: true,
                    fillColor: Config.whiteColor,
                  ),
                ),

              ],
            ),
          ),
        ),
    );
  }
}

