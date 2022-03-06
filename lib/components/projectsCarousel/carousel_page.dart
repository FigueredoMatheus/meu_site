import 'package:flutter/material.dart';
import 'package:meu_site/components/projectsCarousel/carousel_page_description.dart';

class SmallCarouselPage extends StatelessWidget {
  final Map<String, dynamic> project;
  const SmallCarouselPage({
    Key? key,
    required this.project,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                // width: constraints.maxWidth * 0.70,
                // height: constraints.maxWidth * 0.70,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: Image.asset(
                  project['imgList'][0],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CarouselDecription(project: project),
            const Spacer(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
              ),
              child: const Text('Saiba mais'),
            ),
          ],
        );
      }),
    );
  }
}
