import 'package:flutter/material.dart';
import 'package:meu_site/components/navigation/appBar_link.dart';
import 'package:meu_site/constant/app_links.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF1E2A50),
      centerTitle: true,
      title: Row(
          mainAxisSize: MainAxisSize.min,
          children: appLinks
              .map(
                (appLink) => AppBarLink(
                  linkText: appLink,
                ),
              )
              .toList()),
    );
  }

  @override
  Size get preferredSize => Size(double.infinity, 50);
}

/*

 AppBar(
        backgroundColor: const Color(0xFF1E2A50),
        centerTitle: true,
        title: Row(
            mainAxisSize: MainAxisSize.min,
            children: appLinks
                .map(
                  (appLink) => AppBarLink(
                    linkText: appLink,
                  ),
                )
                .toList()),
      )

*/