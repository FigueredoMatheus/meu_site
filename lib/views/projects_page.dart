import 'package:flutter/material.dart';
import 'package:meu_site/templates/projects_template.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    Widget getTemplate() {
      if (screenWidth <= 650) {
        return ProjectsTemplate(
          screenWidth: screenWidth,
          projectContainerWidth:
              screenWidth * 0.83 > 550 ? 550 : screenWidth * 0.83,
          iconSize: 30,
          textFontSize: screenWidth * 0.0333 > 16 ? 16 : screenWidth * 0.0333,
        );
      } else if (screenWidth <= 950) {
        return ProjectsTemplate(
          screenWidth: screenWidth,
          projectContainerWidth:
              screenWidth * 0.83 > 550 ? 550 : screenWidth * 0.83,
          iconSize: 30,
          textFontSize: screenWidth * 0.0333 > 16 ? 16 : screenWidth * 0.0333,
        );
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
