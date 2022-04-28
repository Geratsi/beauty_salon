import 'package:beauty_salon/config.dart';
import 'package:flutter/material.dart';

class CulculatorWidget extends StatefulWidget {
  const CulculatorWidget({Key? key}) : super(key: key);

  @override
  State<CulculatorWidget> createState() => _CulculatorWidgetState();
}

class _CulculatorWidgetState extends State<CulculatorWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Config.whiteColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          Config.borderRadius * 2,
        ),
        topRight: Radius.circular(
          Config.borderRadius * 2,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                Config.borderRadius * 2,
              ),
              topRight: Radius.circular(
                Config.borderRadius * 2,
              ),
            ),
            border: Border.all(
              color: Colors.grey.shade200,
            )),
        child: Padding(
          padding: EdgeInsets.all(Config.padding),
          child: Column(
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Расчет зарплаты за ',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: Config.mediumSizeText,
                          color: Colors.black,
                        ),
                        children: [
                          TextSpan(
                            text: ' Апрель',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: Config.mediumSizeText,
                              color: Colors.blue,
                            ),
                          ),
                        ]),
                  ),
                  PopupMenuButton(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(Config.borderRadius)),
                    color: Colors.blue.shade50,
                    onCanceled: () {},
                    icon: const Icon(
                      Icons.arrow_drop_down_outlined,
                      color: Colors.blue,
                    ),
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text('Апрель'),
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: Config.smallSizeText,
                            color: Colors.blue),
                        // child: Text(
                        //   'Октябрь',
                        //   style: TextStyle(
                        //       fontSize: Config.smallSizeText,
                        //       fontWeight: FontWeight.w600),
                        // ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: Config.padding,
              ),
              GestureDetector(
                onTap: (){},
                child: Row(
                  children: [
                    const Icon(
                      Icons.mobile_friendly,
                      color: Colors.lightGreen,
                    ),
                    SizedBox(
                      width: Config.padding / 2,
                    ),
                    Text(
                      'Калькулятор',
                      style: TextStyle(
                        fontSize: Config.smallSizeText,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.blue.shade300,
                      size: Config.bigSizeText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
