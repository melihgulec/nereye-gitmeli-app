import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Components/NavigatorListTile.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class TargetButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
  TargetButton({this.backgroundColor, this.textColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return NavigatorListTile(
      title: 'Hedeflerim',
      icon: Icon(Icons.assignment_rounded, color: iconColor == null ? Colors.white : iconColor,),
      routeName: myRouteNames.targetRoute,
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
  }
}
