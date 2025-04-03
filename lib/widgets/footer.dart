import 'package:flutter/material.dart';
import '../core/localizations.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          color: colorScheme.surface, // Matches main background
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                localizations.getTranslate('turkish_ground_services'),
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 12,
                  letterSpacing: 1.5,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          color: colorScheme.surfaceContainer, // Subtle contrast
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                localizations.getTranslate('tgs'),
                style: TextStyle(
                  color: colorScheme.onSurface,
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
