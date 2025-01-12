import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
            '${AppLocalizations.of(context)!.byText} Osvaldo Martinez',
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
