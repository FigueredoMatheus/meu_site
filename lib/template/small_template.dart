import 'package:flutter/material.dart';
import 'package:meu_site/controllers/navigation_controller.dart';
import 'package:meu_site/views/aboutMePage/small_about_me_page.dart';
import 'package:meu_site/views/footerPage/footer_page.dart';
import 'package:meu_site/views/initalPage/small_initial_page.dart';
import 'package:meu_site/views/projectsPage/small_projects_page.dart';
import 'package:meu_site/views/skillsPage/small_skills_page.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SmallTemplate extends StatefulWidget {
  SmallTemplate({Key? key}) : super(key: key);

  @override
  State<SmallTemplate> createState() => _SmallTemplateState();
}

class _SmallTemplateState extends State<SmallTemplate> {
  final itemListener = ItemPositionsListener.create();
  final navigationController = NavigationController();
  @override
  void initState() {
    super.initState();
    itemListener.itemPositions.addListener(
      () {
        itemListener.itemPositions.value.where((item) {
          final isTopVisible =
              item.itemLeadingEdge >= -0.6 && item.itemLeadingEdge <= 0.2;

          return isTopVisible;
        }).map(
          (item) {
            navigationController.setCurrentPage(item.index);
          },
        ).toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return ScrollablePositionedList.builder(
      itemCount: 5,
      itemPositionsListener: itemListener,
      itemScrollController: navigationController.scrollController,
      itemBuilder: (context, index) {
        List<Widget> templateViews = [
          SmallInitalPage(screenWidth: screenWidth),
          SmallAboutMePage(screenWidth: screenWidth),
          SmallSkillsPage(screenWidth: screenWidth),
          SmallProjectsPage(screenWidth: screenWidth),
          FooterPage(screenWidth: screenWidth),
        ];

        return templateViews[index];
      },
    );
  }
}
