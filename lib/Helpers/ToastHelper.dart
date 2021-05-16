import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastHelper{
  String _message;
  var _gravity;
  var _toastLength;
  Color _backgroundColor;
  Color _textColor;
  double _fontSize;

  static final ToastHelper _instance = ToastHelper._internal();

  factory ToastHelper() {
    return _instance;
  }

  ToastHelper._internal() {
    _message = "";
    _toastLength = Toast.LENGTH_SHORT;
    _gravity = ToastGravity.BOTTOM;
    _backgroundColor = Colors.white;
    _textColor = Colors.black;
    _fontSize = 16.0;
  }


  void makeToastMessage(String message, {var gravity, Color backgroundColor, Color textColor, double fontSize}) {
    Fluttertoast.showToast(
      msg: message == null ? this._message : message,
      toastLength: this._toastLength,
      gravity: gravity == null ? this._gravity : gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor == null ? this._backgroundColor : backgroundColor,
      textColor: textColor == null ? this._textColor : textColor,
      fontSize: fontSize == null ? this._fontSize : fontSize,
    );
  }
}