import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Services/AuthService.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRoutes;
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  SharedPreferences prefs;
  AuthService _authService = AuthService();
  String mail = " ";

  Future getPrefs() async{
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
      body: Column(
        children: [
          StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('User').where('email', isEqualTo: mail).snapshots(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                List<DocumentSnapshot> items = snapshot.data.docs;
                return Flexible(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index){
                      return Card(
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text('${items[index].data()['name']}'),
                          subtitle: Text('${items[index].data()['email']}'),
                          trailing: ElevatedButton(
                            child: Text('Çıkış'),
                            onPressed: (){
                              prefs.setBool('isLogged', false);
                              _authService.signOut();
                              Navigator.pushNamed(context, myRoutes.homeRoute);
                            },
                          ),
                        ),
                      );
                    },
                  ),
                );
              }else{
                return CircularProgressIndicator();
              }
            },
          ),
        ],
      )
    );
  }
}
