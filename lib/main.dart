import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'core/providers/theme_provider.dart';
import 'core/providers/locale_provider.dart';
import 'core/localizations.dart';
import 'core/routes.dart';
import 'core/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Flutter widget'larını başlat
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => LocaleProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final localeProvider = Provider.of<LocaleProvider>(context);
    return MaterialApp.router(
      title: 'THY - Berrin Yilmaz',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: themeProvider.themeMode, // Use ThemeProvider's themeMode
      locale: localeProvider.locale, // Use LocaleProvider's locale
      routerConfig: router,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('tr', 'TR'),
        Locale('en', 'US'),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}
