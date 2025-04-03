import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Map<String, Color> lightColors = <String, Color>{
  // Primary colors - Energetic orange for key actions and highlights
  "primary": Color.fromARGB(255, 108, 61, 161), // #ec7424
  "onPrimary": Color.fromARGB(255, 255, 255, 255), // White text for contrast
  "primaryContainer":
      Color.fromARGB(255, 255, 236, 224), // Light orange container
  "onPrimaryContainer": Color.fromARGB(255, 89, 43, 13), // Dark orange text

  // Secondary colors - Professional gray for structure and hierarchy
  "secondary": Color.fromARGB(255, 92, 92, 92), // #5c5c5c
  "onSecondary": Color.fromARGB(255, 255, 255, 255),
  "secondaryContainer": Color.fromARGB(255, 232, 232, 232),
  "onSecondaryContainer": Color.fromARGB(255, 40, 40, 40),

  // Tertiary colors - Complementary to primary for visual hierarchy
  "tertiary": Color.fromARGB(255, 110, 133, 183), // Soft blue for charts/graphs
  "onTertiary": Color.fromARGB(255, 255, 255, 255),
  "tertiaryContainer": Color.fromARGB(255, 219, 228, 255),
  "onTertiaryContainer": Color.fromARGB(255, 0, 31, 95),

  // Error colors - Clear but not overwhelming
  "error": Color.fromARGB(255, 186, 26, 26),
  "onError": Color.fromARGB(255, 255, 255, 255),
  "errorContainer": Color.fromARGB(255, 255, 218, 214),
  "onErrorContainer": Color.fromARGB(255, 65, 0, 2),

  // Surface colors - Easy on the eyes for long viewing sessions
  "surface": Color.fromARGB(255, 252, 252, 255),
  "onSurface": Color.fromARGB(255, 28, 27, 31),
  "surfaceVariant": Color.fromARGB(255, 240, 240, 244),
  "onSurfaceVariant": Color.fromARGB(255, 73, 72, 78),
  "surfaceDim": Color.fromARGB(255, 242, 242, 245),
  "surfaceBright": Color.fromARGB(255, 255, 255, 255),
  "surfaceContainerLowest": Color.fromARGB(255, 255, 255, 255),
  "surfaceContainerLow": Color.fromARGB(255, 252, 252, 255),
  "surfaceContainer": Color.fromARGB(255, 247, 247, 250),
  "surfaceContainerHigh": Color.fromARGB(255, 242, 242, 245),
  "surfaceContainerHighest": Color.fromARGB(255, 238, 238, 241),

  // Additional UI colors
  "outline": Color.fromARGB(255, 121, 121, 121),
  "outlineVariant": Color.fromARGB(255, 196, 196, 196),
  "inverseSurface": Color.fromARGB(255, 48, 48, 48),
  "onInverseSurface": Color.fromARGB(255, 244, 244, 244),
  "inversePrimary": Color.fromARGB(255, 255, 183, 128),
  "scrim": Color.fromARGB(255, 0, 0, 0),
  "shadow": Color.fromARGB(255, 0, 0, 0),
};

