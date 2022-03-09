import 'package:flutter/material.dart';
import 'package:meu_site/templates/about_me_template.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    Widget getTemplate() {
      if (screenWidth <= 650) {
        return AboutMeTemplate(screenWidth: screenWidth);
      } else if (screenWidth <= 950) {
        return AboutMeTemplate(screenWidth: screenWidth);
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
