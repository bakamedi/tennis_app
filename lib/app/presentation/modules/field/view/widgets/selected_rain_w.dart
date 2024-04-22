import 'package:flutter/material.dart';
import 'package:tennis_agenda_app/app/core/icons/tennis_app_icons.dart';

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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            TennisAppIcons.cloud_showers_heavy_solid,
            color: Colors.white,
            size: adaptativeScreen.dp(
              2,
            ),
          ).padding(
            EdgeInsets.only(
              bottom: adaptativeScreen.bhp(0.1),
              right: adaptativeScreen.bwh(1),
            ),
          ),
          Text(
            'Probabilidad de lluvia: ${fieldController.rainProbability}%',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: adaptativeScreen.dp(2),
              letterSpacing: 1,
            ),
          ),
        ],
      ).padding(
        EdgeInsets.only(
          bottom: adaptativeScreen.bhp(1),
        ),
      ),
    );
  }
}
