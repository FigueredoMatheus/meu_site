import 'package:flutter/material.dart';
import 'package:meu_site/components/navigation/navigation_bar.dart';
import 'package:meu_site/components/navigation/drawer/navigation_drawer.dart';
import 'package:meu_site/app_views.dart';
import 'package:meu_site/controllers/navigation_controller.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final itemListener = ItemPositionsListener.create();
  final navigationController = NavigationController();

  @override
  void initState() {
    super.initState();
    itemListener.itemPositions.addListener(
      () {
        itemListener.itemPositions.value.where((item) {
          final isTopVisible =
              item.itemLeadingEdge >= -0.6 && item.itemLeadingEdge <= 0.2;

          return isTopVisible;
        }).map(
          (item) {
            navigationController.setCurrentPage(item.index);
          },
        ).toList();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    print('screenWidth: $screenWidth');
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
        child: ScrollablePositionedList.builder(
          itemCount: 5,
          itemPositionsListener: itemListener,
          itemScrollController: navigationController.scrollController,
          itemBuilder: (context, index) {
            return appViews[index];
          },
        ),
      ),
    );
  }
}
