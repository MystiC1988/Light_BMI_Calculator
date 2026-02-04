// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get underweightLabel => 'Underweight';

  @override
  String get normalLabel => 'normal';

  @override
  String get overweightLabel => 'Overweight';

  @override
  String get obeseLabel => 'Obese';

  @override
  String get heightLabel => 'Height:';

  @override
  String get bmiLabel => 'BMI:';

  @override
  String get feetAbbreviation => 'ft.';

  @override
  String get inchesAbbreviation => 'in.';

  @override
  String get centimetresAbbreviation => 'cm.';

  @override
  String get weightLabel => 'Weight:';

  @override
  String get poundsAbbreviation => 'lbs.';

  @override
  String get kilogramsAbbreviation => 'kg.';

  @override
  String get byText => 'by';

  @override
  String get closeText => 'Close';

  @override
  String get usUnitsLabel => 'U.S. Units';

  @override
  String get metricUnitsLabel => 'Metric Units';

  @override
  String get bmiCalculationExplanationTitle => 'BMI Calculation Explanation';

  @override
  String get bmiCalculationExplanationDialogTitle => 'About BMI Calculation';

  @override
  String get bodyMassIndexExplanation =>
      'The Body Mass Index (BMI) is a standard measure used to evaluate an individual\'s weight status. This app uses the following internationally recognized formulas:';

  @override
  String get metricFormulaHeading => '1. Metric Formula:';

  @override
  String get metricFormulaDetail => 'BMI = weight (kg) / height² (m)';

  @override
  String get usUnitsFormulaHeading => '2. US Units Formula:';

  @override
  String get usUnitsFormulaDetail =>
      'BMI = (weight (lbs) × 703) / height² (in)';

  @override
  String get sourcesHeading => 'Sources:';

  @override
  String get whoSource => 'World Health Organization (WHO)';

  @override
  String get cdcSource => 'Centers for Disease Control and Prevention (CDC)';

  @override
  String get heyThereGreeting => 'Hey there! 👋';

  @override
  String get supportDialogTitle => 'Support Development';

  @override
  String get aboutDevIntro =>
      'I\'m a passionate freelance software developer who loves creating free and open solutions for everyone. However, developing and maintaining these apps takes time and resources.';

  @override
  String get supportRequest =>
      'If you enjoy this app and want to support its improvement and the creation of more tools like this, consider buying me a coffee. Your support is greatly appreciated!';

  @override
  String get supportWithCoffeeButton => 'Support with a Coffee';

  @override
  String get underweightBmiExplanation =>
      'A BMI below 18.5 indicates underweight. Possible causes include:\n- Insufficient caloric intake\n- High metabolism\n- Certain medical conditions\n\nRecommendations:\n• Increase caloric intake with nutrient-rich foods\n• Add healthy fats to your diet (nuts, avocados, olive oil)\n• Consider strength training to build muscle mass\n• Consult a healthcare provider to rule out underlying conditions\n\nDisclaimer:\nThis information is intended for general knowledge only and is not a substitute for professional medical advice.\nPlease consult a medical professional for an accurate diagnosis and treatment.';

  @override
  String get normalBmiExplanation =>
      'A BMI between 18.5 and 24.9 indicates a healthy weight. This generally means:\n- Your weight is proportional to your height\n- Lower risk of weight-related health issues\n- Optimal range for most adults\n\nRecommendations:\n• Maintain a balanced diet\n• Engage in regular exercise (at least 150 minutes per week)\n• Schedule regular health check-ups\n• Continue healthy lifestyle habits\n\nDisclaimer:\nThis information is intended for general knowledge only and is not a substitute for professional medical advice.\nPlease consult a medical professional for an accurate diagnosis and treatment.';

  @override
  String get overweightBmiExplanation =>
      'A BMI between 25 and 29.9 indicates overweight. This may lead to:\n- Increased risk of heart disease\n- Higher blood pressure\n- Elevated risk of type 2 diabetes\n\nRecommendations:\n• Reduce caloric intake moderately\n• Increase physical activity\n• Focus on portion control\n• Consider consulting a nutritionist or dietitian\n\nDisclaimer:\nThis information is intended for general knowledge only and is not a substitute for professional medical advice.\nPlease consult a medical professional for an accurate diagnosis and treatment.';

  @override
  String get obesityBmiExplanation =>
      'A BMI of 30 or greater indicates obesity. This significantly increases the risk of:\n- Heart disease\n- Type 2 diabetes\n- High blood pressure\n- Certain types of cancer\n\nRecommendations:\n• Consult a healthcare provider for a structured weight loss plan\n• Engage in a regular exercise program\n• Consider professional support (nutritionist, therapist)\n• Monitor progress with regular check-ups\n\nDisclaimer:\nThis information is intended for general knowledge only and is not a substitute for professional medical advice.\nPlease consult a medical professional for an accurate diagnosis and treatment.';

  @override
  String get inchesLessThanTwelveError => 'Inches must be less than 12';

  @override
  String get thankyouTitle => 'Thank You!';

  @override
  String get thankyouMessage =>
      'Your support means a lot and helps keep this app free for everyone. Thank you for being awesome!';

  @override
  String get canceledTitle => 'No Problem!';

  @override
  String get canceledMessage =>
      'Thanks for considering. Please feel free to support the development in the future if you\'d like!';

  @override
  String get errorMessage => 'An error occurred. Please try again.';
}
