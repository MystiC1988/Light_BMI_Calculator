// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get underweightLabel => 'Sottopeso';

  @override
  String get normalLabel => 'Normale';

  @override
  String get overweightLabel => 'Sovrappeso';

  @override
  String get obeseLabel => 'Obesità';

  @override
  String get heightLabel => 'Altezza:';

  @override
  String get bmiLabel => 'BMI:';

  @override
  String get feetAbbreviation => 'ft';

  @override
  String get inchesAbbreviation => 'in';

  @override
  String get centimetresAbbreviation => 'cm';

  @override
  String get weightLabel => 'Peso:';

  @override
  String get poundsAbbreviation => 'lbs.';

  @override
  String get kilogramsAbbreviation => 'kg';

  @override
  String get byText => 'di';

  @override
  String get closeText => 'Chiudi';

  @override
  String get usUnitsLabel => 'Unità USA';

  @override
  String get metricUnitsLabel => 'Unità metriche';

  @override
  String get bmiCalculationExplanationTitle =>
      'Spiegazione del calcolo del BMI';

  @override
  String get bmiCalculationExplanationDialogTitle =>
      'Informazioni sul calcolo del BMI';

  @override
  String get bodyMassIndexExplanation =>
      'Il Body Mass Index (BMI) è una misura standard utilizzata per valutare la condizione di peso di una persona. Questa app utilizza le seguenti formule riconosciute a livello internazionale:';

  @override
  String get metricFormulaHeading => '1. Formula metrica:';

  @override
  String get metricFormulaDetail => 'BMI = peso (kg) / altezza² (m)';

  @override
  String get usUnitsFormulaHeading => '2. Formula in unità USA:';

  @override
  String get usUnitsFormulaDetail =>
      'BMI = (peso (lbs.) × 703) / altezza² (in)';

  @override
  String get sourcesHeading => 'Fonti:';

  @override
  String get whoSource => 'Organizzazione Mondiale della Sanità (OMS)';

  @override
  String get cdcSource => 'Centers for Disease Control and Prevention (CDC)';

  @override
  String get heyThereGreeting => 'Ciao! 👋';

  @override
  String get supportDialogTitle => 'Supporta lo sviluppo';

  @override
  String get aboutDevIntro =>
      'Sono uno sviluppatore freelance appassionato che ama creare soluzioni gratuite e aperte per tutti. Tuttavia, lo sviluppo e la manutenzione di queste app richiedono tempo e risorse.';

  @override
  String get supportRequest =>
      'Se apprezzi questa app e desideri contribuire al suo miglioramento e alla creazione di ulteriori strumenti come questo, valuta la possibilità di offrirmi un caffè. Il tuo supporto è molto apprezzato!';

  @override
  String get supportWithCoffeeButton => 'Supporta con un caffè';

  @override
  String get underweightBmiExplanation =>
      'Un BMI inferiore a 18,5 indica sottopeso. Possibili cause includono:\n- Apporto calorico insufficiente\n- Metabolismo alto\n- Alcune condizioni mediche\n\nRaccomandazioni:\n• Aumentare l\'apporto calorico con alimenti ricchi di nutrienti\n• Aggiungere grassi sani alla dieta (noci, avocado, olio d\'oliva)\n• Considerare l\'allenamento di forza per aumentare la massa muscolare\n• Consultare un professionista sanitario per escludere condizioni sottostanti\n\nDisclaimer:\nQueste informazioni sono fornite a scopo generale e non sostituiscono il parere medico professionale.\nSi prega di consultare un professionista sanitario per una diagnosi e un trattamento accurati.';

  @override
  String get normalBmiExplanation =>
      'Un BMI compreso tra 18,5 e 24,9 indica un peso normale. In genere significa:\n- Il tuo peso è proporzionato alla tua altezza\n- Rischio minore di problemi di salute legati al peso\n- Intervallo ideale per la maggior parte degli adulti\n\nRaccomandazioni:\n• Mantieni una dieta equilibrata\n• Fai esercizio regolarmente (almeno 150 minuti a settimana)\n• Programma controlli medici regolari\n• Continua con abitudini di vita sane\n\nDisclaimer:\nQueste informazioni sono fornite a scopo generale e non sostituiscono il parere medico professionale.\nSi prega di consultare un professionista sanitario per una diagnosi e un trattamento accurati.';

  @override
  String get overweightBmiExplanation =>
      'Un BMI compreso tra 25 e 29,9 indica sovrappeso. Questo può portare a:\n- Maggior rischio di malattie cardiache\n- Pressione sanguigna elevata\n- Aumento del rischio di diabete di tipo 2\n\nRaccomandazioni:\n• Riduci moderatamente l\'apporto calorico\n• Aumenta l\'attività fisica\n• Focalizzati sul controllo delle porzioni\n• Valuta di consultare un nutrizionista o un dietista\n\nDisclaimer:\nQueste informazioni sono fornite a scopo generale e non sostituiscono il parere medico professionale.\nSi prega di consultare un professionista sanitario per una diagnosi e un trattamento accurati.';

  @override
  String get obesityBmiExplanation =>
      'Un BMI di 30 o superiore indica obesità. Questo aumenta in modo significativo il rischio di:\n- Malattie cardiache\n- Diabete di tipo 2\n- Ipertensione\n- Alcuni tipi di cancro\n\nRaccomandazioni:\n• Consulta un professionista sanitario per un piano strutturato di perdita di peso\n• Partecipa a un programma di esercizio fisico regolare\n• Valuta un supporto professionale (nutrizionista, terapeuta)\n• Monitora i progressi con controlli regolari\n\nDisclaimer:\nQueste informazioni sono fornite a scopo generale e non sostituiscono il parere medico professionale.\nSi prega di consultare un professionista sanitario per una diagnosi e un trattamento accurati.';

  @override
  String get inchesLessThanTwelveError =>
      'I pollici devono essere inferiori a 12';

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
