import 'dart:async';
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
}