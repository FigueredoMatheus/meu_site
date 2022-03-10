import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/skills/skill_card.dart';
import 'package:meu_site/constants/constant_spacing.dart';

import '../constants/skills.dart';

class SkillTemplate extends StatelessWidget {
  final double skillContainerHeight;
  final double skillContainerWidth;
  final double mainContainerWidth;
  final double titleTextFontSize;

  const SkillTemplate({
    Key? key,
    required this.skillContainerHeight,
    required this.skillContainerWidth,
    required this.mainContainerWidth,
    required this.titleTextFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: sectionsSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SelectableText(
            'Habilidades',
            style: GoogleFonts.sarabun(
              fontSize: titleTextFontSize,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: titleContextSpace,
          ),
          SizedBox(
            width: mainContainerWidth,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 15,
              children: skillsList.map((skill) {
                return SkillCard(
                  skill: skill,
                  containerHeight: skillContainerHeight,
                  containerWidth: skillContainerWidth,
                  logoSize: 60,
                  titleFontSize: 22,
                );
              }).toList(),
            ),
          ),
          const SizedBox(
            height: titleContextSpace,
          ),
        ],
      ),
    );
  }
}