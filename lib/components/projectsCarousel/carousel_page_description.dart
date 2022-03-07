import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselDecription extends StatelessWidget {
  final Map<String, dynamic> project;
  const CarouselDecription({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    TextStyle textStyle() {
      return GoogleFonts.sanchez(
        fontSize: screenWidth * 0.039 > 22 ? 22 : screenWidth * 0.039,
        color: Colors.white,
        height: 1.4,
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Link de acesso',
          style: textStyle(),
        ),
        Column(
          children: List.generate(
            project['accessLink'].length,
            (index) => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.brightness_1,
                  size: 7,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: SelectableText(
                    project['accessLink'][index],
                    style: textStyle(),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          'Ferramentas utilizadas',
          style: textStyle(),
        ),
        Column(
          children: List.generate(
            project['features'].length,
            (index) => Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.brightness_1,
                  size: 7,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 10,
                ),
                SelectableText(
                  project['features'][index],
                  style: textStyle(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
