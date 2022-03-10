import 'package:flutter/material.dart';
import 'package:meu_site/components/initialPage/card.dart';
import 'package:meu_site/components/initialPage/profile.dart';
import 'package:meu_site/constants/constant_spacing.dart';

class InitalPageTemplate extends StatelessWidget {
  final double screenWidth;
  const InitalPageTemplate({Key? key, required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: sectionsSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Profile(
            nameFontSize: screenWidth * 0.044 > 22 ? 22 : screenWidth * 0.044,
            imgSize: screenWidth * 0.38 > 205 ? 205 : screenWidth * 0.38,
          ),
          const SizedBox(
            height: 25,
          ),
          CardInitialPage(
            cardHeight: screenWidth * 0.236 > 150 ? 150 : screenWidth * 0.236,
            cardWidth: screenWidth * 0.833 > 550 ? 550 : screenWidth * 0.833,
            textFontSize: screenWidth * 0.044 > 25 ? 25 : screenWidth * 0.044,
          ),
          const SizedBox(
            height: sectionsSpace,
          ),
          Container(
            width: screenWidth,
            height: 1,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
