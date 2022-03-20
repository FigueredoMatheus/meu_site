import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/navigation/app_bar_link.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:meu_site/controllers/locale_controller.dart';
import 'package:meu_site/l10n/l10n.dart';
import 'package:provider/provider.dart';

class NavigationAppBar extends StatelessWidget implements PreferredSizeWidget {
  const NavigationAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localeController =
        Provider.of<LocaleController>(context, listen: false);
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
      backgroundColor: const Color(0xFF1E2A50),
      centerTitle: true,
      actions: [
        Row(
          children: [
            InkWell(
              onTap: () {
                localeController.setLocale(L10n.all[0]);
              },
              child: Container(
                height: 25,
                width: 25,
                padding: const EdgeInsets.fromLTRB(1, 0, 0, 2),
                decoration: BoxDecoration(
                  color: localeController.isPt ? Colors.white : Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'PT',
                    style: GoogleFonts.sarabun(
                      color: localeController.isPt
                          ? Theme.of(context).primaryColor
                          : Colors.black26,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            InkWell(
              onTap: () {
                localeController.setLocale(L10n.all[1]);
              },
              child: Container(
                height: 25,
                width: 25,
                padding: const EdgeInsets.fromLTRB(1, 0, 0, 2),
                decoration: BoxDecoration(
                  color: localeController.isEn ? Colors.white : Colors.grey,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'EN',
                    style: GoogleFonts.sarabun(
                      color: localeController.isEn
                          ? Theme.of(context).primaryColor
                          : Colors.black26,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
      title: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(
          4,
          (index) => AppBarLink(
            linkText: getPageIndex(index),
            pageIndex: index,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 50);
}
