// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FieldState {
  bool get fetching => throw _privateConstructorUsedError;
  DateTime? get dateTo => throw _privateConstructorUsedError;
  DateTime? get timeTo => throw _privateConstructorUsedError;
  List<Field>? get fields => throw _privateConstructorUsedError;
  Field? get selectedField => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  PageController? get controllerPage => throw _privateConstructorUsedError;
  List<CalendarEventData<Object?>>? get events =>
      throw _privateConstructorUsedError;
  EventController<Object?>? get controllerEvent =>
      throw _privateConstructorUsedError;
  String get btnTxt => throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;
  DateTime? get selectedTime => throw _privateConstructorUsedError;
  String get reservationName => throw _privateConstructorUsedError;
  List<CalendarEventData<Object?>>? get eventsOfDay =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldStateCopyWith<FieldState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldStateCopyWith<$Res> {
  factory $FieldStateCopyWith(
          FieldState value, $Res Function(FieldState) then) =
      _$FieldStateCopyWithImpl<$Res, FieldState>;
  @useResult
  $Res call(
      {bool fetching,
      DateTime? dateTo,
      DateTime? timeTo,
      List<Field>? fields,
      Field? selectedField,
      Color color,
      PageController? controllerPage,
      List<CalendarEventData<Object?>>? events,
      EventController<Object?>? controllerEvent,
      String btnTxt,
      DateTime? selectedDate,
      DateTime? selectedTime,
      String reservationName,
      List<CalendarEventData<Object?>>? eventsOfDay});

  $FieldCopyWith<$Res>? get selectedField;
}

