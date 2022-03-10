import 'package:flutter/material.dart';
import 'package:meu_site/templates/about_me_page_template.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    Widget getTemplate() {
      if (screenWidth <= 650) {
        return AboutMePageTemplate(screenWidth: screenWidth);
      } else if (screenWidth <= 950) {
        return AboutMePageTemplate(screenWidth: screenWidth);
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
