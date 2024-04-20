import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/widgets.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';

import '../../../../global/extensions/widgets_ext.dart';
import '../../controller/field_controller.dart';
import 'events_days_w.dart';

class SelectedCalendarW extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;
  final FieldController fieldController;

  const SelectedCalendarW({
    super.key,
    required this.adaptativeScreen,
    required this.fieldController,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: adaptativeScreen.height,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: MonthView(
                minMonth: DateTime.now(),
                maxMonth: DateTime(2025),
                initialMonth: DateTime.now(),
                cellAspectRatio: 1,
                headerStyle: const HeaderStyle(
                  headerTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                onPageChange: (date, pageIndex) => print("$date, $pageIndex"),
                onCellTap: (events, date) {
                  print(events);
                },
                headerStringBuilder: (
                  date, {
                  secondaryDate,
                }) =>
                    fieldController.getMonthName(
                  date.month - 1,
                ),
                startDay: WeekDays.sunday,
                onEventTap: (event, date) => print(event),
                onDateLongPress: (date) => print(date),
              ).padding(
                EdgeInsets.only(
                  top: adaptativeScreen.bhp(4),
                  left: adaptativeScreen.bwh(3),
                  right: adaptativeScreen.bwh(3),
                ),
              ),
            ),
          ),
        ),
        EventsDaysW(
          adaptativeScreen: adaptativeScreen,
          fieldController: fieldController,
        ),
      ],
    );
  }
}
