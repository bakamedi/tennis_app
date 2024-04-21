import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../domain/models/user_tennis_field_model.dart';
import '../../../router/routes/agenda_item_route.dart';
import '../../agenda-item/controller/agenda_item_controller.dart';

void goAgendaItem(
  BuildContext context,
  UserTennisFieldModel? userTennisFieldModel,
) async {
  final AgendaItemController agendaItemController = agendaItemProvider.read();
  agendaItemController.onChangeSelected(
    userTennisFieldModel,
  );
  context.pushNamed(
    AgendaItemRoute.path,
  );
}
