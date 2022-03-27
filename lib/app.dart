import 'package:flutter/material.dart';
import 'package:meu_site/widgets/language_option_container.dart';
import 'package:meu_site/widgets/navigation/navigation_bar.dart';
import 'package:meu_site/widgets/navigation/drawer/navigation_drawer.dart';
import 'package:meu_site/app_views.dart';
import 'package:meu_site/controllers/animation_controller.dart';
import 'package:meu_site/controllers/navigation_controller.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:particles_flutter/particles_flutter.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final itemListener = ItemPositionsListener.create();
  final navigationController = NavigationController();
  final appAnimationController = AppAnimationController();

  @override
  void initState() {
    super.initState();
    itemListener.itemPositions.addListener(
      () {
        itemListener.itemPositions.value.where((item) {
          if (item.index == 2 && item.itemLeadingEdge < 0.5) {
            appAnimationController.showSkillAnimation.value = true;
          }

          if (item.index == 3 && item.itemLeadingEdge < 0.7) {
            appAnimationController.showSkillAnimation.value = true;
          }
          return true;
        }).toList();

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
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: screenWidth <= 650
          ? AppBar(
              backgroundColor: Theme.of(context).primaryColor,
              actions: const [LanguageOptionContainer()],
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
        child: Stack(
          children: [
            CircularParticle(
              key: UniqueKey(),
              width: screenWidth,
              height: screenHeight,
              awayRadius: screenWidth / 5,
              numberOfParticles: 100,
              speedOfParticles: 1.5,
              maxParticleSize: 7,
              particleColor: Colors.white.withOpacity(.1),
              awayAnimationDuration: const Duration(milliseconds: 600),
              awayAnimationCurve: Curves.easeInOutBack,
              onTapAnimation: true,
              isRandSize: true,
              isRandomColor: false,
              connectDots: true,
            ),
            ScrollablePositionedList.builder(
              itemCount: 5,
              itemPositionsListener: itemListener,
              itemScrollController: navigationController.scrollController,
              itemBuilder: (context, index) {
                return appViews[index];
              },
            ),
          ],
        ),
      ),
    );
  }
}
