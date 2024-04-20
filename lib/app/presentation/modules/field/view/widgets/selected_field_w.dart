import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';

import '../../../../../core/icons/tennis_app_icons.dart';
import '../../../../global/extensions/widgets_ext.dart';
import '../../controller/field_controller.dart';

class SelectedFieldW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  final FieldController fieldController;

  const SelectedFieldW({
    super.key,
    required this.adaptativeScreen,
    required this.fieldController,
  });

  @override
  Widget build(BuildContext context) {
    final fields = fieldController.fields;
    final selectedField = fieldController.selectedField;
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: FlutterCarousel(
            options: CarouselOptions(
              autoPlay: false,
              viewportFraction: 0.85,
              enlargeCenterPage: true,
              slideIndicator: CircularWaveSlideIndicator(),
              onPageChanged: (index, _) => fieldController.onChangeColorBg(
                fields![index],
              ),
            ),
            items: getFields(),
          ).padding(
            EdgeInsets.only(
              top: adaptativeScreen.bhp(2),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                TennisAppIcons.tennis_court_svgrepo_com_2,
                color: Colors.white,
                size: adaptativeScreen.dp(10),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Cancha de Tennis escogida:',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: adaptativeScreen.dp(1.3),
                      color: Colors.white.withOpacity(0.9),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1,
                    ),
                  ),
                  Text(
                    selectedField == null ? 'Césped' : selectedField.name!,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: adaptativeScreen.dp(2),
                      letterSpacing: 1,
                    ),
                  ),
                ],
              ).padding(
                EdgeInsets.only(
                  bottom: adaptativeScreen.bhp(4),
                ),
              ),
            ],
          ).padding(
            EdgeInsets.only(
              top: adaptativeScreen.bhp(5),
            ),
          ),
        ),
      ],
    );
  }

  List<Widget>? getFields() {
    if (fieldController.fields == null) {
      return [];
    }
    return fieldController.fields!.map(
      (i) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(
            adaptativeScreen.dp(2),
          ),
          child: Image.asset(
            i.path ?? '',
            fit: BoxFit.cover,
          ),
        );
      },
    ).toList();
  }
}
