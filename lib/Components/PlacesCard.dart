import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/Places/Places.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';

class PlacesCard extends StatelessWidget {
  final Places placeData;
  final Sehir sehirData;

  PlacesCard({this.placeData, this.sehirData});

  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 180,
      child: Card(
        elevation: 2,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: InkWell(
          onTap: () => print(''),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(
                image: AssetImage(
                    'assets/images/${sehirData.type == 1 ? 'Yurtici' : 'Yurtdisi'}/Mekan/${sehirData.adi}/${placeData.fotograf}.jpg'),
                height: 240,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 10,
                right: 16,
                left: 16,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      child: Text(
                        placeData.adi,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
