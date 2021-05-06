import 'package:flutter/material.dart';

import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Classes/User/Favorite.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Components/PlacesCard.dart';
import 'package:nereye_gitmeli_app/Helpers/ToastHelper.dart';
import 'package:nereye_gitmeli_app/Screens/Foods.dart';
import 'package:url_launcher/url_launcher.dart';
class CityDetail extends StatefulWidget {
  final Sehir data;
  CityDetail({this.data});

  @override
  _CityDetailState createState() => _CityDetailState();
}

class _CityDetailState extends State<CityDetail> {

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Nereye gitmeli: ${widget.data.adi}'),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.explore)),
              Tab(icon: Icon(Icons.fastfood)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Content(data: widget.data),
            Foods(sehirData: widget.data,),
          ],
        )
      ),
    );
  }
}

class Content extends StatefulWidget {
  final Sehir data;

  Content({this.data});

  @override
  _ContentState createState() => _ContentState();
}

class _ContentState extends State<Content> {
  final userData = UserData.instance;

  void _launchMapsUrl(String addr) async {
    print(addr.replaceAll(' ', '+'));
    final url =
        'https://www.google.com/maps/search/${addr.replaceAll(' ', '+')}/';
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 230,
                child: Hero(
                  tag: 'city-img-${widget.data.id}',
                  child: ClipRRect(
                    child: Image.asset(
                      'assets/images/${widget.data.type == 1 ? 'Yurtici' : 'Yurtdisi'}/${widget.data.adi.toLowerCase()}.jpg',
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                ),
              ),
              Positioned(
                  top: 170,
                  left: 16,
                  child: Column(
                    children: [
                      Container(
                        width: 250,
                        child: Text(
                          widget.data.adi,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Container(
                        width: 250,
                        child: Text(
                          widget.data.ulke,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ],
                  )),
              Positioned(
                top: 180,
                right: 16,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      var index = userData.favoritesList.indexWhere(
                              (element) => element.sehir.id == widget.data.id);
                      if (index == -1) {
                        userData.favoritesList
                            .add(Favorite(sehir: widget.data));
                        ToastHelper().makeToastMessage('Favorilere eklendi.');
                      } else {
                        userData.favoritesList.removeAt(index);
                        ToastHelper().makeToastMessage('Favorilerden kaldırıldı.');
                      }
                    });
                  },
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          _launchMapsUrl(widget.data.adi);
                        },
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: Icon(Icons.map, color: Colors.white,),
                        ),
                      ),
                      SizedBox(width: 5,),
                      CircleAvatar(
                        backgroundColor: Theme.of(context).primaryColor,
                        child: userData.favoritesList.indexWhere((element) =>
                        element.sehir.id == widget.data.id) !=
                            -1
                            ? Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                            : Icon(
                          Icons.favorite_border,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          ContainerWithTitle(
            title: 'Tanıtım',
            titleSize: 25,
            widget: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                child: Text(widget.data.aciklama),
              ),
            ),
          ),
          ContainerWithTitle(
            containerHeight: 200,
            title: 'Gezilecek Yerler',
            titleSize: 25,
            widget: ListView(
              scrollDirection: Axis.horizontal,
              children: widget.data.yerler
                  .map(
                    (e) => PlacesCard(
                  placeData: e,
                  sehirData: widget.data,
                ),
              )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
