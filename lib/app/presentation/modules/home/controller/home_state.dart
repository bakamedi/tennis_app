import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const HomeState._();
  const factory HomeState({
    ScrollController? scrollController,
    @Default(false) bool fetching,
  }) = _HomeState;

  static HomeState get initialState => const HomeState();
}
