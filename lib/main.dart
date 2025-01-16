import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:light_bmi_calculator/config/revenuecat/revenuecar_service.dart';
import 'package:light_bmi_calculator/l10n/l10n.dart';
import 'package:light_bmi_calculator/presentation/blocs/collaborate_provider.dart';
import 'package:light_bmi_calculator/presentation/blocs/theme_provider.dart';
import 'package:light_bmi_calculator/presentation/screens/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  WidgetsFlutterBinding.ensureInitialized();
  await RevenueCatService.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ThemeProvider()),
        BlocProvider(create: (context) => CollaborateProvider()),
      ],
      child: BlocBuilder<ThemeProvider, ThemeData>(
        builder: (BuildContext context, state) {
          return MaterialApp(
            supportedLocales: L10n.all,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            localeResolutionCallback: (locale, supportedLocales) {
              // Check if the current device locale is supported
              for (var supportedLocale in supportedLocales) {
                if (supportedLocale.languageCode == locale?.languageCode) {
                  return supportedLocale;
                }
              }
              // If device locale not supported, use first from the list (English)
              return supportedLocales.first;
            },
            title: 'Light BMI Calculator',
            theme: state,
            home: const HomeScreen(),
            debugShowCheckedModeBanner: false,
          );
        },
      ),
    );
  }
}
