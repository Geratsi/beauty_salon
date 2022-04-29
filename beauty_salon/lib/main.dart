
import 'package:beauty_salon/config.dart';
import 'package:flutter/material.dart';
import 'package:beauty_salon/screens/authorization/Auth_File.dart';
import 'package:flutter/services.dart';
import 'package:beauty_salon/config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Config.primaryColor, // status bar color
      statusBarIconBrightness: Brightness.dark, // status bar icons' color
      systemNavigationBarIconBrightness: Brightness.dark, //navigation bar icons' color
    ));
    return MaterialApp(
      title: 'Beauty salon',
      theme: ThemeData(
        primarySwatch: MaterialColor(Config.primaryColor.value, {
          50:Config.primaryColor.withOpacity(.1),
          100:Config.primaryColor.withOpacity(.2),
          200:Config.primaryColor.withOpacity(.3),
          300:Config.primaryColor.withOpacity(.4),
          400:Config.primaryColor.withOpacity(.5),
          500:Config.primaryColor.withOpacity(.6),
          600:Config.primaryColor.withOpacity(.7),
          700:Config.primaryColor.withOpacity(.8),
          800:Config.primaryColor.withOpacity(.9),
          900:Config.primaryColor.withOpacity(1),
        }),
        scaffoldBackgroundColor: Config.primaryColor,
        //appBarTheme: AppBarTheme(centerTitle: true),
        primaryColor: Config.primaryColor,
        //primaryColorLight:MaterialColor(Config.primaryColor.value, {}),
        highlightColor: Colors.transparent,
        textSelectionHandleColor: Config.primaryColor,
      ),
      home: const AuthorizationWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}


