import 'package:flutter/material.dart';
import 'package:meu_site/templates/footer_page_template.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return FooterPageTemplate(screenWidth: screenWidth);
  }
}
