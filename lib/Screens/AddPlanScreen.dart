import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Classes/User/Plan.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';

import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class AddPlanScreen extends StatefulWidget {
  @override
  _AddPlanScreenState createState() => _AddPlanScreenState();
}

class _AddPlanScreenState extends State<AddPlanScreen> {
  final userData = UserData.instance;

  String planTitleValue = "";
  String planDescriptionValue = "";

  void makeToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.white,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Bir Plan Ekle'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ContainerWithTitle(
                title: 'Plan ekle',
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text('Plan Başlığı:'),
                            flex: 1,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'İlk sırada yapılacak plan',
                                  hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                maxLines: null,
                                style: TextStyle(color: Colors.white),
                                onChanged: (value) {
                                  setState(() {
                                    planTitleValue = value;
                                  });
                                },
                              ),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text('Plan Açıklaması:'),
                            flex: 1,
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: '...',
                                  hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ),
                                ),
                                maxLines: null,
                                style: TextStyle(color: Colors.white),
                                onChanged: (value) {
                                  setState(() {
                                    planDescriptionValue = value;
                                  });
                                },
                              ),
                            ),
                            flex: 2,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        child: Text('Kaydet'),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).primaryColor,
                          padding: EdgeInsets.symmetric(horizontal: 110),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                        onPressed: () {

                          if(planTitleValue.trim() == "" && planDescriptionValue.trim() == ""){
                            makeToastMessage('Lütfen plan başlığını ve açıklamasını doldurunuz.');
                          }else if(planTitleValue.trim() == ""){
                            makeToastMessage('Lütfen plan başlığını doldurunuz.');
                          }else if(planDescriptionValue.trim() == ""){
                            makeToastMessage('Lütfen plan açıklamasını doldurunuz.');
                          }else{
                            userData.planList.add(
                                Plan(
                                  planTitle: planTitleValue,
                                  planDescription: planDescriptionValue,
                                  planStatus: false,
                                )
                            );

                            Navigator.pushReplacementNamed(
                                context, myRouteNames.planRoute,
                                arguments: userData);
                          }
                        },
                      )
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
