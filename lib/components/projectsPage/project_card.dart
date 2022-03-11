import 'package:flutter/material.dart';
import 'package:meu_site/components/projectsPage/project_card_content.dart';
import 'package:meu_site/constants/projects.dart';
import 'package:meu_site/controllers/navigation_controller.dart';

class ProjectCard extends StatelessWidget {
  final double projectContainerWidth;
  final double iconSize;
  final double textFontSize;

  const ProjectCard({
    Key? key,
    required this.projectContainerWidth,
    required this.iconSize,
    required this.textFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: projects.map(
        (project) {
          return Container(
            width: projectContainerWidth,
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(5),
              boxShadow: [
                BoxShadow(
                  blurRadius: 4,
                  offset: const Offset(4, 4),
                  color: Colors.black.withOpacity(0.6),
                ),
              ],
            ),
            child: ProjectCardContent(
              project: project,
              iconSize: iconSize,
              textFontSize: textFontSize,
            ),
          );
        },
      ).toList(),
    );
  }
}
