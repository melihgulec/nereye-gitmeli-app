import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Constants/Colors.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';
import 'package:nereye_gitmeli_app/Services/AuthService.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:shared_preferences/shared_preferences.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  SharedPreferences prefs;
  String eMail = "";
  String pass = "";
  String passValidation = "";
  String name = "";

  AuthService _authService = AuthService();

  Future getPrefs() async{
    prefs = await SharedPreferences.getInstance();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kayıt Ol'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: secondColor,
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Kayıt Ol',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'ADINIZ',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value){
                        name = value;
                      },

                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff2CA1C0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'E-MAIL',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value){
                        eMail = value;
                      },
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff2CA1C0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'PAROLA',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value){
                        pass = value;
                      },
                      obscureText: true,
                      enableSuggestions: false,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff2CA1C0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15,),
                    Container(
                      width: double.infinity,
                      child: Text(
                        'PAROLA TEKRAR',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                    TextField(
                      onChanged: (value){
                        passValidation = value;
                      },
                      obscureText: true,
                      enableSuggestions: false,
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xff2CA1C0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),

                    ElevatedButton(
                      onPressed: () {
                        if(name.trim() == ""){
                          ToastHelper().makeToastMessage('Lütfen adınızı doldurunuz.');
                        }else if(eMail.trim() == ""){
                          ToastHelper().makeToastMessage('Lütfen mailinizi doldurunuz.');
                        }else if(pass.trim() == ""){
                          ToastHelper().makeToastMessage('Lütfen şifrenizi doldurunuz.');
                        }else if(passValidation.trim() == ""){
                          ToastHelper().makeToastMessage('Lütfen şifrenizi ikinci kez giriniz.');
                        }else if(pass.trim() != passValidation.trim()){
                          ToastHelper().makeToastMessage('Şifreler uyuşmuyor. Lütfen tekrar deneyin.');
                        }else if(pass.trim() == passValidation.trim()){
                          _authService.createUser(name, eMail, pass).then((value){
                            if(value != null){
                              Navigator.pushNamed(context, myRouteNames.homeRoute);
                            }else{
                              ToastHelper().makeToastMessage('Kayıt olurken bir sorun oluştu.');
                            }
                          });
                        }
                      },
                      child: Text('Kayıt Ol'),
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                        padding: EdgeInsets.symmetric(horizontal: 110),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
