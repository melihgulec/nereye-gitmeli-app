import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastHelper{
  String message;
  var gravity;
  var toastLength;
  Color backgroundColor;
  Color textColor;
  double fontSize;

  static final ToastHelper _instance = ToastHelper._internal();

  factory ToastHelper() {
    return _instance;
  }

  ToastHelper._internal() {
    message = "";
    toastLength = Toast.LENGTH_SHORT;
    gravity = ToastGravity.BOTTOM;
    backgroundColor = Colors.white;
    textColor = Colors.black;
    fontSize = 16.0;
  }


  void makeToastMessage(String message, {var gravity, Color backgroundColor, Color textColor, double fontSize}) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: gravity == null ? this.gravity : gravity,
        timeInSecForIosWeb: 1,
        backgroundColor: backgroundColor == null ? this.backgroundColor : backgroundColor,
        textColor: textColor == null ? this.textColor : textColor,
        fontSize: fontSize == null ? this.fontSize : fontSize,
    );
  }
}