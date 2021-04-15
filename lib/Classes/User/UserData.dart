import 'package:nereye_gitmeli_app/Classes/User/Favorite.dart';
import 'Target.dart';

class UserData{
  List<Target> targetList = [];
  List<Favorite> favoritesList = [];

  UserData._();
  static final instance = UserData._();
}