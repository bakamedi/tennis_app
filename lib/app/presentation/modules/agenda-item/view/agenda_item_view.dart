import 'package:flutter/material.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../global/utils/images_path.dart';

import 'widget/icon_weather_w.dart';
import 'widget/info_item_w.dart';

class AgendaItemView extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  const AgendaItemView({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImagesPath.GRASS,
            fit: BoxFit.cover,
            height: adaptativeScreen.bhp(100),
          ),
          Container(
            margin: EdgeInsets.only(
              bottom: adaptativeScreen.bhp(90),
            ),
            child: AppBar(
              backgroundColor: Colors.transparent,
              iconTheme: const IconThemeData(color: Colors.white),
            ),
          ),
          InfoItemW(
            adaptativeScreen: adaptativeScreen,
          ),
          IconWeatherW(
            adaptativeScreen: adaptativeScreen,
          ),
        ],
      ),
    );
  }
}
