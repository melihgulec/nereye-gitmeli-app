import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/User/Plan.dart';
import 'package:nereye_gitmeli_app/Classes/User/PlanDetail.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Helpers/DbHelper.dart';

class PlanDetailScreen extends StatefulWidget {
  final Plan plan;

  PlanDetailScreen({this.plan});

  @override
  _PlanDetailScreenState createState() => _PlanDetailScreenState();
}

class _PlanDetailScreenState extends State<PlanDetailScreen> {
  DbHelper _dbHelper;
  final _aciklamaController = TextEditingController();
  String descVal;
  int planStatus = 0;

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
          title: Text('${widget.plan.id} numaralı Planın'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              FutureBuilder(
                future: _dbHelper.getPlanDetail(widget.plan.id),
                builder: (context, snapshot) {
                  if (!snapshot.hasData)
                    return Center(child: CircularProgressIndicator());
                  if (snapshot.data.isEmpty)
                    return Flexible(
                      child: Center(
                        child: Text(
                          'Bu planda herhangi bir şey yok.\nYeni eleman ekle!',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    );

                  return Flexible(
                    child: ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) {
                        PlanDetail planDetail = snapshot.data[index];
                        return ContainerWithTitle(
                          title: 'Numara: ${index + 1}',
                          widget: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: CheckboxListTile(
                              controlAffinity: ListTileControlAffinity.leading,
                              activeColor: Theme.of(context).primaryColor,
                              checkColor: Colors.black,
                              value: planDetail.status == 1 ? true : false,
                              title: Text(
                                '${planDetail.description}',
                                style: TextStyle(color: Colors.white),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  planDetail.status == 1
                                      ? planDetail.status = 0
                                      : planDetail.status = 1;
                                  _dbHelper.updatePlanDetail(planDetail);
                                });
                              },
                              secondary: IconButton(
                                icon: Icon(
                                  Icons.delete_forever,
                                  size: 35,
                                  color: Colors.red,
                                ),
                                onPressed: (){
                                  setState(() {
                                    _dbHelper.removePlanDetail(planDetail.id);
                                  });
                                },
                              )
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
              Container(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'açıklama...',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                  controller: _aciklamaController,
                  onChanged: (value) {
                    descVal = value;
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _dbHelper.insertPlanDetail(PlanDetail(
                      description: descVal,
                      planId: widget.plan.id,
                      status: 0,
                    ));
                  });
                  _aciklamaController.clear();
                },
                child: Text('Yeni Eleman Ekle'),
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  padding: EdgeInsets.symmetric(horizontal: 110),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ));
  }
}
