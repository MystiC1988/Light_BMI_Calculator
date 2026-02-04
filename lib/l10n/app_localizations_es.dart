// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get underweightLabel => 'Bajo peso';

  @override
  String get normalLabel => 'Normal';

  @override
  String get overweightLabel => 'Sobrepeso';

  @override
  String get obeseLabel => 'Obesidad';

  @override
  String get heightLabel => 'Altura:';

  @override
  String get bmiLabel => 'IMC:';

  @override
  String get feetAbbreviation => 'pies.';

  @override
  String get inchesAbbreviation => 'pulg.';

  @override
  String get centimetresAbbreviation => 'cm.';

  @override
  String get weightLabel => 'Peso:';

  @override
  String get poundsAbbreviation => 'lbs.';

  @override
  String get kilogramsAbbreviation => 'kg.';

  @override
  String get byText => 'por';

  @override
  String get closeText => 'Cerrar';

  @override
  String get usUnitsLabel => 'Uni. EE.UU.';

  @override
  String get metricUnitsLabel => 'Uni. métricas';

  @override
  String get bmiCalculationExplanationTitle =>
      'Explicación del cálculo del IMC';

  @override
  String get bmiCalculationExplanationDialogTitle => 'Acerca del cálculo IMC';

  @override
  String get bodyMassIndexExplanation =>
      'El Índice de Masa Corporal (IMC) es una medida estándar utilizada para evaluar el estado de peso de una persona. Esta aplicación utiliza las siguientes fórmulas reconocidas internacionalmente:';

  @override
  String get metricFormulaHeading => '1. Fórmula métrica:';

  @override
  String get metricFormulaDetail => 'IMC = peso (kg) / estatura² (m)';

  @override
  String get usUnitsFormulaHeading => '2. Fórmula en unidades de EE.UU:';

  @override
  String get usUnitsFormulaDetail =>
      'IMC = (peso (lbs) × 703) / estatura² (pulg.)';

  @override
  String get sourcesHeading => 'Fuentes:';

  @override
  String get whoSource => 'Organización Mundial de la Salud (OMS)';

  @override
  String get cdcSource =>
      'Centros para el Control y la Prevención de Enfermedades (CDC)';

  @override
  String get heyThereGreeting => '¡Hola! 👋';

  @override
  String get supportDialogTitle => 'Apoya el desarrollo';

  @override
  String get aboutDevIntro =>
      'Soy un desarrollador de software freelance apasionado, que ama crear soluciones gratuitas y abiertas para todos. Sin embargo, desarrollar y mantener estas aplicaciones requiere tiempo y recursos.';

  @override
  String get supportRequest =>
      'Si te gusta esta aplicación y deseas apoyar su mejora y la creación de más herramientas como esta, considera invitarme a un café. ¡Tu apoyo es muy apreciado!';

  @override
  String get supportWithCoffeeButton => 'Apoyar con un café';

  @override
  String get underweightBmiExplanation =>
      'Un IMC por debajo de 18.5 indica bajo peso. Las posibles causas incluyen:\n- Ingesta calórica insuficiente\n- Metabolismo alto\n- Ciertas condiciones médicas\n\nRecomendaciones:\n• Aumentar la ingesta calórica con alimentos ricos en nutrientes\n• Agregar grasas saludables a tu dieta (nueces, aguacates, aceite de oliva)\n• Considerar entrenamiento de fuerza para ganar masa muscular\n• Consultar a un profesional de la salud para descartar afecciones subyacentes\n\nDescargo de responsabilidad:\nEsta información está destinada únicamente a fines de conocimiento general y no sustituye el consejo médico profesional.\nConsulta a un profesional médico para obtener un diagnóstico y tratamiento precisos.';

  @override
  String get normalBmiExplanation =>
      'Un IMC entre 18.5 y 24.9 indica un peso saludable. Esto generalmente significa:\n- Tu peso es proporcional a tu estatura\n- Riesgo más bajo de problemas de salud relacionados con el peso\n- Rango óptimo para la mayoría de los adultos\n\nRecomendaciones:\n• Mantener una dieta equilibrada\n• Realizar ejercicio regular (al menos 150 minutos por semana)\n• Programar chequeos de salud periódicos\n• Continuar con hábitos de estilo de vida saludables\n\nDescargo de responsabilidad:\nEsta información está destinada únicamente a fines de conocimiento general y no sustituye el consejo médico profesional.\nConsulta a un profesional médico para obtener un diagnóstico y tratamiento precisos.';

  @override
  String get overweightBmiExplanation =>
      'Un IMC entre 25 y 29.9 indica sobrepeso. Esto puede llevar a:\n- Mayor riesgo de enfermedades cardíacas\n- Presión arterial elevada\n- Aumento del riesgo de diabetes tipo 2\n\nRecomendaciones:\n• Reducir moderadamente la ingesta calórica\n• Aumentar la actividad física\n• Enfocarse en el control de porciones\n• Considerar consultar a un nutricionista o dietista\n\nDescargo de responsabilidad:\nEsta información está destinada únicamente a fines de conocimiento general y no sustituye el consejo médico profesional.\nConsulta a un profesional médico para obtener un diagnóstico y tratamiento precisos.';

  @override
  String get obesityBmiExplanation =>
      'Un IMC de 30 o más indica obesidad. Esto incrementa significativamente el riesgo de:\n- Enfermedades cardíacas\n- Diabetes tipo 2\n- Presión arterial alta\n- Ciertos tipos de cáncer\n\nRecomendaciones:\n• Consultar a un profesional de la salud para un plan estructurado de pérdida de peso\n• Participar en un programa regular de ejercicio\n• Considerar apoyo profesional (nutricionista, terapeuta)\n• Monitorear el progreso con chequeos regulares\n\nDescargo de responsabilidad:\nEsta información está destinada únicamente a fines de conocimiento general y no sustituye el consejo médico profesional.\nConsulta a un profesional médico para obtener un diagnóstico y tratamiento precisos.';

  @override
  String get inchesLessThanTwelveError => 'Las pulgadas deben ser menos de 12';

  @override
  String get thankyouTitle => '¡Gracias!';

  @override
  String get thankyouMessage =>
      'Tu apoyo significa mucho y ayuda a mantener esta aplicación gratuita para todos. ¡Gracias por ser increíble!';

  @override
  String get canceledTitle => '¡No hay problema!';

  @override
  String get canceledMessage =>
      'Gracias por considerar. No dudes en apoyar el desarrollo en el futuro si lo deseas.';

  @override
  String get errorMessage => 'Ocurrió un error. Por favor, inténtalo de nuevo.';
}
