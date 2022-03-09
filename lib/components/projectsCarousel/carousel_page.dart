import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/projectsCarousel/carousel_page_description.dart';

class CarouselPage extends StatelessWidget {
  final bool isSmall;
  final Map<String, dynamic> project;
  const CarouselPage({
    Key? key,
    required this.project,
    required this.isSmall,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((context, constraints) {
        print('Largura: ${constraints.maxWidth}');
        print('Altura: ${constraints.maxWidth * 0.65}');
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: constraints.maxWidth * 0.65,
                width: constraints.maxWidth,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: Image.asset(
                  project['imgList'][0],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Website',
              style: GoogleFonts.sanchez(
                fontSize: 14,
                color: Colors.white,
                height: 1.4,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // CarouselDecription(project: project),
            const Spacer(),
            Align(
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                ),
                child: const Text('Saiba mais'),
              ),
            )
          ],
        );
      }),
    );
  }
}
