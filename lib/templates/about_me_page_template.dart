import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/constants/constant_spacing.dart';

class AboutMePageTemplate extends StatelessWidget {
  final double screenWidth;
  const AboutMePageTemplate({Key? key, required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: sectionsSpace),
      child: Column(
        children: [
          SelectableText(
            'Sobre mim',
            style: GoogleFonts.sarabun(
              fontSize: screenWidth * 0.0833 > 50 ? 50 : screenWidth * 0.0833,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: titleContextSpace),
          SizedBox(
            width: screenWidth * 0.833 > 1170 ? 1170 : screenWidth * 0.833,
            child: SelectableText(
              'Eu sou o Matheus, piauiense, 24 anos, desenvolvedor front-end e cursando Engenharia de Computação (pretensão de conclusão em 2023). Tenho 2 anos de experiência, tendo trabalhado boa parte da minha carreira utilizando o framework Flutter, mas atualmente também estou desenvolvendo com ReactJs, Javascript, Bootstrap, HTML e CSS. Minha trajetória na programação teve início em 2014, através do Pronatec (programa do governo federal), e desde então sou apaixonado por essa área.',
              textAlign: TextAlign.justify,
              style: GoogleFonts.sanchez(
                color: Colors.white,
                fontSize: screenWidth * 0.044 > 27 ? 27 : screenWidth * 0.044,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