const Map<String, Color> darkColors = <String, Color>{
  // Primary colors - Maintaining energy while reducing eye strain
  "primary": Color.fromARGB(255, 108, 61, 161), // #ec7424
  "onPrimary": Color.fromARGB(255, 255, 255, 255),
  "primaryContainer": Color.fromARGB(255, 236, 116, 36),
  "onPrimaryContainer": Color.fromARGB(255, 255, 236, 224),

  // Secondary colors - Balanced grays for dark mode structure
  "secondary": Color.fromARGB(255, 204, 204, 204),
  "onSecondary": Color.fromARGB(255, 40, 40, 40),
  "secondaryContainer": Color.fromARGB(255, 92, 92, 92),
  "onSecondaryContainer": Color.fromARGB(255, 232, 232, 232),

  // Tertiary colors - Softer blue for dark mode
  "tertiary": Color.fromARGB(255, 186, 204, 255),
  "onTertiary": Color.fromARGB(255, 0, 31, 95),
  "tertiaryContainer": Color.fromARGB(255, 110, 133, 183),
  "onTertiaryContainer": Color.fromARGB(255, 219, 228, 255),

  // Error colors - Muted for dark mode
  "error": Color.fromARGB(255, 255, 180, 171),
  "onError": Color.fromARGB(255, 105, 0, 5),
  "errorContainer": Color.fromARGB(255, 147, 0, 10),
  "onErrorContainer": Color.fromARGB(255, 255, 218, 214),

  // Surface colors - Dark mode optimized for reduced eye strain
  "surface": Color.fromARGB(255, 28, 28, 31),
  "onSurface": Color.fromARGB(255, 230, 230, 235),
  "surfaceVariant": Color.fromARGB(255, 73, 73, 78),
  "onSurfaceVariant": Color.fromARGB(255, 202, 202, 208),
  "surfaceDim": Color.fromARGB(255, 16, 16, 18),
  "surfaceBright": Color.fromARGB(255, 59, 59, 62),
  "surfaceContainerLowest": Color.fromARGB(255, 12, 12, 14),
  "surfaceContainerLow": Color.fromARGB(255, 28, 28, 31),
  "surfaceContainer": Color.fromARGB(255, 32, 32, 35),
  "surfaceContainerHigh": Color.fromARGB(255, 43, 43, 46),
  "surfaceContainerHighest": Color.fromARGB(255, 54, 54, 57),

  // Additional UI colors for dark mode
  "outline": Color.fromARGB(255, 147, 147, 152),
  "outlineVariant": Color.fromARGB(255, 73, 73, 78),
  "inverseSurface": Color.fromARGB(255, 230, 230, 235),
  "onInverseSurface": Color.fromARGB(255, 48, 48, 51),
  "inversePrimary": Color.fromARGB(255, 236, 116, 36),
  "scrim": Color.fromARGB(255, 0, 0, 0),
  "shadow": Color.fromARGB(255, 0, 0, 0),
};

final lightTheme = ThemeData(
  // brightness: Brightness.light,
  // primaryColor: Colors.blue,
  useMaterial3: true,

  // colorSchemeSeed: colorSelectionMethod == ColorSelectionMethod.colorSeed
  //     ? colorSelected.color
  //     : null,
  // colorScheme: colorSelectionMethod == ColorSelectionMethod.image
  //     ? imageColorScheme
  //     : null,

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: lightColors["onPrimary"], // White text/icon color
      backgroundColor: lightColors["primary"], // Energetic orange
      disabledBackgroundColor: lightColors["primary"]!.withOpacity(0.38),
      disabledForegroundColor: lightColors["onPrimary"]!.withOpacity(0.38),
      elevation: 2, // Slight elevation for depth
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8), // Subtle rounding
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      textStyle: GoogleFonts.raleway(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: lightColors["primary"]!,
    onPrimary: lightColors["onPrimary"]!,
    secondary: lightColors["secondary"]!,
    onSecondary: lightColors["onSecondary"]!,
    error: lightColors["error"]!,
    onError: lightColors["onError"]!,
    surface: lightColors["surface"]!,
    onSurface: lightColors["onSurface"]!,
    primaryContainer: lightColors["primaryContainer"]!,
    onPrimaryContainer: lightColors["onPrimaryContainer"]!,
    secondaryContainer: lightColors["secondaryContainer"]!,
    onSecondaryContainer: lightColors["onSecondaryContainer"]!,
    tertiary: lightColors["tertiary"]!,
    onTertiary: lightColors["onTertiary"]!,
    tertiaryContainer: lightColors["tertiaryContainer"]!,
    onTertiaryContainer: lightColors["onTertiaryContainer"]!,
    errorContainer: lightColors["errorContainer"]!,
    onErrorContainer: lightColors["onErrorContainer"]!,
    // surfaceVariant: lightColors["surfaceVariant"]!,
    onSurfaceVariant: lightColors["onSurfaceVariant"]!,
    surfaceDim: lightColors["surfaceDim"]!,
    surfaceBright: lightColors["surfaceBright"]!,
    surfaceContainerLowest: lightColors["surfaceContainerLowest"]!,
    surfaceContainerLow: lightColors["surfaceContainerLow"]!,
    surfaceContainer: lightColors["surfaceContainer"]!,
    surfaceContainerHigh: lightColors["surfaceContainerHigh"]!,
    surfaceContainerHighest: lightColors["surfaceContainerHighest"]!,
    outline: lightColors["outline"]!,
    outlineVariant: lightColors["outlineVariant"]!,
    inverseSurface: lightColors["inverseSurface"]!,
    onInverseSurface: lightColors["onInverseSurface"]!,
    inversePrimary: lightColors["inversePrimary"]!,
    scrim: lightColors["scrim"]!,
    shadow: lightColors["shadow"]!,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    titleSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    titleMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    titleLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    bodySmall: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    bodyMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    bodyLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    headlineSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    headlineMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    headlineLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    displaySmall: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    displayMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    displayLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    labelSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    labelMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
    labelLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
          // color: lightColors["onSurface"],
          ),
    ),
  ),
  drawerTheme: const DrawerThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
  ),
);

