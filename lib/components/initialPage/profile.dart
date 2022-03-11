import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meu_site/components/social_media_icon.dart';

class Profile extends StatelessWidget {
  final double nameFontSize;
  final double imgSize;

  const Profile({
    Key? key,
    required this.nameFontSize,
    required this.imgSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: imgSize,
          height: imgSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(175),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                'assets/Profile-img.jpeg',
              ),
            ),
          ),
        ),
        const SizedBox(height: 15),
        SelectableText(
          'Matheus Figueredo Bispo',
          style: GoogleFonts.sanchez(
            fontSize: nameFontSize,
            color: Colors.white,
            height: 1.2,
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            SocialMediaIcon(
              icon: FontAwesomeIcons.envelope,
              url: 'mailto:matheusfigueredob@gmail.com',
            ),
            SizedBox(width: 35),
            SocialMediaIcon(
              icon: FontAwesomeIcons.linkedinIn,
              url: 'https://www.linkedin.com/in/matheusfigueredo/',
            ),
            SizedBox(width: 35),
            SocialMediaIcon(
              icon: FontAwesomeIcons.github,
              url: 'https://github.com/FigueredoMatheus?tab=repositories',
            ),
          ],
        )
      ],
    );
  }
}
