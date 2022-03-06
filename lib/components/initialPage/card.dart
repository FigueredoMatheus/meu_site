import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CardInitialPage extends StatelessWidget {
  final double cardWidth;
  final double cardHeight;
  final double textFontSize;
  const CardInitialPage({
    Key? key,
    required this.cardWidth,
    required this.cardHeight,
    required this.textFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: cardWidth,
      height: cardHeight,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        boxShadow: const [
          BoxShadow(
            blurRadius: 4,
            offset: Offset(5, 7),
            color: Colors.black,
          ),
        ],
      ),
      child: Center(
        child: SelectableText(
          'Granduando em Engenharia de Computação na Universidade Federal do Vale do São Francisco',
          textAlign: TextAlign.center,
          style: GoogleFonts.sanchez(
            fontSize: textFontSize,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
