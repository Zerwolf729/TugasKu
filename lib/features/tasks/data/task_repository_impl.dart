import 'package:sqflite/sqflite.dart';

import '../../../domain/entities/task.dart';
import '../../../domain/repositories/task_repository.dart';
import 'task_database.dart';

/// Implementasi [TaskRepository] di atas SQLite lokal (sqflite).
///
/// Menyimpan tanggal dalam format ISO-8601 (TEXT) dan enum sebagai
/// indeks INTEGER sesuai schema di [TaskDatabase].
class TaskRepositoryImpl implements TaskRepository {
  /// Singleton DB helper.
  TaskRepositoryImpl() : _dbHelper = TaskDatabase.instance;

  final TaskDatabase _dbHelper;

  Future<Database> get _database => _dbHelper.database;

  static const _table = TaskDatabase.table;

  @override
  Future<List<Task>> getTasks({
    TaskStatus? status,
    TaskPriority? prioritas,
    String? mataKuliah,
  }) async {
    final conditions = <String>[];
    final args = <Object?>[];

    if (status != null) {
      conditions.add('status = ?');
      args.add(status.index);
    }
    if (prioritas != null) {
      conditions.add('prioritas = ?');
      args.add(prioritas.index);
    }
    if (mataKuliah != null) {
      conditions.add('LOWER(mataKuliah) LIKE ?');
      args.add('%${mataKuliah.toLowerCase()}%');
    }

    final db = await _database;
    final where = conditions.isEmpty ? null : conditions.join(' AND ');
    final rows = await db.query(
      _table,
      where: where,
      whereArgs: args.isEmpty ? null : args,
      orderBy:
          // Tugas bertenggat dulu (terdekat), lalu tanpa tenggat.
          'CASE WHEN deadline IS NULL THEN 1 ELSE 0 END, '
          'deadline ASC, '
          'createdAt DESC',
    );

    return rows.map(_fromRow).toList();
  }

  @override
  Future<Task?> getTaskById(int id) async {
    final db = await _database;
    final rows = await db.query(
      _table,
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return _fromRow(rows.first);
  }

  @override
  Future<int> createTask(Task task) async {
    final db = await _database;
    return db.insert(_table, _insertableRow(task));
  }

  @override
  Future<int> updateTask(Task task) async {
    final db = await _database;
    return db.update(
      _table,
      _updatableRow(task),
      where: 'id = ?',
      whereArgs: [task.id],
    );
  }

  @override
  Future<int> deleteTask(int id) async {
    final db = await _database;
    return db.delete(_table, where: 'id = ?', whereArgs: [id]);
  }

  @override
  Future<int> updateTaskStatus(int id, TaskStatus status) async {
    final existing = await getTaskById(id);
    if (existing == null) {
      throw StateError('Tugas dengan id $id tidak ditemukan.');
    }
    final updated = existing.copyWith(status: status, updatedAt: DateTime.now());
    return updateTask(updated);
  }

  /// Konversi baris DB menjadi [Task].
  Task _fromRow(Map<String, Object?> row) {
    return Task(
      id: row['id'] as int,
      mataKuliah: row['mataKuliah'] as String,
      judul: row['judul'] as String,
      deskripsi: (row['deskripsi'] as String?) ?? '',
      deadline:
          row['deadline'] == null
              ? null
              : DateTime.tryParse(row['deadline'] as String),
      prioritas: TaskPriority.values[row['prioritas'] as int],
      status: TaskStatus.values[row['status'] as int],
      createdAt: DateTime.tryParse(row['createdAt'] as String) ?? DateTime.now(),
      updatedAt:
          row['updatedAt'] == null
              ? null
              : DateTime.tryParse(row['updatedAt'] as String),
    );
  }

  /// Konversi [Task] menjadi baris DB untuk INSERT.
  /// `id` dihindari agar SQLite AUTOINCREMENT yang menghasilkannya.
  Map<String, Object?> _insertableRow(Task task) {
    return {
      'mataKuliah': task.mataKuliah,
      'judul': task.judul,
      'deskripsi': task.deskripsi,
      'deadline': task.deadline?.toIso8601String(),
      'prioritas': task.prioritas.index,
      'status': task.status.index,
      'createdAt': task.createdAt.toIso8601String(),
      'updatedAt': task.updatedAt?.toIso8601String(),
    };
  }

  /// Konversi [Task] menjadi baris DB untuk UPDATE (termasuk id).
  Map<String, Object?> _updatableRow(Task task) {
    final row = Map<String, Object?>.from(_insertableRow(task));
    row['id'] = task.id;
    return row;
  }
}
