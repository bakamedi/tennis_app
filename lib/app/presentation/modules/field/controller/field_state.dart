import 'package:freezed_annotation/freezed_annotation.dart';

part 'field_state.freezed.dart';

@freezed
class FieldState with _$FieldState {
  const FieldState._();
  const factory FieldState({
    @Default(false) bool fetching,
    DateTime? dateTo,
    DateTime? timeTo,
  }) = _FieldState;

  static FieldState get initialState => FieldState(
        dateTo: DateTime.now(),
        timeTo: DateTime.now(),
      );
}
