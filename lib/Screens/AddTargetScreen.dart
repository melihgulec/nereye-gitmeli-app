import 'package:flutter/material.dart';
import 'package:dartx/dartx.dart';
import 'package:intl/intl.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:nereye_gitmeli_app/Classes/Sehir/Data.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Classes/User/Target.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';

import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Constants/Colors.dart' as myColors;

class AddTargetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yeni Bir Hedef Ekle'),
      ),
      body: Center(child: SingleChildScrollView(child: Content())),
    );
  }
}

class Content extends StatefulWidget {
  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  final userData = UserData.instance;
  Data sehirData = Data();
  String dropdownValue = "Bursa";
  int dropdownKonumValue = 1;
  List<Sehir> initialSehir;

  String descriptionValue = "";
  String targetHeadValue = "";

  void makeToastMessage(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      textColor: Colors.black,
      fontSize: 16.0,
    );
  }

  _ContentState() {
    initialSehir = sehirData.yurtici.sortedBy((element) => element.adi);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ContainerWithTitle(
            title: 'Yeni bir hedef ekle',
            titleSize: 20,
            widget: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text('Hedef Başlığı:'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Burayı mutlaka görmek istiyorum!',
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
                                targetHeadValue = value;
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
                        child: Text('Konum'),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            isExpanded: true,
                            value: dropdownKonumValue,
                            dropdownColor: myColors.greenColor,
                            style: TextStyle(color: Colors.white),
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            items: [
                              DropdownMenuItem(
                                child: Text('Yurtiçi'),
                                value: 1,
                              ),
                              DropdownMenuItem(
                                child: Text('Yurtdışı'),
                                value: 2,
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                dropdownKonumValue = value;

                                if (dropdownKonumValue == 1) {
                                  initialSehir = sehirData.yurtici
                                      .sortedBy((element) => element.adi);
                                } else {
                                  initialSehir = sehirData.yurtdisi
                                      .sortedBy((element) => element.adi);
                                }

                                dropdownValue = initialSehir[0].adi;
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
                        child: Text('Gitmek istediğim:'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DropdownButton(
                            isExpanded: true,
                            value: dropdownValue,
                            dropdownColor: myColors.greenColor,
                            style: TextStyle(color: Colors.white),
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            items: initialSehir
                                .map<DropdownMenuItem<String>>((Sehir value) {
                              return DropdownMenuItem<String>(
                                value: value.adi,
                                child: Text(value.adi),
                              );
                            }).toList(),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
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
                        child: Text('Açıklama:'),
                        flex: 1,
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: '...',
                              hintStyle: TextStyle(color: Colors.grey),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                            ),
                            maxLines: null,
                            style: TextStyle(color: Colors.white),
                            onChanged: (value) {
                              setState(() {
                                descriptionValue = value;
                              });
                            },
                          ),
                        ),
                        flex: 2,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
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
                      if (targetHeadValue.trim() == "" &&
                          descriptionValue == "") {
                        makeToastMessage(
                            "Lütfen açıklama ve hedef başlığını doldurunuz.");
                      } else if (targetHeadValue.trim() == "") {
                        makeToastMessage("Lütfen hedef başlığını doldurunuz.");
                      } else if (descriptionValue.trim() == "") {
                        makeToastMessage("Lütfen açıklamayı doldurunuz.");
                      } else {
                        userData.targetList.add(
                          Target(
                            targetDestination: dropdownKonumValue == 1
                                ? 'Yurtiçi'
                                : 'Yurtdışı',
                            targetDestinationCity: dropdownValue,
                            targetDescription: descriptionValue,
                            targetHead: targetHeadValue,
                            targetDate: DateFormat('dd.MM.yyyy HH:mm')
                                .format(DateTime.now()),
                          ),
                        );
                        Navigator.pushReplacementNamed(
                            context, myRouteNames.targetRoute,
                            arguments: userData);
                      }
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
