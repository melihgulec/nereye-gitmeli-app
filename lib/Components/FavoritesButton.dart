import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Components/NavigatorListTile.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class FavoritesButton extends StatelessWidget {
  final Color backgroundColor;
  final Color textColor;
  final Color iconColor;
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
