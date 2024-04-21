import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';
import 'package:tennis_agenda_app/app/presentation/modules/agenda-item/controller/agenda_item_controller.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../global/utils/images_path.dart';

import 'widgets/icon_weather_w.dart';
import 'widgets/info_item_w.dart';

class AgendaItemView extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  const AgendaItemView({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(
        builder: (_, ref, __) {
          final AgendaItemController agendaItemController = ref.watch(
            agendaItemProvider,
          );
          return Stack(
            children: [
              Image.asset(
                agendaItemController.userTennisFieldSelected!.path ??
                    ImagesPath.GRASS,
                fit: BoxFit.cover,
                height: adaptativeScreen.bhp(100),
              ),
              Container(
                width: adaptativeScreen.width,
                height: adaptativeScreen.height,
                color: Colors.black.withOpacity(0.4),
              ),
              Container(
                margin: EdgeInsets.only(
                  bottom: adaptativeScreen.bhp(90),
                ),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  iconTheme: const IconThemeData(
                    color: Colors.white,
                  ),
                ),
              ),
              InfoItemW(
                adaptativeScreen: adaptativeScreen,
                agendaItemController: agendaItemController,
              ),
              IconWeatherW(
                adaptativeScreen: adaptativeScreen,
              ),
            ],
          );
        },
      ),
    );
  }
}
