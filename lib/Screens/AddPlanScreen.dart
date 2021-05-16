import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/Plan.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';

import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Helpers/DbHelper.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';

class AddPlanScreen extends StatefulWidget {
  @override
  _AddPlanScreenState createState() => _AddPlanScreenState();
}

class _AddPlanScreenState extends State<AddPlanScreen> {
  DbHelper _dbHelper;
  String planTitleValue = "";
  String planDescriptionValue = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbHelper = DbHelper();
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
                            ToastHelper().makeToastMessage('Lütfen plan başlığını ve açıklamasını doldurunuz.');
                          }else if(planTitleValue.trim() == ""){
                            ToastHelper().makeToastMessage('Lütfen plan başlığını doldurunuz.');
                          }else{
                            _dbHelper.insertPlan(
                              Plan(
                                planTitle: planTitleValue
                              )
                            );
                            Navigator.pushReplacementNamed(context, myRouteNames.planRoute);
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
