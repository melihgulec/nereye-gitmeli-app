import 'dart:async';
import 'package:nereye_gitmeli_app/Classes/User/Favorite.dart';
import 'package:nereye_gitmeli_app/Classes/User/Plan.dart';
import 'package:nereye_gitmeli_app/Classes/User/PlanDetail.dart';
import 'package:nereye_gitmeli_app/Classes/User/Target.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{
  static Database _db;

  Future<Database> get db async{
    if(_db != null) return _db;
    _db = await initDb();
    return _db;
  }

  initDb() async {
    var dbFolder = await getDatabasesPath();
    String path = join(dbFolder, "NereyeGitmeli.db");
    
    return await openDatabase(path, onCreate: _onCreate, version:1);
  }
  
  FutureOr<void> _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE Target(id INTEGER PRIMARY KEY NOT NULL, targetHead TEXT, targetDestination TEXT, targetDestinationCityId INTEGER, targetDescription TEXT, targetDate TEXT)");
    await db.execute("CREATE TABLE Favorites(id INTEGER PRIMARY KEY NOT NULL, cityId INTEGER)");
    await db.execute("CREATE TABLE Plan(id INTEGER PRIMARY KEY NOT NULL, planTitle TEXT)");
    await db.execute("CREATE TABLE PlanDetail(id INTEGER PRIMARY KEY NOT NULL, planId INTEGER, description TEXT, status INTEGER)");
  }

  Future<List<Plan>> getPlan() async{
    var dbClient = await db;
    var result = await dbClient.query("Plan", orderBy: "id");
    return result.map((data) => Plan.fromMap(data)).toList();
  }

  Future<List<PlanDetail>> getPlanDetail(int planId) async{
    var dbClient = await db;
    var result = await dbClient.query("PlanDetail", where: "planId=?", whereArgs: [planId]);
    return result.map((data) => PlanDetail.fromMap(data)).toList();
  }

  Future<int> insertPlan(Plan plan) async{
    var dbClient = await db;
    return await dbClient.insert("Plan", plan.toMap());
  }

  Future<int> insertPlanDetail(PlanDetail planDetail) async{
    var dbClient = await db;
    return await dbClient.insert("PlanDetail", planDetail.toMap());
  }

  Future<int> updatePlanDetail(PlanDetail planDetail) async{
    var dbClient = await db;
    return await dbClient.update("PlanDetail", planDetail.toMap(), where: "id=?", whereArgs: [planDetail.id]);
  }

  Future<void> removePlanDetail(int id) async{
    var dbClient = await db;
    return await dbClient.delete("PlanDetail", where: "id=?", whereArgs: [id]);
  }

  Future<List<Target>> getTargets() async{
    var dbClient = await db;
    var result = await dbClient.query("Target", orderBy: "id");
    return result.map((data) => Target.fromMap(data)).toList();
  }

  Future<List<Target>> getTargetDetail(int id) async{
    var dbClient = await db;
    var result = await dbClient.query("Target", where: "id=?", whereArgs: [id]);
    return result.map((data) => Target.fromMap(data)).toList();
  }

  Future<int> insertTarget(Target target) async{
    var dbClient = await db;
    return await dbClient.insert("Target", target.toMap());
  }

  Future<void> removeTarget(int id) async{
    var dbClient = await db;
    return await dbClient.delete("Target", where: "id=?", whereArgs: [id]);
  }

  Future<List<Favorite>> getFavorites() async{
    var dbClient = await db;
    var result = await dbClient.query("Favorites", orderBy: "id");
    return result.map((data) => Favorite.fromMap(data)).toList();
  }

  Future<List<Favorite>> getFavoritesByCityId(int id) async{
    var dbClient = await db;
    var result = await dbClient.query("Favorites", where: "cityId=?", whereArgs: [id]);
    return result.map((data) => Favorite.fromMap(data)).toList();
  }

  Future<int> insertFavorite(Favorite favorite) async{
    var dbClient = await db;
    return await dbClient.insert("Favorites", favorite.toMap());
  }

  Future<void> removeFavorite(int id) async{
    var dbClient = await db;
    return await dbClient.delete("Favorites", where: "cityId=?", whereArgs: [id]);
  }
}