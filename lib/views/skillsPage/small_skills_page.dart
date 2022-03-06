import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/skills/skill_card.dart';
import 'package:meu_site/constant/constant_spacing.dart';

import '../../constant/skills.dart';

class SmallSkillsPage extends StatelessWidget {
  final double screenWidth;
  const SmallSkillsPage({Key? key, required this.screenWidth})
      : super(key: key);

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
              fontSize: screenWidth * 0.0833 > 45 ? 45 : screenWidth * 0.0833,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: titleContextSpace,
          ),
          SizedBox(
            width: 300,
            child: Wrap(
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 15,
              children: skillsList.map((skill) {
                return SkillCard(
                  skill: skill,
                  containerHeight: 145,
                  containerWidth:
                      screenWidth * 0.347 > 140 ? 140 : screenWidth * 0.347,
                  logoSize: screenWidth * 0.139 > 55 ? 55 : screenWidth * 0.139,
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
