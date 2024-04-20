import 'package:flutter/material.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/models/field_tennis_model.dart';
import '../../../../domain/repositories/tennis_repository.dart';
import '../../../global/utils/custom_date.dart';
import '../../../global/utils/images_path.dart';
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
  }) : _tennisRepository = tennisRepository {
    init();
  }

  String get getDateTo => CustomDate.parseDate(state.dateTo!);
  String get getTimeTo => CustomDate.parseTime(state.timeTo!);
  List<Field>? get fields => state.fields;
  Field? get selectedField => state.selectedField;
  Color get color => state.color;
  PageController? get controllerPage => state.controllerPage;

  void init() async {
    final response = await _tennisRepository.findAll();

    onlyUpdate(
      state = state.copyWith(
        fields: response.fields,
        selectedField: response.fields!.first,
        color: const Color.fromARGB(255, 94, 219, 98),
        controllerPage: PageController(
          initialPage: 0,
        ),
      ),
    );
  }

  void onChange(Field? selectedField) {
    onlyUpdate(
      state = state.copyWith(
        selectedField: selectedField,
      ),
    );
  }

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

  void onChangeColorBg(Field? selectedFd) {
    Color color = const Color.fromARGB(255, 94, 219, 98);
    if (selectedFd == null) {
      color = const Color.fromARGB(255, 110, 213, 114);
    } else if (selectedFd.path == ImagesPath.GRASS) {
      color = const Color.fromARGB(255, 110, 213, 114);
    } else if (selectedFd.path == ImagesPath.CLAY) {
      color = const Color.fromARGB(230, 230, 165, 132);
    } else {
      color = const Color.fromARGB(194, 47, 117, 231);
    }
    onlyUpdate(
      state = state.copyWith(
        selectedField: selectedFd,
        color: color,
      ),
    );
  }

  void changePage(int page) {
    controllerPage!.animateToPage(
      page,
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  void nextPage() {
    controllerPage!.nextPage(
      duration: const Duration(milliseconds: 500),
      curve: Curves.ease,
    );
  }

  String getLabelBtn() {
    try {
      if (controllerPage == null) {
        return 'Siguiente';
      } else if (controllerPage!.page == null) {
        return 'Siguiente';
      }
      final page = controllerPage!.page!.toInt();
      return page == 2 ? 'Reservar' : 'Siguiente';
    } catch (_) {
      return 'Siguiente';
    }
  }

  @override
  void dispose() {
    controllerPage!.dispose();
    super.dispose();
  }
}
