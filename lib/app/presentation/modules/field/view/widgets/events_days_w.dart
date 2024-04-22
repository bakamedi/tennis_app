import 'package:flutter/material.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../controller/field_controller.dart';

class EventsDaysW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  final FieldController fieldController;

  const EventsDaysW(
      {super.key,
      required this.adaptativeScreen,
      required this.fieldController});

  @override
  Widget build(BuildContext context) {
    final eventsOfDay = fieldController.eventsOfDay;
    if (eventsOfDay == null) {
      return SliverToBoxAdapter(
        child: _myBox(
          content: 'Escoga un día',
        ),
      );
    } else if (eventsOfDay.isEmpty) {
      return SliverToBoxAdapter(
        child: _myBox(
          content: 'No existen eventos para este día',
        ),
      );
    } else {
      return SliverList.builder(
        itemCount: eventsOfDay.length,
        itemBuilder: (context, index) {
          final eventOfDay = eventsOfDay[index];
          return Container(
            margin: EdgeInsets.only(
              bottom: adaptativeScreen.bhp(2),
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: ListTile(
              title: Column(
                children: [
                  Text(eventOfDay.title),
                ],
              ),
            ),
          );
        },
      );
    }
  }

  Widget _myBox({required String content}) {
    return Container(
      height: adaptativeScreen.bhp(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          content,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontSize: adaptativeScreen.dp(2),
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
