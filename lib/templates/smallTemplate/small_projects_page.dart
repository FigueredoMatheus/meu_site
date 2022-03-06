import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/projectsCarousel/carousel_card.dart';
import 'package:meu_site/constants/constant_spacing.dart';

class SmallProjectsPage extends StatelessWidget {
  final double screenWidth;
  const SmallProjectsPage({Key? key, required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: sectionsSpace),
      child: Column(
        children: [
          SelectableText(
            'Projetos',
            style: GoogleFonts.sarabun(
              fontSize: screenWidth * 0.0833 > 45 ? 45 : screenWidth * 0.0833,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: titleContextSpace),
          CarouselCard(
            screenWidth: screenWidth,
          ),
          const SizedBox(
            height: sectionsSpace,
          ),
          Container(
            width: screenWidth,
            height: 10,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
