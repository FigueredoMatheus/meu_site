import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:meu_site/controllers/navigation_controller.dart';

class AppBarLink extends StatefulWidget {
  final String linkText;
  final int pageIndex;

  const AppBarLink({
    Key? key,
    required this.linkText,
    required this.pageIndex,
  }) : super(key: key);

  @override
  State<AppBarLink> createState() => _AppBarLinkState();
}

class _AppBarLinkState extends State<AppBarLink> {
  bool _isHovering = false;
  final navigationController = NavigationController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.linkText == 'Projetos'
          ? null
          : const EdgeInsets.only(right: 30),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {
          navigationController.scrollTo(widget.linkText);
        },
        onHover: (value) => setState(() {
          _isHovering = !_isHovering;
        }),
        splashFactory: NoSplash.splashFactory,
        child: ValueListenableBuilder(
          valueListenable: navigationController.currentPageIndex,
          builder: (_, __, ___) {
            return Text(
              widget.linkText,
              style: GoogleFonts.sarabun(
                color: navigationController.currentPageIndex.value ==
                            widget.pageIndex ||
                        _isHovering
                    ? Colors.black
                    : Colors.white,
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            );
          },
        ),
      ),
    );
  }
}
