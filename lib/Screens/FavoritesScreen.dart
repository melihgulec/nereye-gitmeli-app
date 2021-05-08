import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Data.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Classes/User/Favorite.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Constants/RouteNames.dart' as myRouteNames;
import 'package:nereye_gitmeli_app/Helpers/DbHelper.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final userData = UserData.instance;
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
      appBar: AppBar(
        title: Text('Favorilerim'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder(
          future: _dbHelper.getFavorites(),
          builder: (context, snapshot){
            if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
            if (snapshot.data.isEmpty){
              return Center(
                child: Text(
                  'Henüz favori şehirlerini seçmemişsin.\nGeri dön ve bir şehir seç!',
                  textAlign: TextAlign.center,
                ),
              );
            }

            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index){
                Favorite favorite = snapshot.data[index];

               return FavoriteWidget(
                 cityId: favorite.cityId,
               );
              },
            );
          },
        ),
      )
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  final int cityId;

  FavoriteWidget({this.cityId});

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  final Data sehirData = new Data();
  Sehir currentSehir;

  Sehir findCityById(int cityId) {
    bool control = false;
    int index = sehirData.yurtici.indexWhere((element) => element.id == cityId);
    if(index == -1){
      index = sehirData.yurtdisi.indexWhere((element) => element.id == cityId);
      return sehirData.yurtdisi[index];
    }else{
      return sehirData.yurtici[index];
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentSehir = findCityById(widget.cityId);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, myRouteNames.cityDetailRoute,
              arguments: currentSehir);
        },
        tileColor: Colors.white,
        leading: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        title: Text(currentSehir.adi + ", " + currentSehir.ulke),
      ),
    );
  }
}
