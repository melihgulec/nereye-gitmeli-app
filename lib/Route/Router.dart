import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Screens/CityDetail.dart';
import 'package:nereye_gitmeli_app/Screens/FavoritesScreen.dart';
import 'package:nereye_gitmeli_app/Screens/Hakkinda.dart';
import 'package:nereye_gitmeli_app/Screens/HomeScreen.dart';
import 'package:nereye_gitmeli_app/Screens/LoginScreen.dart';
import 'package:nereye_gitmeli_app/Screens/TargetScreen.dart';
import 'package:nereye_gitmeli_app/Screens/NotFoundScreen.dart';
import 'package:nereye_gitmeli_app/Screens/AddTargetScreen.dart';
import 'package:nereye_gitmeli_app/Screens/PlanScreen.dart';
import 'package:nereye_gitmeli_app/Screens/AddPlanScreen.dart';
import 'package:nereye_gitmeli_app/Screens/PlacesDetail.dart';
import 'package:nereye_gitmeli_app/Screens/CityCommentsScreen.dart';
import 'package:nereye_gitmeli_app/Screens/TargetDetail.dart';
import 'package:nereye_gitmeli_app/Screens/ExpensesScreen.dart';
import 'package:nereye_gitmeli_app/Screens/AddExpenseScreen.dart';
import 'package:nereye_gitmeli_app/Screens/ExpenseDetailScreen.dart';
import 'package:nereye_gitmeli_app/Screens/RegisterScreen.dart';
import 'package:nereye_gitmeli_app/Screens/ProfileScreen.dart';
import 'package:nereye_gitmeli_app/Screens/PlanDetailScreen.dart';

import 'package:nereye_gitmeli_app/Constants/RouteNames.dart';

class Router{
  static Route<dynamic> generateRoute(RouteSettings settings){
    List<dynamic> args = (settings.arguments is List<dynamic> ? settings.arguments : null);
    switch(settings.name){
      case homeRoute: return MaterialPageRoute(builder: (context) => HomeScreen());
      case cityDetailRoute: return MaterialPageRoute(builder: (context) => CityDetail(data: settings.arguments,));
      case loginRoute: return MaterialPageRoute(builder: (context) => LoginScreen());
      case favoritesRoute: return MaterialPageRoute(builder: (context) => FavoritesScreen());
      case targetRoute: return MaterialPageRoute(builder: (context) => TargetScreen());
      case addTargetRoute: return MaterialPageRoute(builder: (context) => AddTargetScreen());
      case hakkindaRoute: return MaterialPageRoute(builder: (context) => Hakkinda());
      case planRoute: return MaterialPageRoute(builder: (context) => PlanScreen());
      case addPlanRoute: return MaterialPageRoute(builder: (context) => AddPlanScreen());
      case placesDetailRoute: return MaterialPageRoute(builder: (context) => PlacesDetail(yerData: args[0], sehirData: args[1],));
      case cityCommentsRoute: return MaterialPageRoute(builder: (context) => CityCommentsScreen(sehirData: settings.arguments,));
      case targetDetailRoute: return MaterialPageRoute(builder: (context) => TargetDetail(hedef: settings.arguments,));
      case expensesRoute: return MaterialPageRoute(builder: (context) => ExpensesScreen());
      case registerRoute: return MaterialPageRoute(builder: (context) => RegisterScreen());
      case profileRoute: return MaterialPageRoute(builder: (context) => ProfileScreen());
      case planDetailRoute: return MaterialPageRoute(builder: (context) => PlanDetailScreen(plan: settings.arguments,));
      case addExpenseRoute: return MaterialPageRoute(builder: (context) => AddExpenseScreen());
      case expenseDetailRoute: return MaterialPageRoute(builder: (context) => ExpenseDetailScreen(expense: settings.arguments,));
      default:
        return MaterialPageRoute(builder: (context) => NotFoundScreen());
    }
  }
}