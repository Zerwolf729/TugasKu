import '../entities/task.dart';

/// Antarmuka repository tugas.
abstract class TaskRepository {
  Future<List<Task>> getTasks({
    TaskStatus? status,
    TaskPriority? prioritas,
    String? mataKuliah,
  });
  Future<Task?> getTaskById(int id);
  Future<int> createTask(Task task);
  Future<int> updateTask(Task task);
  Future<int> deleteTask(int id);
  Future<int> updateTaskStatus(int id, TaskStatus status);
}
