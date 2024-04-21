import 'package:flutter/material.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../controller/field_controller.dart';

class EventsDaysW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  final FieldController fieldController;

  const EventsDaysW(
      {super.key,
      required this.adaptativeScreen,
      required this.fieldController});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {},
    );
  }
}
