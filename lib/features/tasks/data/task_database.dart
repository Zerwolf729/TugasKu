import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

/// Singleton database helper for tugas.
class TaskDatabase {
  TaskDatabase._private();
  static final TaskDatabase instance = TaskDatabase._private();

  static const _dbName = 'tugas_ku.db';
  static const _dbVersion = 1;

  static const table = 'tasks';

  Database? _db;

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _init();
    return _db!;
  }

  Future<Database> _init() async {
    final dbPath = join(await getDatabasesPath(), _dbName);
    return await openDatabase(dbPath, version: _dbVersion, onCreate: _create);
  }

  static FutureOr<void> _create(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $table (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        mataKuliah TEXT NOT NULL,
        judul TEXT NOT NULL,
        deskripsi TEXT NOT NULL DEFAULT '',
        deadline TEXT,
        prioritas INTEGER NOT NULL DEFAULT 1,
        status INTEGER NOT NULL DEFAULT 0,
        createdAt TEXT NOT NULL,
        updatedAt TEXT
      )
    ''');
  }
}
