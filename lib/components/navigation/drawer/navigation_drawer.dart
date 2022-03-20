import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/navigation/drawer/drawer_list_tile.dart';
import 'package:meu_site/components/navigation/drawer/drawer_social_media.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: Drawer(
        backgroundColor: Theme.of(context).primaryColor,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: Image.asset(
                'assets/icon.png',
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            DrawerListTile(
              title: AppLocalizations.of(context)!.linkBar1,
              pageIndex: 0,
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            DrawerListTile(
              title: AppLocalizations.of(context)!.linkBar2,
              pageIndex: 1,
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            DrawerListTile(
              title: AppLocalizations.of(context)!.linkBar3,
              pageIndex: 2,
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            DrawerListTile(
              title: AppLocalizations.of(context)!.linkBar4,
              pageIndex: 3,
            ),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            const SizedBox(
              height: 30,
            ),
            const DrawerSocialMedia(),
            const Spacer(),
            SizedBox(
              width: 240,
              child: Text(
                'copyright © 2022 Matheus Figueredo. Todos os direitos reservados',
                textAlign: TextAlign.center,
                style: GoogleFonts.sanchez(fontSize: 12, color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
