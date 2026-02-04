// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get underweightLabel => 'Untergewicht';

  @override
  String get normalLabel => 'Normal';

  @override
  String get overweightLabel => 'Übergewicht';

  @override
  String get obeseLabel => 'Fettleibigkeit';

  @override
  String get heightLabel => 'Größe:';

  @override
  String get bmiLabel => 'BMI:';

  @override
  String get feetAbbreviation => 'ft';

  @override
  String get inchesAbbreviation => 'in';

  @override
  String get centimetresAbbreviation => 'cm';

  @override
  String get weightLabel => 'Gewicht:';

  @override
  String get poundsAbbreviation => 'lbs.';

  @override
  String get kilogramsAbbreviation => 'kg';

  @override
  String get byText => 'von';

  @override
  String get closeText => 'Schließen';

  @override
  String get usUnitsLabel => 'US-Einheiten';

  @override
  String get metricUnitsLabel => 'Metrische Einheiten';

  @override
  String get bmiCalculationExplanationTitle => 'BMI-Berechnung Erklärung';

  @override
  String get bmiCalculationExplanationDialogTitle => 'Über die BMI-Berechnung';

  @override
  String get bodyMassIndexExplanation =>
      'Der Body-Mass-Index (BMI) ist ein Standardmaß zur Beurteilung des Körpergewichts einer Person. Diese App verwendet die folgenden international anerkannten Formeln:';

  @override
  String get metricFormulaHeading => '1. Metrische Formel:';

  @override
  String get metricFormulaDetail => 'BMI = Gewicht (kg) / Größe² (m)';

  @override
  String get usUnitsFormulaHeading => '2. US-Formel:';

  @override
  String get usUnitsFormulaDetail =>
      'BMI = (Gewicht (lbs.) × 703) / Größe² (in)';

  @override
  String get sourcesHeading => 'Quellen:';

  @override
  String get whoSource => 'Weltgesundheitsorganisation (WHO)';

  @override
  String get cdcSource => 'Centers for Disease Control and Prevention (CDC)';

  @override
  String get heyThereGreeting => 'Hallo! 👋';

  @override
  String get supportDialogTitle => 'Unterstützung der Entwicklung';

  @override
  String get aboutDevIntro =>
      'Ich bin ein leidenschaftlicher freiberuflicher Softwareentwickler, der gerne kostenlose und offene Lösungen für alle erstellt. Allerdings erfordern die Entwicklung und Wartung dieser Apps Zeit und Ressourcen.';

  @override
  String get supportRequest =>
      'Wenn dir diese App gefällt und du ihre Verbesserung sowie die Entwicklung weiterer Tools unterstützen möchtest, ziehe bitte in Betracht, mir einen Kaffee zu spendieren. Deine Unterstützung wird sehr geschätzt!';

  @override
  String get supportWithCoffeeButton => 'Mit einem Kaffee unterstützen';

  @override
  String get underweightBmiExplanation =>
      'Ein BMI unter 18,5 weist auf Untergewicht hin. Mögliche Ursachen sind:\n- Unzureichende Kalorienzufuhr\n- Hoher Stoffwechsel\n- Bestimmte gesundheitliche Probleme\n\nEmpfehlungen:\n• Erhöhe die Kalorienzufuhr mit nährstoffreichen Lebensmitteln\n• Füge gesunde Fette zu deiner Ernährung hinzu (Nüsse, Avocados, Olivenöl)\n• Ziehe Krafttraining in Betracht, um Muskelmasse aufzubauen\n• Konsultiere einen Arzt, um mögliche zugrunde liegende Erkrankungen auszuschließen\n\nHaftungsausschluss:\nDiese Informationen dienen nur zur allgemeinen Orientierung und ersetzen keine professionelle medizinische Beratung.\nBitte konsultiere einen Arzt für eine genaue Diagnose und Behandlung.';

  @override
  String get normalBmiExplanation =>
      'Ein BMI zwischen 18,5 und 24,9 weist auf ein gesundes Körpergewicht hin. Das bedeutet in der Regel:\n- Dein Gewicht ist proportional zu deiner Körpergröße\n- Geringeres Risiko für gewichtsbedingte Gesundheitsprobleme\n- Ein optimaler Bereich für die meisten Erwachsenen\n\nEmpfehlungen:\n• Behalte eine ausgewogene Ernährung bei\n• Treibe regelmäßig Sport (mindestens 150 Minuten pro Woche)\n• Lass regelmäßig Gesundheitschecks durchführen\n• Setze einen gesunden Lebensstil fort\n\nHaftungsausschluss:\nDiese Informationen dienen nur zur allgemeinen Orientierung und ersetzen keine professionelle medizinische Beratung.\nBitte konsultiere einen Arzt für eine genaue Diagnose und Behandlung.';

  @override
  String get overweightBmiExplanation =>
      'Ein BMI zwischen 25 und 29,9 weist auf Übergewicht hin, was zu Folgendem führen kann:\n- Erhöhtes Risiko für Herzerkrankungen\n- Höherer Blutdruck\n- Erhöhtes Risiko für Typ-2-Diabetes\n\nEmpfehlungen:\n• Verringere deine Kalorienaufnahme in Maßen\n• Erhöhe deine körperliche Aktivität\n• Achte auf Portionskontrolle\n• Ziehe eine Beratung durch einen Ernährungsberater oder Diätassistenten in Betracht\n\nHaftungsausschluss:\nDiese Informationen dienen nur zur allgemeinen Orientierung und ersetzen keine professionelle medizinische Beratung.\nBitte konsultiere einen Arzt für eine genaue Diagnose und Behandlung.';

  @override
  String get obesityBmiExplanation =>
      'Ein BMI von 30 oder höher weist auf Fettleibigkeit hin, was das Risiko für Folgendes erheblich erhöht:\n- Herzerkrankungen\n- Typ-2-Diabetes\n- Bluthochdruck\n- Bestimmte Krebsarten\n\nEmpfehlungen:\n• Konsultiere einen Arzt, um einen strukturierten Gewichtsreduktionsplan zu erstellen\n• Treibe regelmäßig Sport\n• Ziehe professionelle Hilfe in Betracht (Ernährungsberater, Therapeut)\n• Überwache deine Fortschritte mit regelmäßigen Untersuchungen\n\nHaftungsausschluss:\nDiese Informationen dienen nur zur allgemeinen Orientierung und ersetzen keine professionelle medizinische Beratung.\nBitte konsultiere einen Arzt für eine genaue Diagnose und Behandlung.';

  @override
  String get inchesLessThanTwelveError =>
      'Zollangaben müssen kleiner als 12 sein';

  @override
  String get thankyouTitle => 'Danke!';

  @override
  String get thankyouMessage =>
      'Deine Unterstützung bedeutet viel und hilft, diese App für alle kostenlos zu halten. Danke, dass du großartig bist!';

  @override
  String get canceledTitle => 'Kein Problem!';

  @override
  String get canceledMessage =>
      'Danke fürs Überlegen. Bitte unterstütze die Entwicklung in Zukunft, wenn du möchtest!';

  @override
  String get errorMessage =>
      'Ein Fehler ist aufgetreten. Bitte versuche es erneut.';
}
