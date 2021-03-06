import 'package:flutter/material.dart';
import 'package:meu_site/templates/initial_page_template.dart';
import 'package:meu_site/templates/largeTemplate/large_initial_template.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    Widget getTemplate() {
      if (screenWidth <= 950) {
        return InitalPageTemplate(screenWidth: screenWidth);
      } else {
        return LargeInitialTemplate(screenWidth: screenWidth);
      }
    }

    return getTemplate();
  }
}
