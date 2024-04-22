import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:calendar_view/calendar_view.dart';

import '../../../../../core/adaptative_screen/adaptative_screen.dart';

import '../../../../global/extensions/widgets_ext.dart';
import '../../../../global/widgets/sliver_size_box_gw.dart';
import '../../controller/field_controller.dart';
import 'events_days_w.dart';
import 'selected_day_w.dart';
import 'selected_rain_w.dart';

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
                onCellTap: (events, date) {
                  fieldController.onChangeDate(
                    date,
                  );
                  fieldController.onChangeEventsOfDay(
                    events,
                  );
                },
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
                  left: adaptativeScreen.bwh(3),
                  right: adaptativeScreen.bwh(3),
                ),
              ),
            ),
          ),
        ),
        SelectedDayW(
          adaptativeScreen: adaptativeScreen,
          fieldController: fieldController,
        ),
        SelectedRainW(
          adaptativeScreen: adaptativeScreen,
          fieldController: fieldController,
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
        SliverSizeBoxGW(
          height: adaptativeScreen.bhp(14),
        ),
      ],
    );
  }
}
