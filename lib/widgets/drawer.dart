import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../../core/localizations.dart';
import '../../core/providers/theme_provider.dart';
import '../../core/providers/locale_provider.dart';

class DrawerWidget extends StatelessWidget {
  final bool isExpanded;
  final Function(int) onItemTapped;

  const DrawerWidget({
    super.key,
    required this.isExpanded,
    required this.onItemTapped,
  });

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);
    final localizations = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: isExpanded ? 250 : 100,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorScheme.surfaceDim, // Top gradient
            colorScheme.surface, // Bottom gradient
          ],
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: const AssetImage('assets/images/avatar.png'),
                  backgroundColor: colorScheme.surfaceContainer,
                ),
                const SizedBox(height: 10),
                Text(
                  '10111',
                  style: TextStyle(
                    color: colorScheme.onSurface,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Berrin',
                  style: TextStyle(
                    color: colorScheme.onSurface,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  'Yılmaz',
                  style: TextStyle(
                    color: colorScheme.onSurface,
                    fontSize: 14,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(Icons.add, color: colorScheme.primary),
                  onPressed: () => onItemTapped(1), // Load Plan Register
                  tooltip: isExpanded
                      ? localizations.getTranslate('loadplan_register')
                      : null,
                ),
                IconButton(
                  icon: Icon(Icons.list, color: colorScheme.primary),
                  onPressed: () => onItemTapped(0), // Load Plan List
                  tooltip: isExpanded
                      ? localizations.getTranslate('loadplan_list')
                      : null,
                ),
              ],
            ),
          ),
          // Theme Toggle Button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: IconButton(
              icon: Icon(
                themeProvider.themeMode == ThemeMode.dark
                    ? Icons.light_mode
                    : Icons.dark_mode,
                color: colorScheme.primary,
              ),
              onPressed: () {
                themeProvider.setThemeMode(
                  themeProvider.themeMode == ThemeMode.dark
                      ? ThemeMode.light
                      : ThemeMode.dark,
                );
              },
              tooltip: isExpanded ? localizations.getTranslate('theme') : null,
            ),
          ),
          // Language Toggle Button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: IconButton(
              icon: Icon(
                localeProvider.locale.languageCode == 'en'
                    ? Icons.language
                    : Icons.language,
                color: colorScheme.primary,
              ),
              onPressed: () {
                localeProvider.setLocale(
                  localeProvider.locale.languageCode == 'en'
                      ? const Locale('tr', 'TR')
                      : const Locale('en', 'US'),
                );
              },
              tooltip:
                  isExpanded ? localizations.getTranslate('language') : null,
            ),
          ),
          // Dashboard Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              icon: Icon(Icons.dashboard, color: colorScheme.primary),
              onPressed: () {
                context.go('/dashboard');
              },
              tooltip:
                  isExpanded ? localizations.getTranslate('dashboard') : null,
            ),
          ),
        ],
      ),
    );
  }
}
