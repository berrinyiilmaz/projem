import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;

  const HeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      color: colorScheme.surfaceContainer, // Subtle contrast to main surface
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.security,
            color: colorScheme.primary,
            size: 30,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: colorScheme.onSurface,
              fontSize: 24,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
