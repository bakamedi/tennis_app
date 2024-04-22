import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../home/controller/home_controller.dart';
import '../controller/field_controller.dart';

void saveReservation(BuildContext context) async {
  final HomeController homeController = homeProvider.read();
  final FieldController fieldController = fieldProvider.read();

  if (fieldController.controllerPage!.page!.toInt() == 1) {
    if (fieldController.dateTo == null) {
      showSnack(
        context,
        fieldController,
        content: 'Seleccione una fecha primero!',
      );
      return;
    }
    if (fieldController.validateEventsByDate()) {
      showSnack(
        context,
        fieldController,
        content: 'No se puede hacer más reservas en este día!',
      );
      return;
    } else {
      fieldController.nextPage();
    }
  } else if (fieldController.controllerPage!.page!.toInt() == 2) {
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

void showSnack(
  BuildContext context,
  FieldController fieldController, {
  required String content,
}) {
  final snackBar = SnackBar(
    content: Text(content),
    backgroundColor: (Colors.black),
    action: SnackBarAction(
      label: 'Cerrar',
      textColor: Colors.white,
      onPressed: () {},
    ),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
