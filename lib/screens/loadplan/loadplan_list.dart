import 'package:flutter/material.dart';

class LoadPlanList extends StatelessWidget {
  const LoadPlanList({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildContainer(
              '20.10.2022 / TK 2051 / G10 / TC-JAA / HASAN CAN', colorScheme),
          _buildContainer('21.10.2022 / TK 2052 / G11 / TC-JAB / BERRIN YILMAZ',
              colorScheme),
          _buildContainer('22.10.2022 / TK 2053 / G12 / TC-JAC / FEHMI YILMAZ',
              colorScheme),
          _buildContainer(
              '23.10.2022 / TK 2054 / G13 / TC-JAD / AYSE KAYA', colorScheme),
        ],
      ),
    );
  }

  Widget _buildContainer(String text, ColorScheme colorScheme) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: colorScheme.surfaceContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: colorScheme.onSurface,
          fontSize: 16,
        ),
      ),
    );
  }
}
