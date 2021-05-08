import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';

class Target{
  String targetHead;
  String targetDestination;
  Sehir targetDestinationCity;
  String targetDescription;
  String targetDate;

  Target({this.targetDestination, this.targetDestinationCity, this.targetDescription, this.targetHead, this.targetDate});
}