// ignore_for_file: constant_identifier_names, non_constant_identifier_names, collection_methods_unrelated_type

import 'package:flutter/material.dart';

import 'package:calendar_view/calendar_view.dart';
import 'package:flutter_meedu/notifiers.dart';
import 'package:flutter_meedu/providers.dart';

import '../../../../dependency_injection.dart.dart';
import '../../../../domain/models/field_tennis_model.dart';
import '../../../../domain/models/user_tennis_field_model.dart';
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
  String get idField => state.idField;
  String get btnTxt => state.btnTxt;
  String get getDateTo => CustomDate.parseDate(state.dateTo!);
  String get getTimeTo => CustomDate.parseTime(state.timeTo!);
  List<Field>? get fields => state.fields;
  Field? get selectedField => state.selectedField;
  Color get color => state.color;
  DateTime? get dateTo => state.dateTo;
  PageController? get controllerPage => state.controllerPage;
  List<CalendarEventData>? get events => state.events;
  EventController<Object?>? get controllerEvent => state.controllerEvent;
  List<CalendarEventData<Object?>>? get eventsOfDay => state.eventsOfDay;

  void init() async {
    final response = await _tennisRepository.findAll();
    final events = getEvents(response.fields, idField);
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
        eventsOfDay: events,
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
    final color = getFieldColor(selectedFd!.path);

    onlyUpdate(
      state = state.copyWith(
        selectedField: selectedFd,
        color: color,
        idField: selectedFd.id ?? '1',
        eventsOfDay: events,
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
      state = state.copyWith(
        btnTxt: btnTxt,
      ),
    );
  }

  Color getFieldColor(String? path) {
    Color color = const Color.fromARGB(255, 94, 219, 98);
    if (path == null) {
      color = const Color.fromARGB(255, 110, 213, 114);
    } else if (path == ImagesPath.GRASS) {
      color = const Color.fromARGB(255, 110, 213, 114);
    } else if (path == ImagesPath.CLAY) {
      color = const Color.fromARGB(230, 230, 165, 132);
    } else {
      color = const Color.fromARGB(194, 47, 117, 231);
    }
    return color;
  }

  List<CalendarEventData> getEvents(
    List<Field>? fields,
    String id,
  ) {
    List<CalendarEventData> tmp = [];
    state.userTennisFields!.asMap().forEach((i, item) {
      if (item.id == id) {
        tmp.add(
          CalendarEventData(
            title: 'Reserva-$i',
            date: CustomDate.parteDatetime(
              item.date!,
            ),
            color: getFieldColor(item.path),
          ),
        );
      }
    });
    return tmp;
  }

  void onChangeEvents(String id) {
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

  String getMonthName(DateTime dateTime) {
    return CustomDate.getMonthName(dateTime);
  }

  void onChangeRevervationName(String reservationName) {
    onlyUpdate(
      state = state.copyWith(
        reservationName: reservationName,
      ),
    );
  }

  void onChangeEventsOfDay(
    List<CalendarEventData<Object?>> events,
  ) {
    onlyUpdate(
      state = state.copyWith(
        eventsOfDay: events,
      ),
    );
  }

  void setUserTennisField(
    List<UserTennisFieldModel>? userTennisFields,
  ) {
    onlyUpdate(
      state = state.copyWith(
        userTennisFields: userTennisFields,
      ),
    );
  }

  bool validateEventsByDate() {
    bool result = false;
    int count = 0;
    if (state.userTennisFields == null) {
      return result;
    }
    for (final field in state.userTennisFields!) {
      DateTime itemField = CustomDate.parteDatetime(field.date ?? '');

      if (state.dateTo!.compareWithoutTime(itemField)) {
        count++;
      }
    }
    return count >= 3;
  }

  Future<void> reservation() async {
    final reservation = UserTennisFieldModel(
      id: state.selectedField!.id,
      date: state.dateTo.toString(),
      path: state.selectedField!.path,
      rainProbability: '30',
      name: state.reservationName,
    );
    await _tennisRepository.saveReservation(reservation);
  }

  @override
  void dispose() {
    controllerPage!.dispose();
    super.dispose();
  }
}
