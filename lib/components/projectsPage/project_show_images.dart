import 'package:flutter/material.dart';
import 'package:meu_site/components/projectsPage/project_image_view.dart';

class ProjectShowImages extends StatelessWidget {
  final List<String> imagesList;
  const ProjectShowImages({
    Key? key,
    required this.imagesList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 25,
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
        child: const Text(
          'Imagens',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