final darkTheme = ThemeData(
  // brightness: Brightness.dark,
  // primaryColor: colors["primary"]!,
  useMaterial3: true,
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: darkColors["onPrimary"], // White text/icon color
      backgroundColor: darkColors["primary"], // Energetic orange
      disabledBackgroundColor: darkColors["primary"]!.withOpacity(0.38),
      disabledForegroundColor: darkColors["onPrimary"]!.withOpacity(0.38),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      textStyle: GoogleFonts.raleway(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    ),
  ),
  colorScheme: ColorScheme(
    brightness: Brightness.light,
    primary: darkColors["primary"]!,
    onPrimary: darkColors["onPrimary"]!,
    secondary: darkColors["secondary"]!,
    onSecondary: darkColors["onSecondary"]!,
    error: darkColors["error"]!,
    onError: darkColors["onError"]!,
    surface: darkColors["surface"]!,
    onSurface: darkColors["onSurface"]!,
    primaryContainer: darkColors["primaryContainer"]!,
    onPrimaryContainer: darkColors["onPrimaryContainer"]!,
    secondaryContainer: darkColors["secondaryContainer"]!,
    onSecondaryContainer: darkColors["onSecondaryContainer"]!,
    tertiary: darkColors["tertiary"]!,
    onTertiary: darkColors["onTertiary"]!,
    tertiaryContainer: darkColors["tertiaryContainer"]!,
    onTertiaryContainer: darkColors["onTertiaryContainer"]!,
    errorContainer: darkColors["errorContainer"]!,
    onErrorContainer: darkColors["onErrorContainer"]!,
    // surfaceVariant: lightColors["surfaceVariant"]!,
    onSurfaceVariant: darkColors["onSurfaceVariant"]!,
    surfaceDim: darkColors["surfaceDim"]!,
    surfaceBright: darkColors["surfaceBright"]!,
    surfaceContainerLowest: darkColors["surfaceContainerLowest"]!,
    surfaceContainerLow: darkColors["surfaceContainerLow"]!,
    surfaceContainer: darkColors["surfaceContainer"]!,
    surfaceContainerHigh: darkColors["surfaceContainerHigh"]!,
    surfaceContainerHighest: darkColors["surfaceContainerHighest"]!,
    outline: darkColors["outline"]!,
    outlineVariant: darkColors["outlineVariant"]!,
    inverseSurface: darkColors["inverseSurface"]!,
    onInverseSurface: darkColors["onInverseSurface"]!,
    inversePrimary: darkColors["inversePrimary"]!,
    scrim: darkColors["scrim"]!,
    shadow: darkColors["shadow"]!,
  ),
  textTheme: GoogleFonts.latoTextTheme().copyWith(
    titleSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    titleMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    titleLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    bodySmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    bodyMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    bodyLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    headlineSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    headlineMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    headlineLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    displaySmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    displayMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    displayLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    labelSmall: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    labelMedium: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
    labelLarge: GoogleFonts.raleway(
      textStyle: TextStyle(
        color: darkColors["onSurface"],
      ),
    ),
  ),
  drawerTheme: const DrawerThemeData(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero,
    ),
  ),
);
