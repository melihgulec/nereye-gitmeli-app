import 'package:nereye_gitmeli_app/Classes/User/Favorite.dart';
import 'package:nereye_gitmeli_app/Classes/User/Target.dart';
import 'package:nereye_gitmeli_app/Classes/User/Plan.dart';

class UserData {
  List<Target> targetList = [];
  List<Favorite> favoritesList = [];
  List<Plan> planList = [];

  UserData._();
  static final instance = UserData._();
}
