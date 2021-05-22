import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Constants/Colors.dart';
import 'package:nereye_gitmeli_app/Services/AuthService.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  SharedPreferences prefs;
  String eMail;
  String pass;

  AuthService _authService = AuthService();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrefs();
  }

  void getPrefs() async{
    prefs = await SharedPreferences.getInstance();
  }

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
                      fontWeight: FontWeight.bold,
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
                    keyboardType: TextInputType.emailAddress,
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
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, myRouteNames.registerRoute);
                      },
                      child: Text('Hesabın yok mu? Kayıt olmak için tıkla.')),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _authService.signIn(eMail, pass).then((value){
                        if(value != null){
                          Stream<QuerySnapshot> snap = FirebaseFirestore.instance.collection('User').where('email', isEqualTo: eMail).snapshots();
                          snap.forEach((element) {
                            if(element == null){
                              return;
                            }
                            prefs.setString('name', element.docs[0].data()['name']);
                          });
                          prefs.setBool('isLogged', true);
                          prefs.setString('userMail', eMail);
                          return Navigator.pushNamed(context, myRouteNames.homeRoute);
                        }
                      });
                    },
                    child: Text('GİRİŞ'),
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
    );
  }
}
