/// Entitas tugas (domain).
class Task {
  final int? id;
  final String mataKuliah;
  final String judul;
  final String deskripsi;
  final DateTime? deadline;
  final TaskPriority prioritas;
  final TaskStatus status;
  final DateTime createdAt;
  final DateTime? updatedAt;

  const Task({
    this.id,
    required this.mataKuliah,
    required this.judul,
    this.deskripsi = '',
    this.deadline,
    this.prioritas = TaskPriority.sedang,
    this.status = TaskStatus.belumDikerjakan,
    required this.createdAt,
    this.updatedAt,
  });

  Task copyWith({
    int? id,
    String? mataKuliah,
    String? judul,
    String? deskripsi,
    DateTime? deadline,
    bool? removeDeadline,
    TaskPriority? prioritas,
    TaskStatus? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return Task(
      id: id ?? this.id,
      mataKuliah: mataKuliah ?? this.mataKuliah,
      judul: judul ?? this.judul,
      deskripsi: deskripsi ?? this.deskripsi,
      deadline: removeDeadline == true ? null : (deadline ?? this.deadline),
      prioritas: prioritas ?? this.prioritas,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }
}

/// Prioritas tugas.
enum TaskPriority { rendah, sedang, tinggi }

extension TaskPriorityExtension on TaskPriority {
  String get label {
    switch (this) {
      case TaskPriority.rendah:
        return 'Rendah';
      case TaskPriority.sedang:
        return 'Sedang';
      case TaskPriority.tinggi:
        return 'Tinggi';
    }
  }
}

/// Status tugas (3-state).
enum TaskStatus { belumDikerjakan, sedangDikerjakan, selesai }

extension TaskStatusExtension on TaskStatus {
  String get label {
    switch (this) {
      case TaskStatus.belumDikerjakan:
        return 'Belum dikerjakan';
      case TaskStatus.sedangDikerjakan:
        return 'Sedang dikerjakan';
      case TaskStatus.selesai:
        return 'Selesai';
    }
  }
}
