import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('pt'),
    Locale('ru'),
    Locale('zh')
  ];

  /// No description provided for @underweightLabel.
  ///
  /// In en, this message translates to:
  /// **'Underweight'**
  String get underweightLabel;

  /// No description provided for @normalLabel.
  ///
  /// In en, this message translates to:
  /// **'normal'**
  String get normalLabel;

  /// No description provided for @overweightLabel.
  ///
  /// In en, this message translates to:
  /// **'Overweight'**
  String get overweightLabel;

  /// No description provided for @obeseLabel.
  ///
  /// In en, this message translates to:
  /// **'Obese'**
  String get obeseLabel;

  /// No description provided for @heightLabel.
  ///
  /// In en, this message translates to:
  /// **'Height:'**
  String get heightLabel;

  /// No description provided for @bmiLabel.
  ///
  /// In en, this message translates to:
  /// **'BMI:'**
  String get bmiLabel;

  /// No description provided for @feetAbbreviation.
  ///
  /// In en, this message translates to:
  /// **'ft.'**
  String get feetAbbreviation;

  /// No description provided for @inchesAbbreviation.
  ///
  /// In en, this message translates to:
  /// **'in.'**
  String get inchesAbbreviation;

  /// No description provided for @centimetresAbbreviation.
  ///
  /// In en, this message translates to:
  /// **'cm.'**
  String get centimetresAbbreviation;

  /// No description provided for @weightLabel.
  ///
  /// In en, this message translates to:
  /// **'Weight:'**
  String get weightLabel;

  /// No description provided for @poundsAbbreviation.
  ///
  /// In en, this message translates to:
  /// **'lbs.'**
  String get poundsAbbreviation;

  /// No description provided for @kilogramsAbbreviation.
  ///
  /// In en, this message translates to:
  /// **'kg.'**
  String get kilogramsAbbreviation;

  /// No description provided for @byText.
  ///
  /// In en, this message translates to:
  /// **'by'**
  String get byText;

  /// No description provided for @closeText.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get closeText;

  /// No description provided for @usUnitsLabel.
  ///
  /// In en, this message translates to:
  /// **'U.S. Units'**
  String get usUnitsLabel;

  /// No description provided for @metricUnitsLabel.
  ///
  /// In en, this message translates to:
  /// **'Metric Units'**
  String get metricUnitsLabel;

  /// No description provided for @bmiCalculationExplanationTitle.
  ///
  /// In en, this message translates to:
  /// **'BMI Calculation Explanation'**
  String get bmiCalculationExplanationTitle;

  /// No description provided for @bmiCalculationExplanationDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'About BMI Calculation'**
  String get bmiCalculationExplanationDialogTitle;

  /// No description provided for @bodyMassIndexExplanation.
  ///
  /// In en, this message translates to:
  /// **'The Body Mass Index (BMI) is a standard measure used to evaluate an individual\'s weight status. This app uses the following internationally recognized formulas:'**
  String get bodyMassIndexExplanation;

  /// No description provided for @metricFormulaHeading.
  ///
  /// In en, this message translates to:
  /// **'1. Metric Formula:'**
  String get metricFormulaHeading;

  /// No description provided for @metricFormulaDetail.
  ///
  /// In en, this message translates to:
  /// **'BMI = weight (kg) / height² (m)'**
  String get metricFormulaDetail;

  /// No description provided for @usUnitsFormulaHeading.
  ///
  /// In en, this message translates to:
  /// **'2. US Units Formula:'**
  String get usUnitsFormulaHeading;

  /// No description provided for @usUnitsFormulaDetail.
  ///
  /// In en, this message translates to:
  /// **'BMI = (weight (lbs) × 703) / height² (in)'**
  String get usUnitsFormulaDetail;

  /// No description provided for @sourcesHeading.
  ///
  /// In en, this message translates to:
  /// **'Sources:'**
  String get sourcesHeading;

  /// No description provided for @whoSource.
  ///
  /// In en, this message translates to:
  /// **'World Health Organization (WHO)'**
  String get whoSource;

  /// No description provided for @cdcSource.
  ///
  /// In en, this message translates to:
  /// **'Centers for Disease Control and Prevention (CDC)'**
  String get cdcSource;

  /// No description provided for @heyThereGreeting.
  ///
  /// In en, this message translates to:
  /// **'Hey there! 👋'**
  String get heyThereGreeting;

  /// No description provided for @supportDialogTitle.
  ///
  /// In en, this message translates to:
  /// **'Support Development'**
  String get supportDialogTitle;

  /// No description provided for @aboutDevIntro.
  ///
  /// In en, this message translates to:
  /// **'I\'m a passionate freelance software developer who loves creating free and open solutions for everyone. However, developing and maintaining these apps takes time and resources.'**
  String get aboutDevIntro;

  /// No description provided for @supportRequest.
  ///
  /// In en, this message translates to:
  /// **'If you enjoy this app and want to support its improvement and the creation of more tools like this, consider buying me a coffee. Your support is greatly appreciated!'**
  String get supportRequest;

  /// No description provided for @supportWithCoffeeButton.
  ///
  /// In en, this message translates to:
  /// **'Support with a Coffee'**
  String get supportWithCoffeeButton;

  /// No description provided for @underweightBmiExplanation.
  ///
  /// In en, this message translates to:
  /// **'A BMI below 18.5 indicates underweight. Possible causes include:\n- Insufficient caloric intake\n- High metabolism\n- Certain medical conditions\n\nRecommendations:\n• Increase caloric intake with nutrient-rich foods\n• Add healthy fats to your diet (nuts, avocados, olive oil)\n• Consider strength training to build muscle mass\n• Consult a healthcare provider to rule out underlying conditions\n\nDisclaimer:\nThis information is intended for general knowledge only and is not a substitute for professional medical advice.\nPlease consult a medical professional for an accurate diagnosis and treatment.'**
  String get underweightBmiExplanation;

  /// No description provided for @normalBmiExplanation.
  ///
  /// In en, this message translates to:
  /// **'A BMI between 18.5 and 24.9 indicates a healthy weight. This generally means:\n- Your weight is proportional to your height\n- Lower risk of weight-related health issues\n- Optimal range for most adults\n\nRecommendations:\n• Maintain a balanced diet\n• Engage in regular exercise (at least 150 minutes per week)\n• Schedule regular health check-ups\n• Continue healthy lifestyle habits\n\nDisclaimer:\nThis information is intended for general knowledge only and is not a substitute for professional medical advice.\nPlease consult a medical professional for an accurate diagnosis and treatment.'**
  String get normalBmiExplanation;

  /// No description provided for @overweightBmiExplanation.
  ///
  /// In en, this message translates to:
  /// **'A BMI between 25 and 29.9 indicates overweight. This may lead to:\n- Increased risk of heart disease\n- Higher blood pressure\n- Elevated risk of type 2 diabetes\n\nRecommendations:\n• Reduce caloric intake moderately\n• Increase physical activity\n• Focus on portion control\n• Consider consulting a nutritionist or dietitian\n\nDisclaimer:\nThis information is intended for general knowledge only and is not a substitute for professional medical advice.\nPlease consult a medical professional for an accurate diagnosis and treatment.'**
  String get overweightBmiExplanation;

  /// No description provided for @obesityBmiExplanation.
  ///
  /// In en, this message translates to:
  /// **'A BMI of 30 or greater indicates obesity. This significantly increases the risk of:\n- Heart disease\n- Type 2 diabetes\n- High blood pressure\n- Certain types of cancer\n\nRecommendations:\n• Consult a healthcare provider for a structured weight loss plan\n• Engage in a regular exercise program\n• Consider professional support (nutritionist, therapist)\n• Monitor progress with regular check-ups\n\nDisclaimer:\nThis information is intended for general knowledge only and is not a substitute for professional medical advice.\nPlease consult a medical professional for an accurate diagnosis and treatment.'**
  String get obesityBmiExplanation;

  /// No description provided for @inchesLessThanTwelveError.
  ///
  /// In en, this message translates to:
  /// **'Inches must be less than 12'**
  String get inchesLessThanTwelveError;

  /// No description provided for @thankyouTitle.
  ///
  /// In en, this message translates to:
  /// **'Thank You!'**
  String get thankyouTitle;

  /// No description provided for @thankyouMessage.
  ///
  /// In en, this message translates to:
  /// **'Your support means a lot and helps keep this app free for everyone. Thank you for being awesome!'**
  String get thankyouMessage;

  /// No description provided for @canceledTitle.
  ///
  /// In en, this message translates to:
  /// **'No Problem!'**
  String get canceledTitle;

  /// No description provided for @canceledMessage.
  ///
  /// In en, this message translates to:
  /// **'Thanks for considering. Please feel free to support the development in the future if you\'d like!'**
  String get canceledMessage;

  /// No description provided for @errorMessage.
  ///
  /// In en, this message translates to:
  /// **'An error occurred. Please try again.'**
  String get errorMessage;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
        'ar',
        'bn',
        'de',
        'en',
        'es',
        'fr',
        'hi',
        'it',
        'ja',
        'ko',
        'pt',
        'ru',
        'zh'
      ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
      'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
