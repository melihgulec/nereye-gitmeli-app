import 'package:flutter/material.dart';

import 'package:nereye_gitmeli_app/Constants/Colors.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Giriş Yap'),
      ),
      body: Center(
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
                    'Nereye Gitmeli?',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: double.infinity,
                    child: Text(
                      'KULLANICI ADI',
                      style: TextStyle(fontSize: 13),
                    ),
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff2CA1C0),
                            ))),
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
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xff2CA1C0),
                            ))),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text('Hesabın yok mu? Kayıt olmak için tıkla.')),
                  SizedBox(
                    height: 15,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.symmetric(horizontal: 100),
                    child: Text('GİRİŞ YAP'),
                    onPressed: () {},
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
