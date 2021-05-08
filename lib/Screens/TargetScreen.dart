import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/Target.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Helpers/DbHelper.dart';

class TargetScreen extends StatefulWidget {
  @override
  _TargetScreenState createState() => _TargetScreenState();
}

class _TargetScreenState extends State<TargetScreen> {
  DbHelper _dbHelper;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _dbHelper = DbHelper();
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: _dbHelper.getTargets(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
            if (snapshot.data.isEmpty)
              return Center(
                child: Text(
                  'Henüz burada bir şey yok.\nYeni bir hedef eklemek için sağ alttaki butonu kullan.',
                  textAlign: TextAlign.center,
                ),
              );
            return ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                Target target = snapshot.data[index];
                return Card(
                  child: ListTile(
                    onTap: () {
                      Navigator.pushReplacementNamed(
                          context, myRouteNames.targetDetailRoute,
                          arguments: target);
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
                    title: Text('${target.id} - ${target.targetHead}'),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
