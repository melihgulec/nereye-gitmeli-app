import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;

class FavoritesScreen extends StatelessWidget {
  final userData = UserData.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorilerim'),
      ),
      body: userData.favoritesList.isEmpty
          ? Center(
              child: Text(
                'Henüz favori şehirlerini seçmemişsin.\nGeri dön ve bir şehir seç!',
                textAlign: TextAlign.center,
              ),
            )
          : SingleChildScrollView(
              padding: EdgeInsets.all(8),
              child: Center(
                child: Column(
                  children: userData.favoritesList
                      .map(
                        (e) => FavoriteWidget(
                          sehir: e.sehir,
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
    );
  }
}

class FavoriteWidget extends StatelessWidget {
  final Sehir sehir;

  FavoriteWidget({this.sehir});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, myRouteNames.cityDetailRoute,
              arguments: sehir);
        },
        tileColor: Colors.white,
        leading: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        title: Text(sehir.adi + ", " + sehir.ulke),
      ),
    );
  }
}
