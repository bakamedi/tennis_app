import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import 'home_state.dart';

final homeProvider = Provider.state<HomeController, HomeState>(
  (_) => HomeController(
    HomeState.initialState,
  ),
);

class HomeController extends StateNotifier<HomeState> {
  HomeController(
    super.initialState,
  );
}
