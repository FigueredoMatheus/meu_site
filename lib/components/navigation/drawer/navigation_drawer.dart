import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/navigation/drawer/drawer_list_tile.dart';
import 'package:meu_site/components/navigation/drawer/drawer_social_media.dart';

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
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
            ),
            const SizedBox(
              height: 40,
            ),
            const DrawerListTile(title: 'Início', pageIndex: 0),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            const DrawerListTile(title: 'Sobre mim', pageIndex: 1),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            const DrawerListTile(title: 'Habilidades', pageIndex: 2),
            const Divider(
              color: Colors.grey,
              height: 1,
            ),
            const DrawerListTile(title: 'Projetos', pageIndex: 3),
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
