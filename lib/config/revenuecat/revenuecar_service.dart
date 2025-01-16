// lib/services/revenue_cat_service.dart
import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:purchases_flutter/purchases_flutter.dart';

class RevenueCatService {
  static String? iosRevenuecatApiKey = dotenv.env['IOS_REVENUECAT_API_KEY'];

  static Future<void> init() async {
    await Purchases.setLogLevel(LogLevel.debug);

    PurchasesConfiguration configuration;
    if (Platform.isIOS) {
      configuration = PurchasesConfiguration(iosRevenuecatApiKey!);
    } else {
      configuration = PurchasesConfiguration(iosRevenuecatApiKey!);
    }

    await Purchases.configure(configuration);
  }
}
