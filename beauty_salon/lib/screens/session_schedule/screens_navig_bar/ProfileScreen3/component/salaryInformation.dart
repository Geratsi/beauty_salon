import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/screens/session_schedule/screens_navig_bar/ProfileScreen3/component/calculaterWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SalaryInformation extends StatefulWidget {
  const SalaryInformation({Key? key}) : super(key: key);

  @override
  State<SalaryInformation> createState() => _SalaryInformationState();
}

class _SalaryInformationState extends State<SalaryInformation> {
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
                onTap: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(Config.borderRadius * 2),
                        ),
                      ),
                      isScrollControlled: true,
                      context: (context),
                      enableDrag: true,
                      isDismissible: true,
                      builder: (context) {
                        return const CalculatorWidget();
                      });
                },
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
              SizedBox(height: Config.padding,),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: Config.padding / 2),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Зарплата',
                          style: TextStyle(
                          fontSize: Config.smallSizeText,
                          fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('31182 P'),
                      ],
                    ),
                    SizedBox(height: Config.padding / 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Начислено',
                          style: TextStyle(
                            fontSize: Config.smallSizeText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('10000 P'),
                      ],
                    ),
                    SizedBox(height: Config.padding / 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Осталось до цели',
                          style: TextStyle(
                            fontSize: Config.smallSizeText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('21182 P'),
                      ],
                    ),
                    SizedBox(height: Config.padding / 2,),
                    Divider(),
                    SizedBox(height: Config.padding / 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Оказано услуг',
                          style: TextStyle(
                            fontSize: Config.smallSizeText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('20982 P'),
                      ],
                    ),
                    SizedBox(height: Config.padding / 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Продано товаров',
                          style: TextStyle(
                            fontSize: Config.smallSizeText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('10200 P'),
                      ],
                    ),
                    SizedBox(height: Config.padding / 2,),
                    Divider(),
                    SizedBox(height: Config.padding / 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Премии',
                          style: TextStyle(
                            fontSize: Config.smallSizeText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text('+ 500 P'),
                      ],
                    ),
                    SizedBox(height: Config.padding / 2,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Штрафы',
                          style: TextStyle(
                            fontSize: Config.smallSizeText,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Text('- 200 P',
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

