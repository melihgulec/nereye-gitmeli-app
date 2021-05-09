import 'dart:convert';

import 'package:nereye_gitmeli_app/Classes/Weather/Weather.dart';
import 'package:http/http.dart' as http;

import 'package:nereye_gitmeli_app/Constants/API.dart' as api;

Future<Weather> getWeather(String cityName) async{
  String myUri = 'http://api.openweathermap.org/data/2.5/weather?q=${cityName.toString()}&appid=${api.APIKey}&units=${api.units}&lang=${api.lang}';
  final response = await http.get(Uri.parse(myUri));
  if(response.statusCode == 200){
    return Weather.fromJson(jsonDecode(response.body));
  }else{
    throw Exception('data error');
  }
}