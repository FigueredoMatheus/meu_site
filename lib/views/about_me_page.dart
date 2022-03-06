import 'package:flutter/material.dart';
import 'package:meu_site/template/smallTemplate/small_about_me_page.dart';

class AboutMePage extends StatelessWidget {
  const AboutMePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    Widget getTemplate() {
      if (screenWidth <= 650) {
        return SmallAboutMePage(screenWidth: screenWidth);
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
