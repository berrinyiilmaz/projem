import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/localizations.dart';
import '../../core/providers/theme_provider.dart';
import '../../core/providers/locale_provider.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);
    final localizations = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(localizations.getTranslate('settings')),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text(localizations.getTranslate('theme')),
            trailing: DropdownButton<ThemeMode>(
              value: themeProvider.themeMode,
              items: [
                DropdownMenuItem(
                  value: ThemeMode.system,
                  child: Text(localizations.getTranslate('system')),
                ),
                DropdownMenuItem(
                  value: ThemeMode.light,
                  child: Text(localizations.getTranslate('light')),
                ),
                DropdownMenuItem(
                  value: ThemeMode.dark,
                  child: Text(localizations.getTranslate('dark')),
                ),
              ],
              onChanged: (ThemeMode? newMode) {
                if (newMode != null) {
                  themeProvider.setThemeMode(newMode);
                }
              },
            ),
          ),
          ListTile(
            title: Text(localizations.getTranslate('language')),
            trailing: DropdownButton<Locale>(
              value: localeProvider.locale,
              items: const [
                DropdownMenuItem(
                  value: Locale('tr', 'TR'),
                  child: Text('Türkçe'),
                ),
                DropdownMenuItem(
                  value: Locale('en', 'US'),
                  child: Text('English'),
                ),
              ],
              onChanged: (Locale? newLocale) {
                if (newLocale != null) {
                  localeProvider.setLocale(newLocale);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