/// @nodoc
class _$FieldStateCopyWithImpl<$Res, $Val extends FieldState>
    implements $FieldStateCopyWith<$Res> {
  _$FieldStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? dateTo = freezed,
    Object? timeTo = freezed,
    Object? fields = freezed,
    Object? selectedField = freezed,
    Object? color = null,
    Object? controllerPage = freezed,
    Object? events = freezed,
    Object? controllerEvent = freezed,
    Object? btnTxt = null,
    Object? selectedDate = freezed,
    Object? selectedTime = freezed,
    Object? reservationName = null,
    Object? eventsOfDay = freezed,
  }) {
    return _then(_value.copyWith(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
      selectedField: freezed == selectedField
          ? _value.selectedField
          : selectedField // ignore: cast_nullable_to_non_nullable
              as Field?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      controllerPage: freezed == controllerPage
          ? _value.controllerPage
          : controllerPage // ignore: cast_nullable_to_non_nullable
              as PageController?,
      events: freezed == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEventData<Object?>>?,
      controllerEvent: freezed == controllerEvent
          ? _value.controllerEvent
          : controllerEvent // ignore: cast_nullable_to_non_nullable
              as EventController<Object?>?,
      btnTxt: null == btnTxt
          ? _value.btnTxt
          : btnTxt // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedTime: freezed == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reservationName: null == reservationName
          ? _value.reservationName
          : reservationName // ignore: cast_nullable_to_non_nullable
              as String,
      eventsOfDay: freezed == eventsOfDay
          ? _value.eventsOfDay
          : eventsOfDay // ignore: cast_nullable_to_non_nullable
              as List<CalendarEventData<Object?>>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FieldCopyWith<$Res>? get selectedField {
    if (_value.selectedField == null) {
      return null;
    }

    return $FieldCopyWith<$Res>(_value.selectedField!, (value) {
      return _then(_value.copyWith(selectedField: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FieldStateImplCopyWith<$Res>
    implements $FieldStateCopyWith<$Res> {
  factory _$$FieldStateImplCopyWith(
          _$FieldStateImpl value, $Res Function(_$FieldStateImpl) then) =
      __$$FieldStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool fetching,
      DateTime? dateTo,
      DateTime? timeTo,
      List<Field>? fields,
      Field? selectedField,
      Color color,
      PageController? controllerPage,
      List<CalendarEventData<Object?>>? events,
      EventController<Object?>? controllerEvent,
      String btnTxt,
      DateTime? selectedDate,
      DateTime? selectedTime,
      String reservationName,
      List<CalendarEventData<Object?>>? eventsOfDay});

  @override
  $FieldCopyWith<$Res>? get selectedField;
}

/// @nodoc
class __$$FieldStateImplCopyWithImpl<$Res>
    extends _$FieldStateCopyWithImpl<$Res, _$FieldStateImpl>
    implements _$$FieldStateImplCopyWith<$Res> {
  __$$FieldStateImplCopyWithImpl(
      _$FieldStateImpl _value, $Res Function(_$FieldStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? dateTo = freezed,
    Object? timeTo = freezed,
    Object? fields = freezed,
    Object? selectedField = freezed,
    Object? color = null,
    Object? controllerPage = freezed,
    Object? events = freezed,
    Object? controllerEvent = freezed,
    Object? btnTxt = null,
    Object? selectedDate = freezed,
    Object? selectedTime = freezed,
    Object? reservationName = null,
    Object? eventsOfDay = freezed,
  }) {
    return _then(_$FieldStateImpl(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      dateTo: freezed == dateTo
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<Field>?,
      selectedField: freezed == selectedField
          ? _value.selectedField
          : selectedField // ignore: cast_nullable_to_non_nullable
              as Field?,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      controllerPage: freezed == controllerPage
          ? _value.controllerPage
          : controllerPage // ignore: cast_nullable_to_non_nullable
              as PageController?,
      events: freezed == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<CalendarEventData<Object?>>?,
      controllerEvent: freezed == controllerEvent
          ? _value.controllerEvent
          : controllerEvent // ignore: cast_nullable_to_non_nullable
              as EventController<Object?>?,
      btnTxt: null == btnTxt
          ? _value.btnTxt
          : btnTxt // ignore: cast_nullable_to_non_nullable
              as String,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      selectedTime: freezed == selectedTime
          ? _value.selectedTime
          : selectedTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      reservationName: null == reservationName
          ? _value.reservationName
          : reservationName // ignore: cast_nullable_to_non_nullable
              as String,
      eventsOfDay: freezed == eventsOfDay
          ? _value._eventsOfDay
          : eventsOfDay // ignore: cast_nullable_to_non_nullable
              as List<CalendarEventData<Object?>>?,
    ));
  }
}

/// @nodoc

class _$FieldStateImpl extends _FieldState {
  const _$FieldStateImpl(
      {this.fetching = false,
      this.dateTo,
      this.timeTo,
      final List<Field>? fields,
      this.selectedField,
      this.color = Colors.white,
      this.controllerPage,
      final List<CalendarEventData<Object?>>? events,
      this.controllerEvent,
      this.btnTxt = 'Siguiente',
      this.selectedDate,
      this.selectedTime,
      this.reservationName = '',
      final List<CalendarEventData<Object?>>? eventsOfDay})
      : _fields = fields,
        _events = events,
        _eventsOfDay = eventsOfDay,
        super._();

  @override
  @JsonKey()
  final bool fetching;
  @override
  final DateTime? dateTo;
  @override
  final DateTime? timeTo;
  final List<Field>? _fields;
  @override
  List<Field>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Field? selectedField;
  @override
  @JsonKey()
  final Color color;
  @override
  final PageController? controllerPage;
  final List<CalendarEventData<Object?>>? _events;
  @override
  List<CalendarEventData<Object?>>? get events {
    final value = _events;
    if (value == null) return null;
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final EventController<Object?>? controllerEvent;
  @override
  @JsonKey()
  final String btnTxt;
  @override
  final DateTime? selectedDate;
  @override
  final DateTime? selectedTime;
  @override
  @JsonKey()
  final String reservationName;
  final List<CalendarEventData<Object?>>? _eventsOfDay;
  @override
  List<CalendarEventData<Object?>>? get eventsOfDay {
    final value = _eventsOfDay;
    if (value == null) return null;
    if (_eventsOfDay is EqualUnmodifiableListView) return _eventsOfDay;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'FieldState(fetching: $fetching, dateTo: $dateTo, timeTo: $timeTo, fields: $fields, selectedField: $selectedField, color: $color, controllerPage: $controllerPage, events: $events, controllerEvent: $controllerEvent, btnTxt: $btnTxt, selectedDate: $selectedDate, selectedTime: $selectedTime, reservationName: $reservationName, eventsOfDay: $eventsOfDay)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FieldStateImpl &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.dateTo, dateTo) || other.dateTo == dateTo) &&
            (identical(other.timeTo, timeTo) || other.timeTo == timeTo) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.selectedField, selectedField) ||
                other.selectedField == selectedField) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.controllerPage, controllerPage) ||
                other.controllerPage == controllerPage) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.controllerEvent, controllerEvent) ||
                other.controllerEvent == controllerEvent) &&
            (identical(other.btnTxt, btnTxt) || other.btnTxt == btnTxt) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate) &&
            (identical(other.selectedTime, selectedTime) ||
                other.selectedTime == selectedTime) &&
            (identical(other.reservationName, reservationName) ||
                other.reservationName == reservationName) &&
            const DeepCollectionEquality()
                .equals(other._eventsOfDay, _eventsOfDay));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      fetching,
      dateTo,
      timeTo,
      const DeepCollectionEquality().hash(_fields),
      selectedField,
      color,
      controllerPage,
      const DeepCollectionEquality().hash(_events),
      controllerEvent,
      btnTxt,
      selectedDate,
      selectedTime,
      reservationName,
      const DeepCollectionEquality().hash(_eventsOfDay));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FieldStateImplCopyWith<_$FieldStateImpl> get copyWith =>
      __$$FieldStateImplCopyWithImpl<_$FieldStateImpl>(this, _$identity);
}

abstract class _FieldState extends FieldState {
  const factory _FieldState(
      {final bool fetching,
      final DateTime? dateTo,
      final DateTime? timeTo,
      final List<Field>? fields,
      final Field? selectedField,
      final Color color,
      final PageController? controllerPage,
      final List<CalendarEventData<Object?>>? events,
      final EventController<Object?>? controllerEvent,
      final String btnTxt,
      final DateTime? selectedDate,
      final DateTime? selectedTime,
      final String reservationName,
      final List<CalendarEventData<Object?>>? eventsOfDay}) = _$FieldStateImpl;
  const _FieldState._() : super._();

  @override
  bool get fetching;
  @override
  DateTime? get dateTo;
  @override
  DateTime? get timeTo;
  @override
  List<Field>? get fields;
  @override
  Field? get selectedField;
  @override
  Color get color;
  @override
  PageController? get controllerPage;
  @override
  List<CalendarEventData<Object?>>? get events;
  @override
  EventController<Object?>? get controllerEvent;
  @override
  String get btnTxt;
  @override
  DateTime? get selectedDate;
  @override
  DateTime? get selectedTime;
  @override
  String get reservationName;
  @override
  List<CalendarEventData<Object?>>? get eventsOfDay;
  @override
  @JsonKey(ignore: true)
  _$$FieldStateImplCopyWith<_$FieldStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
