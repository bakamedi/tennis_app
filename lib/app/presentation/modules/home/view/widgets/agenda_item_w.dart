import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';

import '../../../../../core/icons/tennis_app_icons.dart';
import '../../../../global/extensions/widgets_ext.dart';
import '../../../../router/routes/agenda_item_route.dart';
import 'agenda_img_w.dart';

class AgendaItemW extends StatelessWidget {
  final int index;
  final AdaptativeScreen adaptativeScreen;

  const AgendaItemW({
    super.key,
    required this.adaptativeScreen,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(AgendaItemRoute.path),
      child: Hero(
        tag: index,
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: adaptativeScreen.bhp(0.5),
            horizontal: adaptativeScreen.bwh(3),
          ),
          decoration: const BoxDecoration(
            color: Color.fromARGB(226, 243, 241, 241),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Row(
            children: [
              AgendaImgW(
                adaptativeScreen: adaptativeScreen,
              ),
              Column(
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
              ),
            ],
          ),
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
          size: adaptativeScreen.dp(1.5),
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
                fontSize: adaptativeScreen.dp(1),
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
            Text(
              subTitle,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: adaptativeScreen.dp(1),
                fontWeight: FontWeight.w600,
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
