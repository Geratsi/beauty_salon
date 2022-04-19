import 'package:beauty_salon/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_mask/easy_mask.dart';

class TextFormWidget extends StatefulWidget {
  const TextFormWidget({Key? key}) : super(key: key);

  @override
  State<TextFormWidget> createState() => _TextFormWidgetState();
}

class _TextFormWidgetState extends State<TextFormWidget> {

  final _formKey = GlobalKey<FormState>();

  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Config.padding),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
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
              ),
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

          ],
        ),
      ),
    );
  }
}
