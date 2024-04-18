import 'package:flutter/material.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../../../core/icons/tennis_app_icons.dart';

import '../../../../global/extensions/widgets_ext.dart';

class InfoItemW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;

  const InfoItemW({super.key, required this.adaptativeScreen});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: adaptativeScreen.bhp(60),
        left: adaptativeScreen.bwh(5),
        right: adaptativeScreen.bwh(5),
      ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _titleAndSubtitle(
            icon: TennisAppIcons.calendar_days_regular,
            title: 'Fecha Agendada:',
            subTitle: 'Jueves 18 Abril, 2024 ',
          ),
          _titleAndSubtitle(
            icon: TennisAppIcons.clock_solid,
            title: 'Hora:',
            subTitle: '10:00AM a 15:00PM',
          ),
          _titleAndSubtitle(
            icon: TennisAppIcons.circle_user_solid,
            title: 'Reserva a nombre de:',
            subTitle: 'Bakke Medina',
          ),
        ],
      ).padding(
        EdgeInsets.only(
          bottom: adaptativeScreen.bhp(1.5),
        ),
      ),
    );
  }

  Widget _titleAndSubtitle({
    required IconData icon,
    required String title,
    required String subTitle,
  }) {
    return Row(
      children: [
        Icon(
          icon,
          size: adaptativeScreen.dp(2),
        ).padding(
          EdgeInsets.only(
            right: adaptativeScreen.bwh(3),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: adaptativeScreen.dp(1.5),
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            Text(
              subTitle,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: adaptativeScreen.dp(1.7),
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ],
    ).padding(
      EdgeInsets.only(
        top: adaptativeScreen.bhp(1.2),
        left: adaptativeScreen.bwh(5),
      ),
    );
  }
}
