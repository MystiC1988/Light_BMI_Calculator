import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Copyright extends StatelessWidget {
  const Copyright({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => launchUrl(Uri.parse('https://www.omv88.dev')),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '© 2025 Light BMI Calculator',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(177, 224, 224, 224),
            ),
          ),
          Text(
            'by Osvaldo Martinez',
            style: TextStyle(
              fontSize: 12,
              color: Color.fromARGB(182, 219, 219, 219),
            ),
          )
        ],
      ),
    );
  }
}
