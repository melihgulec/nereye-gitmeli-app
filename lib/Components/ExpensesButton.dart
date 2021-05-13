import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Components/NavigatorListTile.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class ExpensesButton extends StatelessWidget {
  Color backgroundColor;
  Color textColor;
  Color iconColor;
  ExpensesButton({this.backgroundColor, this.textColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return NavigatorListTile(
      title: 'Gezi Bütçesi',
      icon: Icon(Icons.bookmark_outlined, color: iconColor == null ? Colors.white : iconColor,),
      routeName: myRouteNames.expensesRoute,
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
  }
}
