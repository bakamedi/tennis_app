import 'package:flutter/material.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../../core/icons/tennis_app_icons.dart';
import '../../../global/utils/images_path.dart';

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
            ),
          ),
          InfoItemW(
            adaptativeScreen: adaptativeScreen,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(
                bottom: adaptativeScreen.bhp(40),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    TennisAppIcons.cloud_sun_rain_solid,
                    color: Colors.white,
                    size: adaptativeScreen.dp(15),
                  ),
                  Text(
                    '70% de lluvia',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: adaptativeScreen.dp(2.5),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
