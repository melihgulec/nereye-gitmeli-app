import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Helpers/FileUtils.dart';

class Hakkinda extends StatefulWidget {
  @override
  _HakkindaState createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  String text;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData();
  }

  readData(){
    FileUtils.readFromFile().then((value){
      setState(() {
        text = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Hakkında'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Center(
          child: Text(
            "$text",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    ));
  }
}
