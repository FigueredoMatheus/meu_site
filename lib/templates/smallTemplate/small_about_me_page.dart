import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/constants/constant_spacing.dart';

class SmallAboutMePage extends StatelessWidget {
  final double screenWidth;
  const SmallAboutMePage({Key? key, required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: sectionsSpace),
      child: Column(
        children: [
          SelectableText(
            'Sobre mim',
            style: GoogleFonts.sarabun(
              fontSize: screenWidth * 0.0833 > 45 ? 45 : screenWidth * 0.0833,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: titleContextSpace),
          SizedBox(
            width: screenWidth * 0.833 > 550 ? 550 : screenWidth * 0.833,
            child: SelectableText(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.sanchez(
                color: Colors.white,
                fontSize: screenWidth * 0.044 > 20 ? 20 : screenWidth * 0.044,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
