import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Screens/CityDetail.dart';
import 'package:nereye_gitmeli_app/Screens/FavoritesScreen.dart';
import 'package:nereye_gitmeli_app/Screens/Hakkinda.dart';
import 'package:nereye_gitmeli_app/Screens/HomeScreen.dart';
import 'package:nereye_gitmeli_app/Screens/LoginScreen.dart';
import 'package:nereye_gitmeli_app/Screens/TargetScreen.dart';
import 'package:nereye_gitmeli_app/Screens/NotFoundScreen.dart';
import 'package:nereye_gitmeli_app/Screens/AddTargetScreen.dart';

import '../Constants/RouteNames.dart';

class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    switch(settings.name){
      case homeRoute: return MaterialPageRoute(builder: (context) => HomeScreen());
      case cityDetailRoute: return MaterialPageRoute(builder: (context) => CityDetail(data: settings.arguments,));
      case loginRoute: return MaterialPageRoute(builder: (context) => LoginScreen());
      case favoritesRoute: return MaterialPageRoute(builder: (context) => FavoritesScreen());
      case targetRoute: return MaterialPageRoute(builder: (context) => TargetScreen());
      case addTargetRoute: return MaterialPageRoute(builder: (context) => AddTargetScreen());
      case hakkindaRoute: return MaterialPageRoute(builder: (context) => Hakkinda());
      default:
        return MaterialPageRoute(builder: (context) => NotFoundScreen());
    }
  }
}