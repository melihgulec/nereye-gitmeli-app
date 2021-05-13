import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Components/NavigatorListTile.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class FavoritesButton extends StatelessWidget {
  Color backgroundColor;
  Color textColor;
  Color iconColor;
  FavoritesButton({this.backgroundColor, this.textColor, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return NavigatorListTile(
      title: 'Favorilerim',
      icon: Icon(Icons.favorite, color: iconColor == null ? Colors.white : iconColor,),
      routeName: myRouteNames.favoritesRoute,
      backgroundColor: backgroundColor,
      textColor: textColor,
    );
  }
}
