import 'package:flutter/material.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';
import '../../../../core/icons/tennis_app_icons.dart';

import '../../../global/extensions/widgets_ext.dart';

class TimeGW extends StatelessWidget {
  final String label;
  final Function(DateTime?) onPressed;
  const TimeGW({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final AdaptativeScreen adaptativeScreen = AdaptativeScreen.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Escoga el tiempo:',
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.white,
            fontSize: adaptativeScreen.dp(1.5),
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        ElevatedButton(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                TennisAppIcons.clock_regular,
                color: Colors.black,
              ).padding(
                EdgeInsets.only(
                  right: adaptativeScreen.bwh(1),
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: adaptativeScreen.dp(1.3),
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          onPressed: () async => TimeButtonOptions.selectTimePicker(
            context,
            onPressed,
          ),
        ).padding(
          EdgeInsets.symmetric(
            horizontal: adaptativeScreen.bwh(4),
            vertical: adaptativeScreen.bhp(1.5),
          ),
        ),
      ],
    );
  }
}

abstract class TimeButtonOptions {
  static void selectTimePicker(
    BuildContext context,
    void Function(DateTime?) onPressed,
  ) async {
    final TimeOfDay? time = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
      initialEntryMode: TimePickerEntryMode.inputOnly,
      orientation: Orientation.portrait,
      builder: (BuildContext context, Widget? child) {
        // We just wrap these environmental changes around the
        // child in this builder so that we can apply the
        // options selected above. In regular usage, this is
        // rarely necessary, because the default values are
        // usually used as-is.
        return Theme(
          data: ThemeData(),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: MediaQuery(
              data: MediaQuery.of(context).copyWith(
                alwaysUse24HourFormat: false,
              ),
              child: child!,
            ),
          ),
        );
      },
    );
    if (time == null) {
      return onPressed(DateTime.now());
    } else {
      final timeFormat = DateTime(1, 1, time.hour, time.minute);
      return onPressed(timeFormat);
    }
  }
}
