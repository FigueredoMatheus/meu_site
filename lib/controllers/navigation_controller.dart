import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class NavigationController {
  static final NavigationController _singleton =
      NavigationController._internal();

  factory NavigationController() {
    return _singleton;
  }

  NavigationController._internal();

  ValueNotifier<int> currentPageIndex = ValueNotifier(0);
  final scrollController = ItemScrollController();

  scrollTo(int linkIndex) {
    scrollController.scrollTo(
      index: linkIndex,
      duration: const Duration(milliseconds: 750),
    );
  }

  setCurrentPage(int index) {
    if (index != currentPageIndex.value) {
      currentPageIndex.value = index;
    }
  }
}
