import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/projectsPage/project_card.dart';
import 'package:meu_site/constants/constant_spacing.dart';

class ProjectsPageTemplate extends StatelessWidget {
  final double screenWidth;
  final double projectContainerWidth;
  final double iconSize;
  final double textFontSize;
  const ProjectsPageTemplate({
    Key? key,
    required this.screenWidth,
    required this.projectContainerWidth,
    required this.iconSize,
    required this.textFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: sectionsSpace),
      child: Column(
        children: [
          SelectableText(
            'Projetos',
            style: GoogleFonts.sarabun(
              fontSize: screenWidth * 0.0833 > 50 ? 50 : screenWidth * 0.0833,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: titleContextSpace),
          ProjectCard(
            projectContainerWidth: projectContainerWidth,
            iconSize: iconSize,
            textFontSize: textFontSize,
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
