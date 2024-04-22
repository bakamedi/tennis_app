import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../router/routes/fields_route.dart';
import '../../field/controller/field_controller.dart';
import '../controller/home_controller.dart';

void goAddAgenda(BuildContext context) {
  final homeController = homeProvider.read();
  final fieldController = fieldProvider.read();
  fieldController.setUserTennisField(
    homeController.userTennisFields,
  );
  context.pushNamed(
    FieldsRoute.path,
  );
}
