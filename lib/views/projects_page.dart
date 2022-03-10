import 'package:flutter/material.dart';
import 'package:meu_site/templates/projects_page_template.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    Widget getTemplate() {
      if (screenWidth <= 650) {
        return ProjectsPageTemplate(
          screenWidth: screenWidth,
          projectContainerWidth:
              screenWidth * 0.83 > 550 ? 550 : screenWidth * 0.83,
          iconSize: 30,
          textFontSize: screenWidth * 0.0333 > 16 ? 16 : screenWidth * 0.0333,
        );
      } else if (screenWidth <= 950) {
        return ProjectsPageTemplate(
          screenWidth: screenWidth,
          projectContainerWidth:
              screenWidth * 0.833 > 750 ? 750 : screenWidth * 0.833,
          iconSize: 40,
          textFontSize: screenWidth * 0.0246 > 22 ? 22 : screenWidth * 0.0246,
        );
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
