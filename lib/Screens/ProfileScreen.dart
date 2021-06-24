import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Services/AuthService.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nereye_gitmeli_app/Components/FavoritesButton.dart';
import 'package:nereye_gitmeli_app/Components/TargetButton.dart';
import 'package:nereye_gitmeli_app/Components/ExpensesButton.dart';
import 'package:nereye_gitmeli_app/Components/PlanButton.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  SharedPreferences prefs;
  AuthService _authService = AuthService();
  String mail = " ";

  Future getPrefs() async {
    prefs = await SharedPreferences.getInstance();
    setState(() {
      mail = prefs.getString('userMail');
    });
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
        title: Text('Profilin'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection('User')
                    .where('email', isEqualTo: mail)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<DocumentSnapshot> items = snapshot.data.docs;
                    return Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Container(
                                width: 120,
                                height: 120,
                                child: Card(
                                  child: Image(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                        'https://ui-avatars.com/api/?name=${items[0].data()['name']}&size=256&bold=true'),
                                    errorBuilder: (context, object, stackTrace){
                                      return Icon(Icons.person, size:75);
                                    },
                                    loadingBuilder: (context, child, loadingProgress){
                                      if(loadingProgress == null) return child;
                                      return CircularProgressIndicator();
                                    },
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      '${items[0].data()['name']}',
                                      style: TextStyle(fontSize: 25),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    child: Text(
                                      '${items[0].data()['email']}',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: double.infinity,
                          child: ElevatedButton(
                            child: Text('Çıkış'),
                            onPressed: () {
                              prefs.setBool('isLogged', false);
                              _authService.signOut();
                              Navigator.pushNamed(context, myRouteNames.homeRoute);
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Theme.of(context).primaryColor,
                              padding: EdgeInsets.symmetric(horizontal: 110),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 25,),
                        ContainerWithTitle(
                          title: 'Verilerin',
                          widget: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Column(
                              children: [
                                TargetButton(),
                                Divider(),
                                FavoritesButton(),
                                Divider(),
                                PlanButton(),
                                Divider(),
                                ExpensesButton()
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  } else {
                    return CircularProgressIndicator();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
