import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
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

  void init() async {
    await _tennisRepository.initDatabase();
  }
}
