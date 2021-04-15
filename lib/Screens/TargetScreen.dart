import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import '../Constants/RouteNames.dart' as myRouteNames;
import '../Constants/Colors.dart' as myColors;

class TargetScreen extends StatelessWidget {
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
              child: Text('Henüz burada bir şey yok.\nYeni bir hedef eklemek için sağ alttaki butonu kullan.', textAlign: TextAlign.center,),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.all(8),
              child: Column(
                children: userData.targetList
                    .map(
                      (e) => TargetWidget(
                        targetStr: e.targetDestinationCity,
                        targetDescription: e.targetDescription,
                        targetDate: e.targetDate,
                        targetHead: e.targetHead,
                      ),
                    )
                    .toList(),
              ),
            ),
    );
  }
}

class TargetWidget extends StatelessWidget {
  final String targetStr;
  final String targetHead;
  final String targetDate;
  final String targetDescription;

  TargetWidget(
      {this.targetStr,
      this.targetDate,
      this.targetHead,
      this.targetDescription});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        tileColor: Colors.white,
        leading: Icon(Icons.assignment_rounded, color: Theme.of(context).primaryColor,),
        title: Text(targetHead),
        //trailing: Icon(Icons.chevron_right),
        subtitle: Text("Hedef Şehir: ${targetStr}\n\n${targetDescription}\n\n${targetDate.toString()}"),
      ),
    );
  }
}
