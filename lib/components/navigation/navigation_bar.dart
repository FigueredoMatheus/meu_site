import 'package:flutter/material.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => throw UnimplementedError();
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