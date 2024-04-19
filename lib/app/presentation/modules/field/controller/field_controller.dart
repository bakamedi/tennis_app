import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/repositories/tennis_repository.dart';
import '../../../global/utils/custom_date.dart';
import 'field_state.dart';

final fieldProvider = Provider.state<FieldController, FieldState>(
  (_) => FieldController(
    FieldState.initialState,
    tennisRepository: Repositories.tennisRep.read(),
  ),
);

class FieldController extends StateNotifier<FieldState> {
  final TennisRepository _tennisRepository;

  FieldController(
    super.initialState, {
    required TennisRepository tennisRepository,
  }) : _tennisRepository = tennisRepository;

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

  void test() async {
    await _tennisRepository.findAll();
  }
}
