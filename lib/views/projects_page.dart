import 'package:flutter/material.dart';
import 'package:meu_site/template/smallTemplate/small_projects_page.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    Widget getTemplate() {
      if (screenWidth <= 650) {
        return SmallProjectsPage(screenWidth: screenWidth);
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
