import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class AppBarLink extends StatefulWidget {
  final String linkText;

  const AppBarLink({Key? key, required this.linkText}) : super(key: key);

  @override
  State<AppBarLink> createState() => _AppBarLinkState();
}

class _AppBarLinkState extends State<AppBarLink> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: widget.linkText == 'Projetos'
          ? null
          : const EdgeInsets.only(right: 60),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () {},
        onHover: (value) => setState(() {
          _isHovering = !_isHovering;
        }),
        splashFactory: NoSplash.splashFactory,
        child: Text(
          widget.linkText,
          style: GoogleFonts.sarabun(
            color: _isHovering ? Colors.black : Colors.white,
            fontSize: 27,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
