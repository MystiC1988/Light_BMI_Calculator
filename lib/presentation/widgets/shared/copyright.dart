import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    return GestureDetector(
      onTap: () => launchUrl(Uri.parse('https://www.omv88.dev')),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '© 2025 Light BMI Calculator',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: colorScheme.secondary,
            ),
          ),
          Text(
            'by Osvaldo Martinez',
            style: TextStyle(
              fontSize: 12,
              color: colorScheme.secondary,
            ),
          )
        ],
      ),
    );
  }
}
