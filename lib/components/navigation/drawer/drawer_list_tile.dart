import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/controllers/navigation_controller.dart';

class DrawerListTile extends StatelessWidget {
  final String title;
  final int pageIndex;

  const DrawerListTile({
    Key? key,
    required this.title,
    required this.pageIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final navigationController = NavigationController();
    return ValueListenableBuilder(
      valueListenable: navigationController.currentPageIndex,
      builder: (context, _, __) {
        return ListTile(
          onTap: () {
            navigationController.scrollTo(title);
            Navigator.pop(context);
          },
          title: Text(
            title,
            style: GoogleFonts.sarabun(
              color: navigationController.currentPageIndex.value == pageIndex
                  ? Colors.black
                  : Colors.white,
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
        );
      },
    );
  }
}
