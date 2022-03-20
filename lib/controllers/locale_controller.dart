import 'package:flutter/material.dart';

class LocaleController extends ChangeNotifier {
  Locale _locale = Locale('pt', 'BR');

  bool get isPt => _locale.languageCode == 'pt';
  bool get isEn => _locale.languageCode == 'en';

  Locale get locale => _locale;

  void setLocale(Locale newLocale) {
    _locale = newLocale;
    notifyListeners();
  }
}
