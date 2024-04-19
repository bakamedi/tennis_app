import 'package:flutter/material.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../../../core/icons/tennis_app_icons.dart';
import '../../../../global/utils/images_path.dart';

class AgendaImgW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;

  const AgendaImgW({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(
          adaptativeScreen.dp(1),
        ),
        bottomLeft: Radius.circular(
          adaptativeScreen.dp(1),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            ImagesPath.GRASS,
            width: adaptativeScreen.bwh(35),
            height: adaptativeScreen.bhp(15),
            fit: BoxFit.cover,
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
            width: adaptativeScreen.bwh(35),
            height: adaptativeScreen.bhp(15),
            padding: EdgeInsets.only(
              top: adaptativeScreen.bhp(3),
            ),
            child: Column(
              children: [
                Icon(
                  TennisAppIcons.cloud_sun_rain_solid,
                  color: Colors.white,
                  size: adaptativeScreen.dp(5),
                ),
                Text(
                  '70% de lluvia',
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: adaptativeScreen.dp(1.5),
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
