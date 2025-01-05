import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          '© 2025 Simple BMI Calculator',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        SelectableText(
          'by Osvaldo Martinez',
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
          onTap: () => launchUrl(Uri.parse('https://www.omv88.dev')),
        )
      ],
    );
  }
}
