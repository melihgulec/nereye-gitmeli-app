import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Scaffold(
          appBar: AppBar(
            title: Text('404 - Bulunamadı'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset("assets/images/App/notfound.png"),
                  SizedBox(height: 25,),
                  Text('Erişmeye çalıştığınız sayfa bulunamadı.', style: TextStyle(fontSize: 18,),textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
