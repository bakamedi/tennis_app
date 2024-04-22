import 'package:flutter/material.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../controller/field_controller.dart';

import '../../../../global/extensions/widgets_ext.dart';

class SelectedRainW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  final FieldController fieldController;
  const SelectedRainW({
    super.key,
    required this.adaptativeScreen,
    required this.fieldController,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Center(
        child: Text(
          'Probabilidad de lluvia: ${fieldController.rainProbability}%',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: adaptativeScreen.dp(2),
            letterSpacing: 1,
          ),
        ).padding(
          EdgeInsets.only(
            bottom: adaptativeScreen.bhp(1),
          ),
        ),
      ),
    );
  }
}
