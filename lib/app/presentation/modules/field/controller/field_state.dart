import 'package:flutter/material.dart';

import 'package:calendar_view/calendar_view.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/field_tennis_model.dart';
import '../../../../domain/models/user_tennis_field_model.dart';

part 'field_state.freezed.dart';

@freezed
class FieldState with _$FieldState {
  const FieldState._();
  const factory FieldState({
    @Default('1') String idField,
    @Default(false) bool fetching,
    DateTime? dateTo,
    DateTime? timeTo,
    List<Field>? fields,
    Field? selectedField,
    @Default(Colors.white) Color color,
    PageController? controllerPage,
    List<CalendarEventData>? events,
    EventController<Object?>? controllerEvent,
    @Default('Siguiente') String btnTxt,
    @Default('') String reservationName,
    List<CalendarEventData<Object?>>? eventsOfDay,
    List<UserTennisFieldModel>? userTennisFields,
  }) = _FieldState;

  static FieldState get initialState => FieldState(
        dateTo: DateTime.now(),
        timeTo: DateTime.now(),
        controllerPage: PageController(
          initialPage: 0,
        ),
      );
}
