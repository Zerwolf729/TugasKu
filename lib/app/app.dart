import 'package:flutter/material.dart';

import '../../features/tasks/presentation/screens/task_list_screen.dart';
import 'theme/app_theme.dart';

export 'theme/app_colors.dart';
export 'theme/app_spacing.dart';
export 'theme/app_typography.dart';

/// Entry point MaterialApp untuk aplikasi TugasKu.
class TugasKuApp extends StatelessWidget {
  const TugasKuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TugasKu',
      theme: AppTheme.light,
      home: const TaskListScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
