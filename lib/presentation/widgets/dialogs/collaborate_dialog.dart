import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
          const Text(
            "Hey there! 👋",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Hi! I'm a passionate freelance software developer who loves creating free and open solutions for everyone. However, developing and maintaining these apps takes time and resources.",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 10),
          const Text(
            "If you enjoy this app and want to support its improvement and the creation of more tools like this, consider buying me a coffee. Your support is greatly appreciated!",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 15),
          Center(
            child: ElevatedButton.icon(
              onPressed: () => _launchURL(koFiUrl),
              icon: const Icon(Icons.coffee_rounded),
              label: const Text("Support with a Coffee"),
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
