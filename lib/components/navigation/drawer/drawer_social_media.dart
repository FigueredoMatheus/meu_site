import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/components/social_media_icon.dart';

class DrawerSocialMedia extends StatelessWidget {
  const DrawerSocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        children: [
          Row(
            children: [
              const SocialMediaIcon(
                icon: FontAwesomeIcons.envelope,
                url: 'mailto:matheusfigueredob@gmail.com',
                isDrawer: true,
              ),
              const SizedBox(width: 10),
              SelectableText(
                'matheusfigueredob@gmail.com',
                style: GoogleFonts.sanchez(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SocialMediaIcon(
                icon: FontAwesomeIcons.linkedinIn,
                url: 'https://www.linkedin.com/in/matheusfigueredo/',
                isDrawer: true,
              ),
              const SizedBox(width: 10),
              SelectableText(
                'matheusfigueredo/',
                style: GoogleFonts.sanchez(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const SocialMediaIcon(
                icon: FontAwesomeIcons.github,
                url: 'https://github.com/FigueredoMatheus?tab=repositories',
                isDrawer: true,
              ),
              const SizedBox(width: 10),
              SelectableText(
                '/FigueredoMatheus',
                style: GoogleFonts.sanchez(
                  fontSize: 12,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
