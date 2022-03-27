import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/controllers/locale_controller.dart';
import 'package:meu_site/l10n/l10n.dart';
import 'package:provider/provider.dart';

class LanguageOptionContainer extends StatelessWidget {
  const LanguageOptionContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localeController =
        Provider.of<LocaleController>(context, listen: false);
    return Container(
      padding: const EdgeInsets.only(right: 20),
      height: 30.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          InkWell(
            onTap: () {
              localeController.setLocale(L10n.all[0]);
            },
            child: Container(
              height: 25,
              width: 25,
              padding: const EdgeInsets.fromLTRB(1, 0, 0, 2),
              decoration: BoxDecoration(
                color: localeController.isPt ? Colors.white : Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'PT',
                  style: GoogleFonts.sarabun(
                    color: localeController.isPt
                        ? Theme.of(context).primaryColor
                        : Colors.black26,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              localeController.setLocale(L10n.all[1]);
            },
            child: Container(
              height: 25,
              width: 25,
              padding: const EdgeInsets.fromLTRB(1, 0, 0, 2),
              decoration: BoxDecoration(
                color: localeController.isEn ? Colors.white : Colors.grey,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  'EN',
                  style: GoogleFonts.sarabun(
                    color: localeController.isEn
                        ? Theme.of(context).primaryColor
                        : Colors.black26,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
