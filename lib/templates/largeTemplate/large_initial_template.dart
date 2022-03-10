import 'package:flutter/material.dart';
import 'package:meu_site/components/initialPage/card.dart';
import 'package:meu_site/components/initialPage/profile.dart';
import 'package:meu_site/constants/constant_spacing.dart';

class LargeInitialTemplate extends StatelessWidget {
  final double screenWidth;
  const LargeInitialTemplate({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: sectionsSpace),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Profile(
                nameFontSize:
                    screenWidth * 0.019 > 25 ? 25 : screenWidth * 0.019,
                imgSize: screenWidth * 0.174 > 230 ? 230 : screenWidth * 0.174,
              ),
              SizedBox(
                width: screenWidth * 0.116 > 190 ? 190 : screenWidth * 0.116,
              ),
              CardInitialPage(
                cardHeight: screenWidth * 0.16 > 185 ? 185 : screenWidth * 0.16,
                cardWidth: screenWidth * 0.49 > 655 ? 655 : screenWidth * 0.49,
                textFontSize:
                    screenWidth * 0.023 > 27 ? 27 : screenWidth * 0.023,
              ),
            ],
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
