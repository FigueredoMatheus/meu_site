import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/widgets/social_media_icon.dart';
import 'package:meu_site/constants/constant_spacing.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FooterPageTemplate extends StatelessWidget {
  final double screenWidth;
  const FooterPageTemplate({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                url: 'https://www.linkedin.com/in/matheusfigueredo/',
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
              AppLocalizations.of(context)!.footerText,
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
