import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/models/user_tennis_field_model.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    ScrollController? scrollController,
    @Default(false) bool fetching,
    List<UserTennisFieldModel>? userTennisFields,
  }) = _HomeState;

  static HomeState get initialState => const HomeState();
}
