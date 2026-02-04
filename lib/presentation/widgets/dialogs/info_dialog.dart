import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:light_bmi_calculator/l10n/app_localizations.dart';

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
          Text(
            AppLocalizations.of(context)!.bmiCalculationExplanationTitle,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            AppLocalizations.of(context)!.bodyMassIndexExplanation,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 10),
          Text(
            AppLocalizations.of(context)!.metricFormulaHeading,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 5),
          Text(
            AppLocalizations.of(context)!.metricFormulaDetail,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 10),
          Text(
            AppLocalizations.of(context)!.usUnitsFormulaHeading,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 5),
          Text(
            AppLocalizations.of(context)!.usUnitsFormulaDetail,
            style: const TextStyle(fontSize: 14),
          ),
          const SizedBox(height: 15),
          Text(
            AppLocalizations.of(context)!.sourcesHeading,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => _launchURL(whoUrl, context),
            child: Text(
              AppLocalizations.of(context)!.whoSource,
              style: const TextStyle(
                color: Colors.blue,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 5),
          GestureDetector(
            onTap: () => _launchURL(cdcUrl, context),
            child: Text(
              AppLocalizations.of(context)!.cdcSource,
              style: const TextStyle(
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
