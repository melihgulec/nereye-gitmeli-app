import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/Target.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';

class TargetDetail extends StatefulWidget {
  Target hedef;

  TargetDetail({this.hedef});

  @override
  _TargetDetailState createState() => _TargetDetailState();
}

class _TargetDetailState extends State<TargetDetail> {
  @override
  Widget build(BuildContext context) {
    final List<String> dateSplit = widget.hedef.targetDate.split(" ");
    final userData = UserData.instance;

    return Scaffold(
      appBar: AppBar(
        title: Text('Hedefini İncele'),
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              icon: Icon(
                Icons.delete_forever,
                size: 30,
              ),
              onPressed: () {
                int index = userData.targetList.indexOf(widget.hedef, 0);
                userData.targetList.removeAt(index);
                ToastHelper().makeToastMessage("${widget.hedef.targetHead} hedeflerinden kaldırıldı.");
                Navigator.pushReplacementNamed(context, myRouteNames.targetRoute);
              },
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Container(
                      child: Card(
                    color: Colors.red,
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 120,
                        width: 120,
                        child: Column(
                          children: [
                            Container(
                              width: double.infinity,
                              child: Center(child: Text('TARİH')),
                            ),
                            Divider(),
                            SizedBox(
                              height: 15,
                            ),
                            Center(
                              child: Text(
                                dateSplit.first + "\n" + dateSplit.last,
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 21),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )),
                  Expanded(
                    child: Center(
                      child: Text(
                        widget.hedef.targetHead +"\n\nŞehir: "+widget.hedef.targetDestinationCity.adi,
                        style: TextStyle(fontSize: 22),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Card(
                color: Theme.of(context).primaryColor,
                child: ListTile(
                  onTap: (){
                    Navigator.pushNamed(context, myRouteNames.cityDetailRoute, arguments: widget.hedef.targetDestinationCity);
                  },
                  leading: Icon(
                    Icons.location_city,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Hedeflediğin şehire git',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              ContainerWithTitle(
                title: 'Hedef açıklaman',
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Text(widget.hedef.targetDescription),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
