import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Constants/Colors.dart';
import 'Constants/RouteNames.dart';
import 'Route/Router.dart' as myRoute;

void main() {
  runApp(HomeView());
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: greenColor,
        textTheme: TextTheme(
          bodyText2: TextStyle(color: Colors.white),
        ),
        scaffoldBackgroundColor: scaffoldBackgroundColor,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(color: Colors.white),
        ),
        appBarTheme: AppBarTheme(
          brightness: Brightness.dark,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      initialRoute: homeRoute,
      onGenerateRoute: myRoute.Router.generateRoute,
    );
  }
}
