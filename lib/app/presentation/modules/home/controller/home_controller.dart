import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/models/user_tennis_field_model.dart';
import '../../../../domain/repositories/tennis_repository.dart';
import 'home_state.dart';

final homeProvider = Provider.state<HomeController, HomeState>(
  (_) => HomeController(
    HomeState.initialState,
    tennisRepository: Repositories.tennisRep.read(),
  ),
);

class HomeController extends StateNotifier<HomeState> {
  final TennisRepository _tennisRepository;

  HomeController(
    super.initialState, {
    required TennisRepository tennisRepository,
  }) : _tennisRepository = tennisRepository {
    init();
  }

  List<UserTennisFieldModel>? get userTennisFields => state.userTennisFields;

  void init() async {
    await _tennisRepository.initDatabase();
    await findAllReservation();
  }

  Future<void> findAllReservation() async {
    final response = await _tennisRepository.findAllReservation();
    print(response);
    onlyUpdate(
      state = state.copyWith(
        userTennisFields: response,
      ),
    );
  }

  void deleteReservation(UserTennisFieldModel userField) async {
    await _tennisRepository.deleteReservation(userField);
    await findAllReservation();
  }
}
