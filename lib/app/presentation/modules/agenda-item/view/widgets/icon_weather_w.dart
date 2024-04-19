import 'package:flutter/material.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../../../core/icons/tennis_app_icons.dart';

class IconWeatherW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;

  const IconWeatherW({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
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
                fontSize: adaptativeScreen.dp(2.6),
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
