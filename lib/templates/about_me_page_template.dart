import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/constants/constant_spacing.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            AppLocalizations.of(context)!.linkBar2,
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
              AppLocalizations.of(context)!.aboutMe,
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
