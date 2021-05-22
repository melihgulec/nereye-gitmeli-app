import 'dart:async';
import 'package:nereye_gitmeli_app/Classes/User/Favorite.dart';
import 'package:nereye_gitmeli_app/Classes/User/Plan.dart';
import 'package:nereye_gitmeli_app/Classes/User/PlanDetail.dart';
import 'package:nereye_gitmeli_app/Classes/User/Target.dart';
import 'package:nereye_gitmeli_app/Classes/User/Expenses.dart';
import 'package:nereye_gitmeli_app/Classes/User/ExpensesDetail.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DbHelper{
  static Database _db;

  String _targetTableName = 'Target';
  String _favoritesTableName = 'Favorites';
  String _planTableName = 'Plan';
  String _planDetailTableName = 'PlanDetail';
  String _expensesTableName = 'Expenses';
  String _expensesDetailTableName = 'ExpensesDetail';

  String get targetTableName => _targetTableName;
  String get favoritesTableName => _favoritesTableName;
  String get planTableName => _planTableName;
  String get planDetailTableName => _planDetailTableName;
  String get expensesTableName => _expensesTableName;
  String get expensesDetailTableName => _expensesDetailTableName;

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
    await db.execute("CREATE TABLE $_targetTableName(id INTEGER PRIMARY KEY NOT NULL, targetHead TEXT, targetDestination TEXT, targetDestinationCityId INTEGER, targetDescription TEXT, targetDate TEXT)");
    await db.execute("CREATE TABLE $_favoritesTableName(id INTEGER PRIMARY KEY NOT NULL, cityId INTEGER)");
    await db.execute("CREATE TABLE $_planTableName(id INTEGER PRIMARY KEY NOT NULL, planTitle TEXT)");
    await db.execute("CREATE TABLE $_planDetailTableName(id INTEGER PRIMARY KEY NOT NULL, planId INTEGER, description TEXT, status INTEGER)");
    await db.execute("CREATE TABLE $_expensesTableName(id INTEGER PRIMARY KEY NOT NULL, expenseTitle TEXT, expenseDate TEXT)");
    await db.execute("CREATE TABLE $_expensesDetailTableName(id INTEGER PRIMARY KEY NOT NULL, expenseId INTEGER, expenseDescription TEXT, expenseMoney INTEGER)");
  }

  Future<List<Plan>> getPlan() async{
    var dbClient = await db;
    var result = await dbClient.query("$_planTableName", orderBy: "id");
    return result.map((data) => Plan.fromMap(data)).toList();
  }

  Future<List<PlanDetail>> getPlanDetail(int planId) async{
    var dbClient = await db;
    var result = await dbClient.query("$_planDetailTableName", where: "planId=?", whereArgs: [planId]);
    return result.map((data) => PlanDetail.fromMap(data)).toList();
  }

  Future<List<Expenses>> getExpenses() async{
    var dbClient = await db;
    var result = await dbClient.query("$_expensesTableName", orderBy: "id");
    return result.map((data) => Expenses.fromMap(data)).toList();
  }

  Future<List<ExpensesDetail>> getExpensesDetail(int expenseId) async{
    var dbClient = await db;
    var result = await dbClient.query("$_expensesDetailTableName", where: "expenseId=?", whereArgs: [expenseId]);
    return result.map((data) => ExpensesDetail.fromMap(data)).toList();
  }

  Future<List<Target>> getTargets() async{
    var dbClient = await db;
    var result = await dbClient.query("$_targetTableName", orderBy: "id");
    return result.map((data) => Target.fromMap(data)).toList();
  }

  Future<List<Target>> getTargetDetail(int id) async{
    var dbClient = await db;
    var result = await dbClient.query("$_targetTableName", where: "id=?", whereArgs: [id]);
    return result.map((data) => Target.fromMap(data)).toList();
  }

  Future<List<Favorite>> getFavorites() async{
    var dbClient = await db;
    var result = await dbClient.query("$_favoritesTableName", orderBy: "id");
    return result.map((data) => Favorite.fromMap(data)).toList();
  }

  Future<List<Favorite>> getFavoritesByCityId(int id) async{
    var dbClient = await db;
    var result = await dbClient.query("Favorites", where: "cityId=?", whereArgs: [id]);
    return result.map((data) => Favorite.fromMap(data)).toList();
  }

  Future getTotal(String tableName, String columnName) async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT SUM($columnName) FROM $tableName");
    int value = result[0]["SUM($columnName)"];
    return value;
  }

  Future getTotalById(String tableName, String columnName, int id, String idColumn) async {
    var dbClient = await db;
    var result = await dbClient.rawQuery("SELECT SUM($columnName) FROM $tableName WHERE $idColumn = $id");
    int value = result[0]["SUM($columnName)"];
    return value;
  }

  Future<int> insertItem(dynamic model, String tableName) async{
    var dbClient = await db;
    return await dbClient.insert("$tableName", model.toMap());
  }

  Future<int> updateItem(dynamic model, String tableName, String columnName) async{
    var dbClient = await db;
    return await dbClient.update("$tableName", model.toMap(), where: "$columnName = ?", whereArgs: [model.id]);
  }

  Future<void> removeItem(String tableName, String columnName, int id) async{
    var dbClient = await db;
    return await dbClient.delete("$tableName", where: "$columnName=?", whereArgs: [id]);
  }
}