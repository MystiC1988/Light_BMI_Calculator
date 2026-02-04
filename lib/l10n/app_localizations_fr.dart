// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get underweightLabel => 'Sous poids';

  @override
  String get normalLabel => 'Normal';

  @override
  String get overweightLabel => 'Surpoids';

  @override
  String get obeseLabel => 'Obésité';

  @override
  String get heightLabel => 'Taille :';

  @override
  String get bmiLabel => 'IMC :';

  @override
  String get feetAbbreviation => 'pi';

  @override
  String get inchesAbbreviation => 'po';

  @override
  String get centimetresAbbreviation => 'cm';

  @override
  String get weightLabel => 'Poids :';

  @override
  String get poundsAbbreviation => 'lb';

  @override
  String get kilogramsAbbreviation => 'kg';

  @override
  String get byText => 'par';

  @override
  String get closeText => 'Fermer';

  @override
  String get usUnitsLabel => 'Unités US';

  @override
  String get metricUnitsLabel => 'Unités métriques';

  @override
  String get bmiCalculationExplanationTitle => 'Explication du calcul de l’IMC';

  @override
  String get bmiCalculationExplanationDialogTitle =>
      'À propos du calcul de l’IMC';

  @override
  String get bodyMassIndexExplanation =>
      'L’Indice de Masse Corporelle (IMC) est une mesure standard utilisée pour évaluer l’état pondéral d’une personne. Cette application utilise les formules reconnues internationalement suivantes :';

  @override
  String get metricFormulaHeading => '1. Formule métrique :';

  @override
  String get metricFormulaDetail => 'IMC = poids (kg) / taille² (m)';

  @override
  String get usUnitsFormulaHeading => '2. Formule US :';

  @override
  String get usUnitsFormulaDetail => 'IMC = (poids (lb) × 703) / taille² (po)';

  @override
  String get sourcesHeading => 'Sources :';

  @override
  String get whoSource => 'Organisation mondiale de la Santé (OMS)';

  @override
  String get cdcSource =>
      'Centres pour le contrôle et la prévention des maladies (CDC)';

  @override
  String get heyThereGreeting => 'Salut ! 👋';

  @override
  String get supportDialogTitle => 'Soutenir le développement';

  @override
  String get aboutDevIntro =>
      'Je suis un développeur freelance passionné qui aime créer des solutions gratuites et ouvertes pour tous. Cependant, le développement et la maintenance de ces applications nécessitent du temps et des ressources.';

  @override
  String get supportRequest =>
      'Si vous appréciez cette application et souhaitez soutenir son amélioration ainsi que la création d’autres outils de ce genre, envisagez de m’offrir un café. Votre soutien est grandement apprécié !';

  @override
  String get supportWithCoffeeButton => 'Soutenir avec un café';

  @override
  String get underweightBmiExplanation =>
      'Un IMC inférieur à 18,5 indique une insuffisance pondérale. Les causes possibles incluent :\n- Un apport calorique insuffisant\n- Un métabolisme élevé\n- Certaines conditions médicales\n\nRecommandations :\n• Augmenter l’apport calorique avec des aliments riches en nutriments\n• Ajouter des graisses saines à votre alimentation (noix, avocats, huile d’olive)\n• Envisager un entraînement de force pour développer la masse musculaire\n• Consulter un professionnel de la santé pour exclure tout problème sous-jacent\n\nAvertissement :\nCes informations sont données à titre indicatif et ne remplacent pas l’avis d’un professionnel de santé.\nVeuillez consulter un professionnel de santé pour un diagnostic et un traitement précis.';

  @override
  String get normalBmiExplanation =>
      'Un IMC compris entre 18,5 et 24,9 indique un poids normal, ce qui signifie généralement :\n- Un poids proportionnel à votre taille\n- Un risque moindre de problèmes de santé liés au poids\n- Une plage optimale pour la plupart des adultes\n\nRecommandations :\n• Maintenir un régime alimentaire équilibré\n• Faire de l’exercice régulièrement (au moins 150 minutes par semaine)\n• Faire des bilans de santé réguliers\n• Continuer de bonnes habitudes de vie\n\nAvertissement :\nCes informations sont données à titre indicatif et ne remplacent pas l’avis d’un professionnel de santé.\nVeuillez consulter un professionnel de santé pour un diagnostic et un traitement précis.';

  @override
  String get overweightBmiExplanation =>
      'Un IMC compris entre 25 et 29,9 indique un surpoids, ce qui peut entraîner :\n- Un risque accru de maladie cardiaque\n- Une pression artérielle plus élevée\n- Un risque accru de diabète de type 2\n\nRecommandations :\n• Réduire modérément l’apport calorique\n• Augmenter l’activité physique\n• Se concentrer sur le contrôle des portions\n• Envisager une consultation avec un nutritionniste ou un diététicien\n\nAvertissement :\nCes informations sont données à titre indicatif et ne remplacent pas l’avis d’un professionnel de santé.\nVeuillez consulter un professionnel de santé pour un diagnostic et un traitement précis.';

  @override
  String get obesityBmiExplanation =>
      'Un IMC de 30 ou plus indique l’obésité, ce qui augmente considérablement le risque de :\n- Maladie cardiaque\n- Diabète de type 2\n- Hypertension artérielle\n- Certains types de cancer\n\nRecommandations :\n• Consulter un professionnel de la santé pour un plan de perte de poids structuré\n• Faire de l’exercice régulièrement\n• Envisager un soutien professionnel (nutritionniste, thérapeute)\n• Suivre vos progrès grâce à des bilans réguliers\n\nAvertissement :\nCes informations sont données à titre indicatif et ne remplacent pas l’avis d’un professionnel de santé.\nVeuillez consulter un professionnel de santé pour un diagnostic et un traitement précis.';

  @override
  String get inchesLessThanTwelveError =>
      'Les pouces doivent être inférieurs à 12';

  @override
  String get thankyouTitle => 'Merci !';

  @override
  String get thankyouMessage =>
      'Votre soutien est très apprécié et aide à garder cette application gratuite pour tout le monde. Merci d\'être génial !';

  @override
  String get canceledTitle => 'Pas de problème !';

  @override
  String get canceledMessage =>
      'Merci d\'avoir envisagé. N\'hésitez pas à soutenir le développement à l\'avenir si vous le souhaitez !';

  @override
  String get errorMessage => 'Une erreur s\'est produite. Veuillez réessayer.';
}
