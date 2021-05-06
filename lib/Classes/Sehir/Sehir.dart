import 'package:nereye_gitmeli_app/Classes/Places/Places.dart';
import 'package:nereye_gitmeli_app/Classes/Foods/Foods.dart';

class Sehir{
  String adi;
  String aciklama;
  String ulke;
  int id;
  List<Places> yerler;
  List<Foods> yemekler;

  /*
    type kodları:
    1: yurtiçi
    2: yurtdışı

   */

  int type;

  Sehir({this.id, this.adi, this.aciklama, this.ulke, this.type, this.yerler, this.yemekler});
}