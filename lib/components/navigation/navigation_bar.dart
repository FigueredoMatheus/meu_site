import 'package:flutter/material.dart';
import 'package:meu_site/components/language_option_container.dart';
import 'package:meu_site/components/navigation/app_bar_link.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String getPageIndex(int index) {
      switch (index) {
        case 0:
          return AppLocalizations.of(context)!.linkBar1;
        case 1:
          return AppLocalizations.of(context)!.linkBar2;
        case 2:
          return AppLocalizations.of(context)!.linkBar3;
        case 3:
          return AppLocalizations.of(context)!.linkBar4;
        default:
          return AppLocalizations.of(context)!.linkBar1;
      }
    }

    return AppBar(
      backgroundColor: Colors.transparent,
      titleSpacing: 0,
      elevation: 0,
      centerTitle: true,
      title: Container(
        width: double.infinity,
        height: 50,
        decoration: const BoxDecoration(
          color: Color(0xFF1E2A50),
          boxShadow: [
            BoxShadow(
              spreadRadius: 1,
              offset: Offset(0, 4),
              color: Colors.black26,
            )
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            4,
            (index) => AppBarLink(
              linkText: getPageIndex(index),
              pageIndex: index,
            ),
          ),
        ),
      ),
      bottom: const PreferredSize(
        child: LanguageOptionContainer(),
        preferredSize: Size.fromHeight(30.0),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 80);
}
