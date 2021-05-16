import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Components/NavigatorListTile.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class PlanButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  PlanButton({this.backgroundColor, this.textColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return NavigatorListTile(
      title: 'Planlama',
      icon: Icon(Icons.bookmark_outlined, color: iconColor == null ? Colors.white : iconColor,),
      routeName: myRouteNames.planRoute,
      backgroundColor: backgroundColor,
      textColor: textColor
    );
  }
}