import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMePage extends StatelessWidget {
  final double screenWidth;
  const AboutMePage(this.screenWidth, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth,
      height: screenWidth * 0.242,
      margin: const EdgeInsets.only(top: 50),
      padding: const EdgeInsets.symmetric(horizontal: 112),
      child: Column(
        children: [
          SelectableText(
            'Sobre mim',
            style: GoogleFonts.sarabun(
              fontSize: 50,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 35),
          SelectableText(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
            style: GoogleFonts.sanchez(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
