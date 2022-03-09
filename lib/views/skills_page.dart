import 'package:flutter/material.dart';
import 'package:meu_site/templates/skills_template.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    Widget getTemplate() {
      if (screenWidth <= 650) {
        return SkillTemplate(
          mainContainerWidth: 300,
          skillContainerHeight: 145,
          skillContainerWidth:
              screenWidth * 0.347 > 140 ? 140 : screenWidth * 0.347,
          titleTextFontSize:
              screenWidth * 0.0833 > 45 ? 45 : screenWidth * 0.0833,
        );
      } else if (screenWidth <= 950) {
        return const SkillTemplate(
          mainContainerWidth: 470,
          skillContainerHeight: 160,
          skillContainerWidth: 140,
          titleTextFontSize: 45,
        );
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
