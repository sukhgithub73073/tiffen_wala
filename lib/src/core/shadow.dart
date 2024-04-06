import 'package:flutter/material.dart';
import 'package:tiffen_wala/src/core/app_colors.dart';


class AppShadow {
  static const List<BoxShadow> button = [
    BoxShadow(
      color: Colors.white10,
      blurRadius: 10,
      offset: Offset(3, 6), // changes position of shadow
    ),
  ];

  static const List<BoxShadow> buttonWhite = [
    BoxShadow(
      color: gray5,
      blurRadius: 15,
      offset: Offset(5, 10), // changes position of shadow
    ),
  ];

  static const List<BoxShadow> bottomTab = [
    BoxShadow(
      color: gray5,
      blurRadius: 15,
      offset: Offset(0, -10), // changes position of shadow
    ),
  ];
}
