import 'package:flutter/material.dart';
import 'package:meu_site/components/projectsPage/project_image_view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ProjectShowImages extends StatelessWidget {
  final List<String> imagesList;
  const ProjectShowImages({
    Key? key,
    required this.imagesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 85,
      height: 28,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => ImagesView(imagesList: imagesList),
            ),
          );
        },
        child: Text(
          AppLocalizations.of(context)!.imagesButtonText,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
