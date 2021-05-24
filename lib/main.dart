import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nereye_gitmeli_app/Helpers/FileUtils.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';
import 'Constants/Colors.dart';
import 'Constants/RouteNames.dart';
import 'Route/Router.dart' as myRoute;

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(HomeView());
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initialization,
      builder: (context, snapshot){
        if(snapshot.hasError){
          ToastHelper().makeToastMessage('Bir şeyler ters gitti. Hata: ${snapshot.error}');
        }

        FileUtils.saveToFile("Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301059 numaralı Melih GÜLEÇ tarafından 25 Haziran 2021 günü yapılmıştır.");

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: greenColor,
            tabBarTheme: TabBarTheme(
                labelColor: tabBarLabelColor,
                indicator: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                          color: tabBarUnderlineColor,
                        )
                    )
                )
            ),
            textTheme: TextTheme(
              bodyText2: TextStyle(color: Colors.white),
            ),
            scaffoldBackgroundColor: scaffoldBackgroundColor,
            primaryTextTheme: TextTheme(
              headline6: TextStyle(color: Colors.white),
            ),
            appBarTheme: AppBarTheme(
              brightness: Brightness.dark,
              iconTheme: IconThemeData(color: Colors.white),
            ),
          ),
          initialRoute: homeRoute,
          onGenerateRoute: myRoute.Router.generateRoute,
        );
      },
    );
  }
}
