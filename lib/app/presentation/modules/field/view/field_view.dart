import 'package:flutter/material.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';

class FieldView extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;

  const FieldView({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [],
      ),
    );
  }
}
