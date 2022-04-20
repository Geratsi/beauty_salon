
import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/screens/authorization/authscreencomponents/ShapesWidget_File.dart';
import 'package:beauty_salon/screens/authorization/authscreencomponents/TextForm_File.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthorizationWidget extends StatefulWidget {
  const AuthorizationWidget({Key? key}) : super(key: key);

  @override
  State<AuthorizationWidget> createState() => _AuthorizationWidgetState();
}

class _AuthorizationWidgetState extends State<AuthorizationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                ShapesWidget(),
                TextFormWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
