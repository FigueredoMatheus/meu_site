import 'package:flutter/material.dart';

class AppAnimationController {
  static final AppAnimationController _singleton =
      AppAnimationController._internal();

  factory AppAnimationController() {
    return _singleton;
  }

  AppAnimationController._internal();

  ValueNotifier<bool> showSkillAnimation = ValueNotifier(false);
}
