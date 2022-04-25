
import 'package:beauty_salon/entity/Calendar.dart';
import 'package:beauty_salon/tools/HumanData.dart';
import 'package:beauty_salon/tools/Services.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class Api{
  
  
  static Future<List<HumanData>> apiHumanData() async{
    List <HumanData> humans = [];
    humans.add(HumanData( null, 'Elizabet', 'Turner', '12:00', ['Пилинг', 'Массаж лица',], '+7 (911) 111-11-11',));
    humans.add(HumanData( null, 'Elizabet', 'Turner', '12:00', ['Скраб', 'Массаж',], '+7(983) 333-33-33',));
    humans.add(HumanData( null, 'Elizabet', 'Turner', '12:00', ['Массаж', 'Шугарин',], '+7(935)222-22-22',));
    humans.add(HumanData( '', 'Elizabet', 'Turner', '18:00', ['Пилинг', 'Массаж лица',], '+7(936)666-66-66',));
    humans.add(HumanData( '', 'Elizabet', 'Turner', '19:00', ['Маникюр', 'Шунаринг',], '+7(937)777-77-77',));
    humans.add(HumanData( '', 'Elizabet', 'Turner', '16:00', ['Педикюр', 'Маникюр',], '+7(938)888-88-88',));
    humans.add(HumanData( null, 'Elizabet', 'Turner', '12:00', ['Шугаринг', 'Массаж лица',], '+7(939)999-99-99',));
    humans.add(HumanData( '', 'Elizabet', 'Turner', '12:00', ['Пилинг', 'Окраштвание волос',], '+7(900)000-00-00',));
    return humans;
  }
  
  static Future<List<Services>> apiServices() async {
    List <Services> services= [];
    services.add(Services('УХОД HYDRAFACIAL', 2.3, 'PDF'));
    services.add(Services('ХОЛОДНЫЙ ЛАЗЕРНЫЙ ПИЛИНГ', 2.3, 'JPG'));
    services.add(Services('ПЛАЗМОТЕРАПИЯ', 2.3, 'PDF'));
    services.add(Services('ЛАЗЕРНАЯ ЭПИЛЯЦИЯ', 2.3, 'PDF'));
    services.add(Services('4D-ОМОЛОЖЕНИЕ', 2.3, 'PDF'));
    return services;
  }
}



//static _enableCertificate(Dio dio) {
// (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
//   client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
//   return client;
// };
//}

// static Future<Calendar> calendar(){

//Dio dio = new Dio();
// _enableCertificate(dio);
//
// Response response = await dio.get(Config.getWeatherUrl);
//
// return Weather(response.data);
//
//   return Calendar();
// }