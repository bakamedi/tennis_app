import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../controller/home_controller.dart';
import 'agenda_item_w.dart';

class ReservationW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  final HomeController homeController;

  const ReservationW({
    super.key,
    required this.adaptativeScreen,
    required this.homeController,
  });

  @override
  Widget build(BuildContext context) {
    if (homeController.userTennisFields == null) {
      return SliverToBoxAdapter(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(
              top: adaptativeScreen.bhp(40),
            ),
            child: const Text(
              'No hay datos que presentar, has tu primera reserva',
            ),
          ),
        ),
      );
    }
    if (homeController.userTennisFields!.isEmpty) {
      return SliverToBoxAdapter(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(
              top: adaptativeScreen.bhp(40),
            ),
            child: const Text(
              'No hay datos que presentar, has tu primera reserva',
            ),
          ),
        ),
      );
    }
    return SliverList.builder(
      itemCount: homeController.userTennisFields!.length,
      itemBuilder: (context, index) {
        return AgendaItemW(
          homeController: homeController,
          adaptativeScreen: adaptativeScreen,
          index: index,
          userTennisFieldModel: homeController.userTennisFields![index],
        );
      },
    );
  }
}
