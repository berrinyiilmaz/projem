import 'package:flutter/material.dart';
import '../localizations.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = const Locale('tr', 'TR');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (!AppLocalizations.isSupported(locale.languageCode)) return;
    _locale = locale;
    notifyListeners();
  }
}
