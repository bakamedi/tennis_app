// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:calendar_view/calendar_view.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/models/field_tennis_model.dart';
import '../../../../domain/repositories/tennis_repository.dart';
import '../../../global/utils/custom_date.dart';
import '../../../global/utils/images_path.dart';
import 'field_state.dart';

const DURATION = Duration(milliseconds: 500);
final NOW = DateTime.now();

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

  String get btnTxt => state.btnTxt;
  String get getDateTo => CustomDate.parseDate(state.dateTo!);
  String get getTimeTo => CustomDate.parseTime(state.timeTo!);
  List<Field>? get fields => state.fields;
  Field? get selectedField => state.selectedField;
  Color get color => state.color;
  PageController? get controllerPage => state.controllerPage;
  List<CalendarEventData>? get events => state.events;
  EventController<Object?>? get controllerEvent => state.controllerEvent;

  void init() async {
    final response = await _tennisRepository.findAll();
    final events = getEvents(response.fields, '1');
    onlyUpdate(
      state = state.copyWith(
        fields: response.fields,
        selectedField: response.fields!.first,
        color: const Color.fromARGB(255, 94, 219, 98),
        controllerPage: PageController(
          initialPage: 0,
        ),
        controllerEvent: EventController()..addAll(events),
        events: getEvents(
          response.fields,
          response.fields!.first.id!,
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

  void onChangeDate(DateTime? dateTo) {
    onlyUpdate(
      state = state.copyWith(
        dateTo: dateTo ?? DateTime.now(),
      ),
    );
  }

  void onChangeTime(DateTime? timeTo) {
    onlyUpdate(
      state = state.copyWith(
        timeTo: timeTo ?? DateTime.now(),
      ),
    );
  }

  void onChangeColorBg(Field? selectedFd) {
    int index = int.parse(selectedField!.id!) + 1;
    onChangeEvents(index.toString());
    final color = getFieldColor(selectedFd);
    onlyUpdate(
      state = state.copyWith(
        selectedField: selectedFd,
        color: color,
      ),
    );
  }

  void changePage(int page) {
    onChangeBtnTxt(page);
    controllerPage!.animateToPage(
      page,
      duration: DURATION,
      curve: Curves.ease,
    );
  }

  void previousPage() {
    controllerPage!.previousPage(
      duration: DURATION,
      curve: Curves.ease,
    );
  }

  void nextPage() {
    if (controllerPage!.page!.toInt() == 2) {
      reservation();
    } else {
      controllerPage!.nextPage(
        duration: DURATION,
        curve: Curves.ease,
      );
    }
  }

  void onChangeBtnTxt(int page) {
    String btnTxt = 'Siguiente';
    if (controllerPage == null) {
      btnTxt = 'Siguiente';
    } else if (controllerPage!.page == null) {
      btnTxt = 'Siguiente';
    }
    if (page == 0 || page == 1) {
      btnTxt = 'Siguiente';
    } else {
      btnTxt = 'Reservar';
    }

    onlyUpdate(
      state = state.copyWith(btnTxt: btnTxt),
    );
  }

  Color getFieldColor(Field? selectedFd) {
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
    return color;
  }

  List<CalendarEventData> getEvents(List<Field>? fields, String id) {
    List<CalendarEventData> tmp = [];
    for (final element in fields!) {
      if (element.id == id) {
        print(element.id);
        for (final date in element.dates!) {
          print(date.date!);
          final dItem = CustomDate.parteDatetime(date.date!);
          tmp.add(
            CalendarEventData(
              title: element.name!,
              date: CustomDate.parteDatetime(date.date!),
              startTime: DateTime(
                  dItem.subtract(Duration(days: 2)).year,
                  dItem.subtract(Duration(days: 2)).month,
                  dItem.subtract(Duration(days: 2)).day,
                  14),
              endTime: DateTime(
                  dItem.subtract(Duration(days: 2)).year,
                  dItem.subtract(Duration(days: 2)).month,
                  dItem.subtract(Duration(days: 2)).day,
                  16),
              color: getFieldColor(element),
            ),
          );
        }
      }
    }
    return tmp;
  }

  void onChangeEvents(String id) {
    print(id);
    controllerEvent!.removeAll(state.events!);
    controllerEvent!.addAll(
      getEvents(state.fields, id),
    );
    onlyUpdate(
      state = state.copyWith(
        controllerEvent: EventController()
          ..addAll(
            getEvents(state.fields, id),
          ),
        events: getEvents(state.fields, id),
      ),
    );
  }

  String getMonthName(int indexMonth) {
    switch (indexMonth) {
      case 1:
        return 'Enero ${NOW.year}';
      case 2:
        return 'Febrero ${NOW.year}';
      case 3:
        return 'Marzo ${NOW.year}';
      case 4:
        return 'Abril ${NOW.year}';
      case 5:
        return 'Mayo ${NOW.year}';
      case 6:
        return 'Junio ${NOW.year}';
      case 7:
        return 'Julio ${NOW.year}';
      case 8:
        return 'Agosto ${NOW.year}';
      case 9:
        return 'Septiembre ${NOW.year}';
      case 10:
        return 'Octubre ${NOW.year}';
      case 11:
        return 'Noviembre ${NOW.year}';
      case 12:
        return 'Diciembre ${NOW.year}';
      default:
        return '';
    }
  }

  void onChangeRevervationName(String reservationName) {
    onlyUpdate(
      state = state.copyWith(
        reservationName: reservationName,
      ),
    );
  }

  void reservation() {
    print(state.selectedField!.id);
    print(state.selectedField!.name);
    print(state.selectedField!.path);
    print(state.dateTo);
    print(state.timeTo);
    print(state.reservationName);
  }

  @override
  void dispose() {
    controllerPage!.dispose();
    super.dispose();
  }
}
