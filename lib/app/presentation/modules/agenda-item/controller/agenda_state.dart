import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/user_tennis_field_model.dart';

part 'agenda_state.freezed.dart';

@freezed
class AgendaState with _$AgendaState {
  const AgendaState._();
  const factory AgendaState({
    UserTennisFieldModel? userTennisFieldSelected,
  }) = _AgendaState;

  static AgendaState get initialState => const AgendaState();
}
