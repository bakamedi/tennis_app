import 'package:flutter/material.dart';

import 'presentation/router/router_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routerProvider.read(),
      title: 'Tennis App',
    );
  }
}
