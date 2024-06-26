import 'package:flutter/material.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../../../core/icons/tennis_app_icons.dart';
import '../../../../global/widgets/calendar/time_gw.dart';
import '../../../../global/widgets/input_fields/text_text_form_field.dart';
import '../../controller/field_controller.dart';

import '../../../../global/extensions/widgets_ext.dart';

class FieldFormW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  final FieldController fieldController;

  const FieldFormW({
    super.key,
    required this.fieldController,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TimeGW(
            label: fieldController.getTimeTo,
            onPressed: (time) => fieldController.onChangeTime(
              time,
            ),
          ),
          Text(
            'Reserva a nombre de:',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.white,
              fontSize: adaptativeScreen.dp(1.5),
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          ),
          InputTextField(
            onChanged: (name) => fieldController.onChangeRevervationName(
              name,
            ),
            prefixIcon: const Icon(TennisAppIcons.user_regular),
            backgroundText: 'Escriba el nombre',
          ).padding(EdgeInsets.symmetric(
            vertical: adaptativeScreen.bhp(1.5),
          )),
        ],
      ).padding(
        EdgeInsets.symmetric(
          vertical: adaptativeScreen.bhp(1.5),
          horizontal: adaptativeScreen.bwh(5),
        ),
      ),
    );
  }
}
