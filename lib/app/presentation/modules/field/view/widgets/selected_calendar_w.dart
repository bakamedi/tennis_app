import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:calendar_view/calendar_view.dart';

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
            height: adaptativeScreen.height / 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              child: MonthView(
                minMonth: DateTime.now(),
                maxMonth: DateTime(
                  DateTime.now().year + 1,
                ),
                initialMonth: DateTime.now(),
                cellAspectRatio: 1,
                headerStyle: const HeaderStyle(
                  headerTextStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  ),
                ),
                onCellTap: (events, date) =>
                    fieldController.onChangeEventsOfDay(
                  events,
                ),
                headerStringBuilder: (
                  date, {
                  secondaryDate,
                }) =>
                    fieldController.getMonthName(
                  date,
                ),
                startDay: WeekDays.sunday,
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
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: adaptativeScreen.bwh(4),
          ),
          sliver: EventsDaysW(
            adaptativeScreen: adaptativeScreen,
            fieldController: fieldController,
          ),
        ),
      ],
    );
  }
}
