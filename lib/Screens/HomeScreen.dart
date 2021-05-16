import 'package:flutter/material.dart';
import 'package:dartx/dartx.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Components/SehirCard.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Classes/Sehir/Data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nereye_gitmeli_app/Components/FavoritesButton.dart';
import 'package:nereye_gitmeli_app/Components/TargetButton.dart';
import 'package:nereye_gitmeli_app/Components/ExpensesButton.dart';
import 'package:nereye_gitmeli_app/Components/PlanButton.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  SharedPreferences prefs;
  bool isLogged = false;

  Future getPrefs() async {
    prefs = await SharedPreferences.getInstance();

    setState(() {
      if (!prefs.containsKey('isLogged')) {
        prefs.setBool('isLogged', false);
        isLogged = prefs.getBool('isLogged');
      } else {
        isLogged = prefs.getBool('isLogged');
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getPrefs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              child: DrawerHeader(
                child: Center(
                  child: Text(
                    'Nereye Gitmeli?\n\nMenü',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  'Ana sayfa',
                ),
              ),
            ),
            Divider(
              height: 5,
              color: Colors.white,
            ),
            TargetButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              iconColor: Colors.grey,
            ),
            Divider(
              height: 5,
              color: Colors.white,
            ),
            PlanButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              iconColor: Colors.grey,
            ),
            Divider(
              height: 5,
              color: Colors.white,
            ),
            FavoritesButton(
              backgroundColor: Colors.white,
              textColor: Colors.black,
              iconColor: Colors.grey,
            ),
            Divider(
              height: 5,
              color: Colors.white,
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.info_outline),
                onTap: () {
                  showAboutDialog(
                      context: context,
                      applicationIcon: FlutterLogo(),
                      applicationName: 'Nereye Gitmeli',
                      applicationVersion: '1.0.0',
                      children: [
                        Text(
                            'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu MOBİL PROGRAMLAMA dersi kapsamında 193301059 numaralı Melih GÜLEÇ tarafından 25 Haziran 2021 günü yapılmıştır.'),
                      ]);
                },
                title: Text(
                  'Hakkında',
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Nereye Gitmeli?'),
        //leading: Icon(Icons.explore),
        actions: [
          isLogged
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: IconButton(
                    icon: Tooltip(
                      message: 'Profilin',
                      child: Icon(Icons.person_search, size: 30),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, myRouteNames.profileRoute);
                    },
                  ),
                )
              : Container(
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
                )
        ],
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
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Merhaba,\nBugün nereyi keşfedeceksin?',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      WavingHandEmojiWidget(),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Expanded(child: TargetButton()),
                    Expanded(child: FavoritesButton()),
                  ],
                ),
                Row(
                  children: [
                    Expanded(child: PlanButton()),
                    Expanded(child: ExpensesButton()),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WavingHandEmojiWidget extends StatefulWidget {
  @override
  _WavingHandEmojiWidgetState createState() => _WavingHandEmojiWidgetState();
}

class _WavingHandEmojiWidgetState extends State<WavingHandEmojiWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: new Duration(seconds: 1),
    );
    _animation = Tween(
      begin: Offset.zero,
      end: Offset(0, 0.1),
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Text(
        '👋',
        style: TextStyle(fontSize: 50),
      ),
    );
  }
}
