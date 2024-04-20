import 'package:calendar_view/calendar_view.dart';
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

  List<CalendarEventData> get events => _events;

  List<CalendarEventData> _events = [
    CalendarEventData(
      date: DateTime.now(),
      title: "Project meeting",
      description: "Today is project meeting.",
      startTime: DateTime(DateTime.now().year, DateTime.now().month,
          DateTime.now().day, 18, 30),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 22),
    ),
    CalendarEventData(
      date: DateTime.now().add(Duration(days: 1)),
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 18),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 19),
      title: "Wedding anniversary",
      description: "Attend uncle's wedding anniversary.",
    ),
    CalendarEventData(
      date: DateTime.now(),
      startTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 14),
      endTime: DateTime(
          DateTime.now().year, DateTime.now().month, DateTime.now().day, 17),
      title: "Football Tournament",
      description: "Go to football tournament.",
    ),
    CalendarEventData(
      date: DateTime.now().add(Duration(days: 3)),
      startTime: DateTime(
          DateTime.now().add(Duration(days: 3)).year,
          DateTime.now().add(Duration(days: 3)).month,
          DateTime.now().add(Duration(days: 3)).day,
          10),
      endTime: DateTime(
          DateTime.now().add(Duration(days: 3)).year,
          DateTime.now().add(Duration(days: 3)).month,
          DateTime.now().add(Duration(days: 3)).day,
          14),
      title: "Sprint Meeting.",
      description: "Last day of project submission for last year.",
    ),
    CalendarEventData(
      date: DateTime.now().subtract(Duration(days: 2)),
      startTime: DateTime(
          DateTime.now().subtract(Duration(days: 2)).year,
          DateTime.now().subtract(Duration(days: 2)).month,
          DateTime.now().subtract(Duration(days: 2)).day,
          14),
      endTime: DateTime(
          DateTime.now().subtract(Duration(days: 2)).year,
          DateTime.now().subtract(Duration(days: 2)).month,
          DateTime.now().subtract(Duration(days: 2)).day,
          16),
      title: "Team Meeting",
      description: "Team Meeting",
    ),
    CalendarEventData(
      date: DateTime.now().subtract(Duration(days: 2)),
      startTime: DateTime(
          DateTime.now().subtract(Duration(days: 2)).year,
          DateTime.now().subtract(Duration(days: 2)).month,
          DateTime.now().subtract(Duration(days: 2)).day,
          10),
      endTime: DateTime(
          DateTime.now().subtract(Duration(days: 2)).year,
          DateTime.now().subtract(Duration(days: 2)).month,
          DateTime.now().subtract(Duration(days: 2)).day,
          12),
      title: "Chemistry Viva",
      description: "Today is Joe's birthday.",
    ),
  ];

  String getMonthName(int indexMonth) {
    switch (indexMonth) {
      case 1:
        return 'Enero';
      case 2:
        return 'Febrero';
      case 3:
        return 'Marzo';
      case 4:
        return 'Abril';
      case 5:
        return 'Mayo';
      case 6:
        return 'Junio';
      case 7:
        return 'Julio';
      case 8:
        return 'Agosto';
      case 9:
        return 'Septiembre';
      case 10:
        return 'Octubre';
      case 11:
        return 'Noviembre';
      case 12:
        return 'Diciembre';
      default:
        return '';
    }
  }

  @override
  void dispose() {
    controllerPage!.dispose();
    super.dispose();
  }
}
