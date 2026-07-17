import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'router.dart';

class IGCApp extends StatelessWidget {
  const IGCApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProviderScope(
      child: _App(),
    );
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'IGC',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}