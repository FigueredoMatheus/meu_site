import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/social_media_icon.dart';
import 'package:meu_site/constant/constant_spacing.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: sectionsSpace),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              SocialMediaIcon(
                icon: FontAwesomeIcons.envelope,
                url: 'mailto:matheusfigueredob@gmail.com',
              ),
              SizedBox(width: 35),
              SocialMediaIcon(
                icon: FontAwesomeIcons.linkedinIn,
                url: 'https://www.linkedin.com/in/matheus-figueredo-904a55160/',
              ),
              SizedBox(width: 35),
              SocialMediaIcon(
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/FigueredoMatheus?tab=repositories',
              ),
            ],
          ),
          const SizedBox(height: 20),
          SizedBox(
            width: screenWidth * 0.83,
            child: Text(
              'copyright © 2022 Matheus Figueredo. Todos os direitos reservados.',
              textAlign: TextAlign.center,
              style: GoogleFonts.sanchez(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
