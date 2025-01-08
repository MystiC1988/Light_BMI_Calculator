import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoDialog extends StatelessWidget {
  const InfoDialog({super.key});

  // URLs for external sources
  final String whoUrl =
      "https://www.who.int/news-room/fact-sheets/detail/obesity-and-overweight";
  final String cdcUrl =
      "https://www.cdc.gov/bmi/faq/?CDC_AAref_Val=https://www.cdc.gov/healthyweight/assessing/bmi/adult_bmi/index.html";

  // Method to launch URLs
  void _launchURL(String url, context) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Could not launch $url')),
      );
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
            "BMI Calculation Explanation",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "The Body Mass Index (BMI) is a standard measure used to evaluate an individual's weight status. This app uses the following internationally recognized formulas:",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 10),
          const Text(
            "1. Metric Formula:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 5),
          const Text(
            "BMI = weight (kg) / height² (m)",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 10),
          const Text(
            "2. US Units Formula:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 5),
          const Text(
            "BMI = (weight (lbs) × 703) / height² (in)",
            style: TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 15),
          const Text(
            "Sources:",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => _launchURL(whoUrl, context),
            child: const Text(
              "World Health Organization (WHO)",
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => _launchURL(cdcUrl, context),
            child: const Text(
              "Centers for Disease Control and Prevention (CDC)",
              style: TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
