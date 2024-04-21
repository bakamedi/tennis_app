import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../home/controller/home_controller.dart';
import '../controller/field_controller.dart';

void saveReservation(BuildContext context) async {
  final HomeController homeController = homeProvider.read();
  final FieldController fieldController = fieldProvider.read();

  if (fieldController.controllerPage!.page!.toInt() == 2) {
    fieldController.reservation().then(
      (value) async {
        homeController.findAllReservation().then(
              (value) => context.pop(),
            );
      },
    );
  } else {
    fieldController.nextPage();
  }
}
