import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class TargetScreen extends StatefulWidget {
  @override
  _TargetScreenState createState() => _TargetScreenState();
}

class _TargetScreenState extends State<TargetScreen> {
  final userData = UserData.instance;

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
                          onTap: () {},
                          tileColor: Colors.white,
                          trailing: Container(
                            height: 40,
                            width: 40,
                            color: Theme.of(context).primaryColor,
                            child: IconButton(
                              icon: Icon(
                                Icons.delete_forever,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                setState(
                                  () {
                                    int index = userData.targetList.indexOf(e, 0);
                                    userData.targetList.removeAt(index);
                                    makeToastMessage("${e.targetHead} hedeflerinden kaldırıldı.");
                                  },
                                );
                              },
                            ),
                          ),
                          leading: Icon(
                            Icons.assignment_rounded,
                            color: Theme.of(context).primaryColor,
                          ),
                          title: Text(e.targetHead),
                          subtitle: Text(
                              "Hedef Şehir: ${e.targetDestinationCity}\n\n${e.targetDescription}\n\n${e.targetDate.toString()}"),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
    );
  }
}
