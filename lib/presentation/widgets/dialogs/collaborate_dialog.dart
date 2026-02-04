import 'package:flutter/material.dart';
import 'package:light_bmi_calculator/l10n/app_localizations.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';

class CollaborateDialog extends StatelessWidget {
  const CollaborateDialog({super.key});

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
              onPressed: () async {
                var scaffold = ScaffoldMessenger.of(context);
                var strings = AppLocalizations.of(context);
                Navigator.of(context).pop();
                final PaywallResult result =
                    await RevenueCatUI.presentPaywall(displayCloseButton: true);
                if (result == PaywallResult.purchased) {
                  scaffold.showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          const Icon(Icons.favorite, color: Colors.white),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              strings!.thankyouMessage,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                            ),
                          ),
                        ],
                      ),
                      backgroundColor: Colors.green,
                      duration: const Duration(seconds: 2),
                    ),
                  );
                }
                if (result == PaywallResult.error) {
                  scaffold.showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          const Icon(Icons.error_outline, color: Colors.white),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              strings!.errorMessage,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                            ),
                          ),
                        ],
                      ),
                      backgroundColor: Colors.red,
                      duration: const Duration(seconds: 2),
                    ),
                  );
                }
                if (result == PaywallResult.cancelled) {
                  scaffold.showSnackBar(
                    SnackBar(
                      content: Row(
                        children: [
                          const Icon(Icons.handshake, color: Colors.white),
                          const SizedBox(width: 8),
                          Flexible(
                            child: Text(
                              strings!.canceledMessage,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 4,
                            ),
                          ),
                        ],
                      ),
                      backgroundColor: Colors.blue,
                      duration: const Duration(seconds: 2),
                    ),
                  );
                }
              },
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
