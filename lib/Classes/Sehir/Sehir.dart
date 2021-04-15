import 'package:nereye_gitmeli_app/Classes/Places/Places.dart';

class Sehir{
  String adi;
  String aciklama;
  String ulke;
  int id;
  List<Places> yerler;

  /*
    type kodları:
    1: yurtiçi
    2: yurtdışı

   */

  int type;

  Sehir({this.id, this.adi, this.aciklama, this.ulke, this.type, this.yerler});
}