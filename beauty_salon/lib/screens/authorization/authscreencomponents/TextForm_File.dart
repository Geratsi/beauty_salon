import 'dart:async';

import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/screens/schedulepage/Schedule_Page.dart';
import 'package:flutter/material.dart';
import 'package:easy_mask/easy_mask.dart';

class TextFormWidget extends StatefulWidget {
  const TextFormWidget({Key? key}) : super(key: key);


  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {

  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();

  bool obscureText = true;

  bool errorText = false;

  final _formKey = GlobalKey<FormState>();

  void navigation(){
    if (passwordController.text.length < 8 || numberController.text.length < 15){
      errorText = true;
      setState(() {});
      Timer(const Duration(seconds: 2), () {
        errorText = false;
        setState(() {});
      });

    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainSchedulPage()),);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Config.padding),
      child: Form(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: numberController,

              inputFormatters: [TextInputMask(mask: '(999) 999 99 99')],

              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: Config.bigSizeText,
              ),

              keyboardType: const TextInputType.numberWithOptions(
                signed: false,
                decimal: false,
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
                      color: Colors.red.shade50, width: 1.5),
                ),

                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Config.borderRadius,),
                  borderSide:  BorderSide(color: Colors.red.shade100, width: 2.0),
                ),

                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Config.borderRadius,),
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 1.5),
                ),

                errorText: errorText ? 'Пользователь не авторизирован' : null,
                errorStyle: TextStyle(color: Colors.red.shade200),

                contentPadding: EdgeInsets.symmetric(
                  horizontal: Config.padding,
                  vertical: Config.padding * 1.5,),

                labelText: 'Телефон',
                labelStyle: TextStyle(color: Colors.grey, fontSize: Config.verySmallSizeText),

                prefix: const Text('+7 '),
                filled: true,
                fillColor: Config.whiteColor,

              ),
            ),

            SizedBox(height: Config.padding,),

            TextFormField(

              controller: passwordController,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: Config.bigSizeText),
              keyboardType: TextInputType.emailAddress,
              obscureText: obscureText,

              decoration: InputDecoration(

                border: OutlineInputBorder(
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
                      color: Colors.red.shade50, width: 1.5),
                ),

                errorBorder:  OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Config.borderRadius,),
                  borderSide:  BorderSide(color: Colors.red.shade100, width: 2.0),
                ),

                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(Config.borderRadius,),
                  borderSide: BorderSide(color: Colors.grey.shade200, width: 1.5),
                ),

                contentPadding: EdgeInsets.symmetric(
                  horizontal: Config.padding,
                  vertical: Config.padding * 1.5,),

                labelText: 'Пароль',
                labelStyle: TextStyle(color: Colors.grey,
                    fontSize: Config.verySmallSizeText),
                filled: true,
                fillColor: Config.whiteColor,

                suffixIcon: IconButton(
                  splashColor: Colors.transparent,
                  padding: EdgeInsets.only(right: Config.padding),
                  icon: obscureText
                      ? Icon(Icons.visibility, color: Colors.grey.shade300,)
                      : Icon(Icons.visibility_off, color: Colors.grey.shade400,),
                  onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                  },
                ),

                errorText: errorText ? 'Пользователь не авторизирован' : null,
                errorStyle: TextStyle(color: Colors.pink.shade200),

              ),

              validator: (value){
                if (value == null || value.isEmpty) {
                  return null;
                } else if(value.length < 8) {
                  return 'Минимум 8 символов';
                }
              },

            ),

            SizedBox(height: Config.padding * 2,),

            TextButton(
              child: Text('Забыли пароль?',
                  style: TextStyle(
                    fontSize: Config.smallSizeText,
                    color: Colors.lightBlueAccent.shade200,)),
              onPressed: () {}
            ),

            SizedBox(height: Config.padding * 2,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shadowColor: Config.primaryColor,
                onSurface: Colors.white,
                fixedSize: const Size(135, 52),
                primary: Colors.cyan.shade100,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Config.borderRadius * 3,)
                )
              ),
                onPressed: navigation,
                child: Text('Войти',
                  style: TextStyle(
                    fontSize: Config.mediumSizeText,),
                ),
            )
          ],
        ),
      ),
    );
  }
}


