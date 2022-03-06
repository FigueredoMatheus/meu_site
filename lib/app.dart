import 'package:flutter/material.dart';
import 'package:meu_site/components/navigation/appBar_link.dart';

import 'package:meu_site/components/navigation/navigation_bar.dart';
import 'package:meu_site/components/navigation/drawer/navigation_drawer.dart';
import 'package:meu_site/constant/app_links.dart';

import 'package:meu_site/template/large_template.dart';
import 'package:meu_site/template/medium_template.dart';
import 'package:meu_site/template/small_template.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    Widget getTemplate() {
      if (screenWidth <= 650) {
        return SmallTemplate();
      } else if (screenWidth <= 950) {
        return const MediumTemplate();
      } else {
        return const LargeTemplate();
      }
    }

    return Scaffold(
      appBar: screenWidth <= 650
          ? AppBar(
              backgroundColor: Theme.of(context).primaryColor,
            )
          : const NavigationAppBar(),
      drawer: screenWidth > 650 ? null : const NavigationDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              const Color(0xFF1E2A50),
              const Color(0xFF302B63).withOpacity(0.83),
              const Color(0xFF24243E),
            ],
          ),
        ),
        child: getTemplate(),
      ),
    );
  }
}
