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
          isSmall: true,
        );
      } else if (screenWidth <= 950) {
        return ProjectsTemplate(
          screenWidth: screenWidth,
          isSmall: false,
        );
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
