import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';

import '../../../global/widgets/buttons/primary_btn.dart';
import '../../../global/widgets/buttons/secondary_btn.dart';
import '../controller/field_controller.dart';
import 'widgets/field_form_w.dart';
import 'widgets/selected_calendar_w.dart';
import 'widgets/selected_field_w.dart';

class FieldView extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;

  const FieldView({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final fieldController = ref.watch(fieldProvider);

        return CalendarControllerProvider(
          controller: EventController()..addAll(fieldController.events),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: fieldController.color,
              iconTheme: const IconThemeData(
                color: Colors.white,
              ),
              leading: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.close),
              ),
            ),
            backgroundColor: fieldController.color,
            body: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: fieldController.controllerPage,
              onPageChanged: (value) => fieldController.changePage(
                value,
              ),
              children: [
                SelectedFieldW(
                  adaptativeScreen: adaptativeScreen,
                  fieldController: fieldController,
                ),
                SelectedCalendarW(
                  adaptativeScreen: adaptativeScreen,
                  fieldController: fieldController,
                ),
                CustomScrollView(
                  shrinkWrap: true,
                  slivers: [
                    FieldFormW(
                      adaptativeScreen: adaptativeScreen,
                      fieldController: fieldController,
                    ),
                  ],
                ),
              ],
            ),
            floatingActionButton: Row(
              children: [
                Expanded(
                  child: SecondaryBtn(
                    iconData: Icons.arrow_back_ios,
                    onPressed: () {},
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: PrimaryBtn(
                    label: fieldController.getLabelBtn(),
                    verticalSpace: adaptativeScreen.bhp(1),
                    onPressed: () => fieldController.nextPage(),
                  ),
                ),
              ],
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
          ),
        );
      },
    );
  }
}
