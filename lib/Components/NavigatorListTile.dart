import 'package:flutter/material.dart';

class NavigatorListTile extends StatelessWidget {
  final String routeName;
  final String title;
  final Icon icon;
  final Color backgroundColor;
  final Color textColor;

  NavigatorListTile({
    Key key,
    @required this.routeName,
    @required this.title,
    @required this.icon,
    this.backgroundColor,
    this.textColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor == null ? Theme.of(context).primaryColor : backgroundColor,
      child: ListTile(
        onTap: () => Navigator.pushNamed(
            context, routeName),
        leading: this.icon,
        title: Text(
          '$title',
          style: TextStyle(color: textColor == null ? Colors.white : textColor),
        ),
      ),
    );
  }
}
