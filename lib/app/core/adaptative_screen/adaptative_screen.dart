import 'dart:math' as math;

import 'package:flutter/material.dart';

class AdaptativeScreen {
  late double _width,
      _height,
      _diagonal,
      _blockSizeHorizontal,
      _blockSizeVertical,
      _safeBlockHorizontal,
      _safeBlockVertical;

  double get width => _width;
  double get height => _height;
  double get diagonal => _diagonal;

  double get blockSizeHorizontal => _blockSizeHorizontal;
  double get blockSizeVertical => _blockSizeVertical;

  double get safeBlockHorizontal => _safeBlockHorizontal;
  double get safeBlockVertical => _safeBlockVertical;

  static AdaptativeScreen of(BuildContext context) => AdaptativeScreen(context);

  AdaptativeScreen(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final Size size = MediaQuery.of(context).size;
    _width = size.width;
    _height = size.height;

    _blockSizeHorizontal = _width / 100;
    _blockSizeVertical = _height / 100;

    _diagonal = math.sqrt(math.pow(_width, 2) + math.pow(_height, 2));

    final safeAreaHorizontal =
        mediaQueryData.padding.left + mediaQueryData.padding.right;
    final safeAreaVertical =
        mediaQueryData.padding.top + mediaQueryData.padding.bottom;
    _safeBlockHorizontal = (_width - safeAreaHorizontal) / 100;
    _safeBlockVertical = (_height - safeAreaVertical) / 100;
  }

  double wp(double percent) => _width * percent / 100;
  double hp(double percent) => _height * percent / 100;
  double dp(double percent) => _diagonal * percent / 100;

  double bwh(double percent) => _blockSizeHorizontal * percent;
  double bhp(double percent) => _blockSizeVertical * percent;

  double sbwh(double percent) => _safeBlockHorizontal * percent;
  double sbhp(double percent) => _safeBlockVertical * percent;
}
