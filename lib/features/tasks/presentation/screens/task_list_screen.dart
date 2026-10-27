import 'package:flutter/material.dart';

/// Layar daftar tugas utama (TugasKu).
class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TugasKu'),
      ),
      body: const Center(
        child: Text('Belum ada tugas'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        tooltip: 'Tambah tugas',
        child: const Icon(Icons.add),
      ),
    );
  }
}
