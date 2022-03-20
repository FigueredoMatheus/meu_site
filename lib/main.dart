import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meu_site/app.dart';
import 'package:meu_site/controllers/locale_controller.dart';
import 'package:meu_site/l10n/l10n.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleController(),
      builder: (context, child) {
        final localeController = Provider.of<LocaleController>(context);

        return MaterialApp(
          title: 'MatheusFB - Portfólio',
          debugShowCheckedModeBanner: false,
          locale: localeController.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          theme: ThemeData(
            primaryColor: const Color(0xFF1E2A50),
            textTheme: TextTheme(
              headline1: GoogleFonts.sarabun(),
              headline2: GoogleFonts.sanchez(),
            ),
          ),
          home: const App(),
        );
      },
    );
  }
}
