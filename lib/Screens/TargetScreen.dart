import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class TargetScreen extends StatefulWidget {
  @override
  _TargetScreenState createState() => _TargetScreenState();
}

class _TargetScreenState extends State<TargetScreen> {
  final userData = UserData.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          Navigator.pushReplacementNamed(context, myRouteNames.addTargetRoute);
        },
      ),
      appBar: AppBar(
        title: Text('Hedeflerim'),
      ),
      body: userData.targetList.isEmpty
          ? Center(
              child: Text(
                'Henüz burada bir şey yok.\nYeni bir hedef eklemek için sağ alttaki butonu kullan.',
                textAlign: TextAlign.center,
              ),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.all(8),
              child: Column(
                children: userData.targetList
                    .map(
                      (e) => Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, myRouteNames.targetDetailRoute, arguments: e);
                          },
                          tileColor: Colors.white,
                          trailing: IconButton(
                            icon: Icon(
                              Icons.chevron_right,
                              color: Colors.black,
                            ),
                          ),
                          leading: Icon(
                            Icons.assignment_rounded,
                            color: Theme.of(context).primaryColor,
                          ),
                          title: Text(e.targetHead),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
    );
  }
}
