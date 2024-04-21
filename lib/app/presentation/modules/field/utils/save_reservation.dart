import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../controller/field_controller.dart';

void saveReservation(BuildContext context) async {
  final FieldController fieldController = fieldProvider.read();

  if (fieldController.controllerPage!.page!.toInt() == 2) {
    fieldController.reservation().then(
          (value) => context.pop(),
        );
  } else {
    fieldController.nextPage();
  }
}
