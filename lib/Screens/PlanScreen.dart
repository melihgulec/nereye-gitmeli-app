import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/Plan.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Helpers/DbHelper.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';

class PlanScreen extends StatefulWidget {
  @override
  _PlanScreenState createState() => _PlanScreenState();
}

class _PlanScreenState extends State<PlanScreen> {
  DbHelper _dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbHelper = DbHelper();
  }

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
        body: Padding(
          padding: const EdgeInsets.all(5.0),
          child: FutureBuilder(
            future: _dbHelper.getPlan(),
            builder: (context, snapshot){
              if (!snapshot.hasData)
                return Center(child: CircularProgressIndicator());
              if (snapshot.data.isEmpty)
                return Center(
                  child: Text(
                    'Henüz plan oluşturmamışsın.\nYapacaklarını takip et!',
                    textAlign: TextAlign.center,
                  ),
                );

              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index){
                  Plan plan = snapshot.data[index];
                  return Card(
                    child: Dismissible(
                      onDismissed: (direction) {
                        _dbHelper.removePlanDetailByPlanId(plan.id);
                        _dbHelper.removePlan(plan.id);
                        ToastHelper().makeToastMessage(
                            "${plan.planTitle} kaldırıldı.");
                      },
                      background: Container(
                        color: Colors.red,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              Icons.cancel,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      secondaryBackground: Container(
                        color: Colors.red,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Icon(
                              Icons.cancel,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                      key: ValueKey(plan.id),
                      child: ListTile(
                        onTap: (){
                          Navigator.pushNamed(context, myRouteNames.planDetailRoute, arguments: plan);
                        },

                        leading: Icon(Icons.library_add_check_sharp),
                        title: Text('${plan.planTitle}'),
                        subtitle: Text('Detayları görüntüle'),
                        trailing: Icon(Icons.chevron_right),
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
