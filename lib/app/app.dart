import 'package:flutter/material.dart';

import 'router.dart';

class IGCApp extends StatelessWidget {
  const IGCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'IGC',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}