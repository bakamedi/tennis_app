import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../../core/icons/tennis_app_icons.dart';
import '../../utils/custom_date.dart';
import '../../utils/widget_util.dart';

import '../../../global/extensions/widgets_ext.dart';

class CalendarGW extends StatelessWidget {
  final String label;
  final Function(DateTime?) onPressed;
  const CalendarGW({
    super.key,
    required this.onPressed,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    final AdaptativeScreen adaptativeScreen = AdaptativeScreen.of(context);
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(
            TennisAppIcons.calendar_plus_regular,
          ).padding(
            EdgeInsets.only(
              right: adaptativeScreen.bwh(1),
            ),
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: adaptativeScreen.dp(1.3),
              fontWeight: FontWeight.w600,
              letterSpacing: 1,
            ),
          ),
        ],
      ),
      onPressed: () async => CalendarButtonOptions.selectDatePicker(
        context,
        onPressed,
      ),
    );
  }
}

abstract class CalendarButtonOptions {
  static void selectDatePicker(
    BuildContext context,
    void Function(DateTime?) onPressed,
  ) {
    if (Platform.isIOS) {
      WidgetUtils.showSheet(
        context,
        doneTxt: 'OK',
        child: _buildDatePicker(onPressed),
        onClicked: () => context.pop(),
      );
    } else {
      CalendarButtonOptions.selectDate(context, onPressed);
    }
  }

  static Widget _buildDatePicker(
    Function(DateTime?) onPressed,
  ) {
    return SizedBox(
      height: 180,
      child: CupertinoDatePicker(
        minimumYear: 1920,
        initialDateTime: DateTime.now(),
        mode: CupertinoDatePickerMode.date,
        onDateTimeChanged: (dateTime) => onPressed(dateTime),
      ),
    );
  }

  static void selectDate(
    BuildContext context,
    Function(DateTime?) onPressed,
  ) async {
    final picked = await showDatePicker(
      context: context,
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDate: DateTime.now(),
      firstDate: DateTime(1920),
      lastDate: DateTime.now(),
      fieldHintText: CustomDate.patternDate,
    );
    onPressed(picked);
  }
}
