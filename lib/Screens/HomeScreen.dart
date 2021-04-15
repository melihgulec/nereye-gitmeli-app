import 'package:flutter/material.dart';
import 'package:dartx/dartx.dart';

import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Components/SehirCard.dart';

import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

import 'package:nereye_gitmeli_app/Classes/Sehir/Data.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nereye Gitmeli?'),
        leading: Icon(Icons.explore),
        // Veritabanı işlemleri öğrenilince LOGIN işlemleri için bu kod açılacak.
        /*actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: IconButton(
              icon: Icon(
                Icons.person,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, myRouteNames.loginRoute);
              },
            ),
          ),
        ],*/
      ),
      body: Content(),
    );
  }
}

class Content extends StatelessWidget {
  final Data sehirData = new Data();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                child: Image.asset(
                  'assets/images/Background/mainscreenbg5.png',
                  fit: BoxFit.cover,
                  height: 220,
                  width: double.infinity,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                  child: Text(
                    'Merhaba,\nBugün nereyi keşfedeceksin?',
                    textAlign: TextAlign.left,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        child: ListTile(
                          onTap: () => Navigator.pushNamed(
                              context, myRouteNames.targetRoute),
                          leading: Icon(
                            Icons.assignment_rounded,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Hedeflerim',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        color: Theme.of(context).primaryColor,
                        child: ListTile(
                          onTap: () => Navigator.pushNamed(
                              context, myRouteNames.favoritesRoute),
                          leading: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Favorilerim',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                ContainerWithTitle(
                  containerHeight: 200,
                  title: 'Yurtiçi',
                  titleSize: 22,
                  widget: ListView(
                    scrollDirection: Axis.horizontal,
                    children: sehirData.yurtici
                        .sortedBy((element) => element.adi)
                        .map((item) => SehirCard(
                              sehirData: item,
                            ))
                        .toList(),
                  ),
                ),
                ContainerWithTitle(
                  containerHeight: 200,
                  title: 'Yurtdışı',
                  titleSize: 22,
                  widget: ListView(
                    scrollDirection: Axis.horizontal,
                    children: sehirData.yurtdisi
                        .sortedBy((element) => element.adi)
                        .map((item) => SehirCard(sehirData: item))
                        .toList(),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, myRouteNames.hakkindaRoute);
                  },
                  child: Text('Hakkında'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).primaryColor,
                    padding: EdgeInsets.symmetric(horizontal: 110),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
