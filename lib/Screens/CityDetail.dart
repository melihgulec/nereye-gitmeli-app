import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Classes/User/Favorite.dart';
import 'package:nereye_gitmeli_app/Classes/User/UserData.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Components/PlacesCard.dart';

class CityDetail extends StatefulWidget {
  final Sehir data;
  CityDetail({this.data});

  @override
  _CityDetailState createState() => _CityDetailState();
}

class _CityDetailState extends State<CityDetail> {
  final userData = UserData.instance;

  void makeToastMessage(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        textColor: Colors.black,
        fontSize: 16.0);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nereye gitmeli: ${widget.data.adi}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 230,
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
                          makeToastMessage('Favorilere eklendi.');
                        } else {
                          userData.favoritesList.removeAt(index);
                          makeToastMessage('Favorilerden kaldırıldı.');
                        }
                      });
                    },
                    child: CircleAvatar(
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
      ),
    );
  }
}
