
import 'package:beauty_salon/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainSchedulPage extends StatefulWidget {
  const MainSchedulPage({Key? key}) : super(key: key);

  @override
  State<MainSchedulPage> createState() => _MainSchedulPageState();
}

class _MainSchedulPageState extends State<MainSchedulPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(120.0),
          child: SafeArea(
            child: AppBar(
              shadowColor: Colors.white,
              backgroundColor: Config.primaryColor,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Сентябрь',
                    style: TextStyle(
                        fontSize: Config.bigSizeText,),),
                  PopupMenuButton(
                    onCanceled: (){},
                    icon: const Icon(
                      Icons.arrow_drop_down_outlined,),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text(
                          'Октябрь',
                          style: TextStyle(
                              fontSize: Config.smallSizeText),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      ),

    );
  }
}
