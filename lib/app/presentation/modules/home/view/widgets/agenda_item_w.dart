import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';

import '../../../../../core/icons/tennis_app_icons.dart';
import '../../../../../domain/models/user_tennis_field_model.dart';
import '../../../../global/extensions/widgets_ext.dart';
import '../../../../global/utils/custom_date.dart';
import '../../controller/home_controller.dart';
import '../../utils/go_agenda_item.dart';
import 'agenda_img_w.dart';

class AgendaItemW extends StatelessWidget {
  final int index;
  final HomeController homeController;
  final AdaptativeScreen adaptativeScreen;
  final UserTennisFieldModel userTennisFieldModel;

  const AgendaItemW({
    super.key,
    required this.adaptativeScreen,
    required this.index,
    required this.userTennisFieldModel,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => goAgendaItem(
        context,
        userTennisFieldModel,
      ),
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
        child: Slidable(
          key: ValueKey(index),
          endActionPane: ActionPane(
            motion: const ScrollMotion(),
            children: [
              SlidableAction(
                onPressed: (context) => homeController.deleteReservation(
                  userTennisFieldModel,
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                backgroundColor: const Color(0xFFFE4A49),
                foregroundColor: Colors.white,
                icon: Icons.delete,
                label: 'Borrar',
              ),
            ],
          ),
          child: Row(
            children: [
              AgendaImgW(
                adaptativeScreen: adaptativeScreen,
                probability: userTennisFieldModel.rainProbability ?? '',
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _titleAndSubtitle(
                    icon: TennisAppIcons.calendar_days_regular,
                    title: 'Fecha Agendada:',
                    subTitle: CustomDate.dateInfo(
                      userTennisFieldModel.date ?? '',
                    ),
                  ),
                  _titleAndSubtitle(
                    icon: TennisAppIcons.clock_solid,
                    title: 'Hora:',
                    subTitle: CustomDate.timeInfo(
                      userTennisFieldModel.date ?? '',
                    ),
                  ),
                  _titleAndSubtitle(
                    icon: TennisAppIcons.circle_user_solid,
                    title: 'Reserva a nombre de:',
                    subTitle: userTennisFieldModel.name ?? '',
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
