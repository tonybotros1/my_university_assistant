import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SQLDB extends GetxController {
  static Database? _db;

  Future<Database?> get db async {
    if (_db == null) {
      _db = await initDB();
      return _db;
    } else {
      return _db;
    }
  }

  initDB() async {
    String databasePath = await getDatabasesPath();
    String path = join(databasePath, 'universityAssistant.db');
    Database mydb = await openDatabase(path, onCreate: _onCreate,version: 1,onUpgrade: _onUpgrade);
    return mydb;
  }

  _onCreate(Database db, int version) async { // this method id called only once (on init the db)
    await db.execute('''
CREATE TABLE "exam_number" (
  id INTEGER AUTOINCREMENT NOT NULL PRIMARY KEY,
  number TEXT NOT NULL 
)
''');
    print('created================================');
  }

  _onUpgrade(Database db,int oldVersion,int newVersion){

  }

  readData(String sql) async {
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }

  insertData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }

  updateData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;
  }

  deleteData(String sql) async {
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }
}
