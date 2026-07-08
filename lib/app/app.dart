import 'package:flutter/material.dart';

import '../core/theme/app_theme.dart';

class IGCApp extends StatelessWidget {
  const IGCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IGC',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text('IGC Application'),
        ),
      ),
    );
  }
}