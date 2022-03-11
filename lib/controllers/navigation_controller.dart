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

  scrollTo(String link) {
    switch (link) {
      case 'Início':
        scrollController.scrollTo(
          index: 0,
          duration: const Duration(milliseconds: 750),
        );
        break;
      case 'Sobre mim':
        scrollController.scrollTo(
          index: 1,
          duration: const Duration(milliseconds: 750),
        );
        break;
      case 'Habilidades':
        scrollController.scrollTo(
          index: 2,
          duration: const Duration(milliseconds: 750),
        );
        break;
      case 'Projetos':
        scrollController.scrollTo(
          index: 3,
          duration: const Duration(milliseconds: 750),
        );
        break;
    }
  }

  setCurrentPage(int index) {
    if (index != currentPageIndex.value) {
      currentPageIndex.value = index;
    }
  }
}
