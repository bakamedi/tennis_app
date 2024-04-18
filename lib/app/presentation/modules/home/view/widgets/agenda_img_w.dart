import 'package:flutter/material.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
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
      child: Image.asset(
        ImagesPath.GRASS,
        width: adaptativeScreen.bwh(35),
        height: adaptativeScreen.bhp(15),
        fit: BoxFit.cover,
      ),
    );
  }
}
