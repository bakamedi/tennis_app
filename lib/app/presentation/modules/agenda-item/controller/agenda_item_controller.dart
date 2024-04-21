import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../domain/models/user_tennis_field_model.dart';
import 'agenda_state.dart';

final agendaItemProvider = Provider.state<AgendaItemController, AgendaState>(
  (_) => AgendaItemController(
    AgendaState.initialState,
  ),
);

class AgendaItemController extends StateNotifier<AgendaState> {
  AgendaItemController(super.initialState);

  UserTennisFieldModel? get userTennisFieldSelected =>
      state.userTennisFieldSelected;

  void onChangeSelected(
    UserTennisFieldModel? userTennisFieldModel,
  ) {
    onlyUpdate(
      state = state.copyWith(
        userTennisFieldSelected: userTennisFieldModel,
      ),
    );
  }
}
