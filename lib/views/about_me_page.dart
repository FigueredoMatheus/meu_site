import 'package:flutter/material.dart';
import 'package:meu_site/templates/about_me_page_template.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return AboutMePageTemplate(screenWidth: screenWidth);
  }
}
