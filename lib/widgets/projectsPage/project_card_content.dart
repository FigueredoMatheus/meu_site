import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/widgets/projectsPage/project_show_images.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
    String getProjectDescription(int projectIndex) {
      switch (project['projectIndex']) {
        case 0:
          return AppLocalizations.of(context)!.project1;
        case 1:
          return AppLocalizations.of(context)!.project2;
        case 2:
          return AppLocalizations.of(context)!.project3;
        case 3:
          return AppLocalizations.of(context)!.project4;
        default:
          return '';
      }
    }

    TextStyle textStyle({bool isLink = false}) {
      return GoogleFonts.sanchez(
        color: Colors.white,
        fontSize: textFontSize,
        decoration: isLink ? TextDecoration.underline : null,
      );
    }

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
          child: Icon(
            project['isApp'] ? Icons.smartphone : Icons.language,
            size: iconSize,
            color: const Color.fromARGB(129, 0, 0, 0),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SelectableText(
                getProjectDescription(project['projectIndex']),
                textAlign: TextAlign.justify,
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
                              style: textStyle(isLink: true),
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
