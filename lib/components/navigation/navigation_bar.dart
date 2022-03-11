import 'package:flutter/material.dart';
import 'package:meu_site/components/navigation/app_bar_link.dart';
import 'package:meu_site/constants/app_navigation_links.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int getPageIndex(String appLink) {
      switch (appLink) {
        case 'Início':
          return 0;

        case 'Sobre mim':
          return 1;

        case 'Habilidades':
          return 2;
        case 'Projetos':
          return 3;
        default:
          return 0;
      }
    }

    return AppBar(
      backgroundColor: const Color(0xFF1E2A50),
      centerTitle: true,
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: appNavigationLinks
            .map(
              (appLink) => AppBarLink(
                linkText: appLink,
                pageIndex: getPageIndex(appLink),
              ),
            )
            .toList(),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
