import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';

class Foods extends StatefulWidget {
  final Sehir sehirData;

  Foods({this.sehirData});

  @override
  _FoodsState createState() => _FoodsState();
}

class _FoodsState extends State<Foods> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: widget.sehirData.yemekler.length,
        itemBuilder: (context, index){
          var yemek = widget.sehirData.yemekler[index];
          return FoodCard(yemekData: yemek, sehir: widget.sehirData,);
        },
      )
    );
  }
}

class FoodCard extends StatelessWidget {
  final yemekData;
  final Sehir sehir;

  FoodCard({this.yemekData, this.sehir});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        print('${yemekData.aciklama}, ${sehir.adi}');
      },
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image(
                  image: AssetImage('assets/images/Yurtici/Yemek/${sehir.adi}/${yemekData.fotograf}.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  yemekData.ad,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Icon(
                Icons.chevron_right,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}


