import 'package:flutter/material.dart';
import 'package:meu_site/components/navigation/appBar_link.dart';
import 'package:meu_site/constants/app_navigation_links.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF1E2A50),
      centerTitle: true,
      title: Row(
          mainAxisSize: MainAxisSize.min,
          children: appNavigationLinks
              .map(
                (appLink) => AppBarLink(
                  linkText: appLink,
                ),
              )
              .toList()),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
