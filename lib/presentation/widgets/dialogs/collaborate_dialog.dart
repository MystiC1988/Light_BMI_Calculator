import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class CollaborateDialog extends StatelessWidget {
  const CollaborateDialog({super.key});

  // Link to your Ko-fi page
  final String koFiUrl = "https://ko-fi.com/omv88";

  // Method to launch URLs
  void _launchURL(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.heyThereGreeting,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            AppLocalizations.of(context)!.aboutDevIntro,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 10),
          Text(
            AppLocalizations.of(context)!.supportRequest,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton.icon(
              onPressed: () => _launchURL(koFiUrl),
              icon: const Icon(Icons.coffee_rounded),
              label:
                  Text(AppLocalizations.of(context)!.supportWithCoffeeButton),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                textStyle: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
