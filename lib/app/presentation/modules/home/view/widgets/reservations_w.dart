import 'package:flutter/material.dart';

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
      return const SliverToBoxAdapter(
        child: Center(
          child: Text('No hay datos'),
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
