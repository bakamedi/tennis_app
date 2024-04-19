import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../global/utils/custom_date.dart';
import 'field_state.dart';

final fieldProvider = Provider.state<FieldController, FieldState>(
  (_) => FieldController(
    FieldState.initialState,
  ),
);

class FieldController extends StateNotifier<FieldState> {
  FieldController(
    super.initialState,
  );

  String get getDateTo => CustomDate.parseDate(state.dateTo!);
  String get getTimeTo => CustomDate.parseTime(state.timeTo!);

  void onChangeDate(DateTime dateTo) {
    onlyUpdate(
      state = state.copyWith(
        dateTo: dateTo,
      ),
    );
  }

  void onChangeTime(DateTime timeTo) {
    onlyUpdate(
      state = state.copyWith(
        timeTo: timeTo,
      ),
    );
  }
}
