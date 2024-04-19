import 'package:flutter/material.dart';
import 'package:flutter_meedu/consumer/consumer_widget.dart';

import '../../../../core/adaptative_screen/adaptative_screen.dart';

import '../controller/field_controller.dart';
import 'widgets/field_form_w.dart';
import 'widgets/selected_field_w.dart';

class FieldView extends StatelessWidget {
  final AdaptativeScreen adaptativeScreen;

  const FieldView({
    super.key,
    required this.adaptativeScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer(
        builder: (_, ref, __) {
          final fieldController = ref.watch(fieldProvider);
          return PageView(
            children: [
              CustomScrollView(
                shrinkWrap: true,
                slivers: [
                  SelectedFieldW(
                    adaptativeScreen: adaptativeScreen,
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => fieldController.test(),
                child: Text('test'),
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
          );
        },
      ),
    );
  }
}
