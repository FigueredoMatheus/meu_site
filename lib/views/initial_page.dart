import 'package:flutter/material.dart';
import 'package:meu_site/templates/initial_page_template.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    Widget getTemplate() {
      if (screenWidth <= 650) {
        return InitalPageTemplate(screenWidth: screenWidth);
      } else if (screenWidth <= 950) {
        return InitalPageTemplate(screenWidth: screenWidth);
      }
      return Container(color: Colors.red);
    }

    return getTemplate();
  }
}
