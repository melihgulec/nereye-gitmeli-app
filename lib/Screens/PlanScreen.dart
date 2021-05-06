import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';

import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';

class PlanScreen extends StatefulWidget {
  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  final userData = UserData.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.pushReplacementNamed(context, myRouteNames.addPlanRoute);
          },
        ),
        appBar: AppBar(
          title: Text('Planlarım'),
        ),
        body: userData.planList.isEmpty
            ? Center(
                child: Text(
                  'Henüz bir plan oluşturmamışsın.\nYapacaklarını takip et!',
                  textAlign: TextAlign.center,
                ),
              )
            : SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: userData.planList
                        .map(
                          (e) => ContainerWithTitle(
                            titleSize: 18,
                            title: e.planTitle,
                            widget: CheckboxListTile(
                              title: Text(
                                e.planDescription,
                                style: TextStyle(
                                    color: e.planStatus
                                        ? Colors.grey
                                        : Colors.white,
                                    decoration: e.planStatus
                                        ? TextDecoration.lineThrough
                                        : TextDecoration.none),
                              ),
                              value: e.planStatus,
                              activeColor: Theme.of(context).primaryColor,
                              checkColor: Colors.black,
                              onChanged: (bool value) {
                                setState(() {
                                  e.planStatus = !e.planStatus;
                                });
                              },
                              controlAffinity: ListTileControlAffinity.leading,
                              secondary: Container(
                                height: 40,
                                width: 40,
                                color:Color(0xff595d5f),
                                child: IconButton(
                                  icon: Icon(
                                    Icons.delete_forever,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    setState(
                                      () {
                                        int index = userData.planList.indexOf(e, 0);
                                        userData.planList.removeAt(index);
                                        ToastHelper().makeToastMessage("${e.planTitle} yapılacaklar listenden kaldırıldı.");
                                      },
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
      ),
    );
  }
}
