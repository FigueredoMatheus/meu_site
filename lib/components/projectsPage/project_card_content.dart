import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/projectsPage/project_show_images.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCardContent extends StatelessWidget {
  final Map<String, dynamic> project;
  final double iconSize;
  final double textFontSize;
  const ProjectCardContent({
    Key? key,
    required this.project,
    required this.iconSize,
    required this.textFontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle() {
      return GoogleFonts.sanchez(
        color: Colors.white,
        fontSize: textFontSize,
      );
    }

    return Row(
      children: [
        Icon(
          project['isApp'] ? Icons.smartphone : Icons.language,
          size: iconSize,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                project['description'],
                textAlign: TextAlign.justify,
                overflow: TextOverflow.visible,
                style: textStyle(),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: List.generate(
                  project['accessLink'].length,
                  (index) => Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.brightness_1,
                          size: 5,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Expanded(
                          child: InkWell(
                            onTap: () => launch(
                                'https://' + project['accessLink'][index]),
                            child: Text(
                              project['accessLink'][index],
                              style: textStyle(),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ProjectShowImages(
                imagesList: project['imgList'],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
