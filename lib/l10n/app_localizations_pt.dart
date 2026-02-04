// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get underweightLabel => 'Abaixo peso';

  @override
  String get normalLabel => 'Normal';

  @override
  String get overweightLabel => 'Sobrepeso';

  @override
  String get obeseLabel => 'Obesidade';

  @override
  String get heightLabel => 'Altura:';

  @override
  String get bmiLabel => 'IMC:';

  @override
  String get feetAbbreviation => 'ft';

  @override
  String get inchesAbbreviation => 'pol';

  @override
  String get centimetresAbbreviation => 'cm';

  @override
  String get weightLabel => 'Peso:';

  @override
  String get poundsAbbreviation => 'libras';

  @override
  String get kilogramsAbbreviation => 'kg';

  @override
  String get byText => 'por';

  @override
  String get closeText => 'Fechar';

  @override
  String get usUnitsLabel => 'Unidades dos EUA';

  @override
  String get metricUnitsLabel => 'Unidades Métricas';

  @override
  String get bmiCalculationExplanationTitle => 'Explicação do Cálculo do IMC';

  @override
  String get bmiCalculationExplanationDialogTitle => 'Sobre o Cálculo do IMC';

  @override
  String get bodyMassIndexExplanation =>
      'O Índice de Massa Corporal (IMC) é uma medida padrão utilizada para avaliar o estado de peso de uma pessoa. Este aplicativo utiliza as seguintes fórmulas reconhecidas internacionalmente:';

  @override
  String get metricFormulaHeading => '1. Fórmula Métrica:';

  @override
  String get metricFormulaDetail => 'IMC = peso (kg) / altura² (m)';

  @override
  String get usUnitsFormulaHeading => '2. Fórmula em Unidades dos EUA:';

  @override
  String get usUnitsFormulaDetail =>
      'IMC = (peso (libras) × 703) / altura² (pol)';

  @override
  String get sourcesHeading => 'Fontes:';

  @override
  String get whoSource => 'Organização Mundial da Saúde (OMS)';

  @override
  String get cdcSource => 'Centers for Disease Control and Prevention (CDC)';

  @override
  String get heyThereGreeting => 'Olá! 👋';

  @override
  String get supportDialogTitle => 'Apoiar o Desenvolvimento';

  @override
  String get aboutDevIntro =>
      'Sou um desenvolvedor de software freelancer apaixonado, que adora criar soluções gratuitas e abertas para todos. No entanto, desenvolver e manter esses aplicativos requer tempo e recursos.';

  @override
  String get supportRequest =>
      'Se você gosta deste aplicativo e quer apoiar sua melhoria, bem como a criação de mais ferramentas como esta, considere me oferecer um café. Seu apoio é muito apreciado!';

  @override
  String get supportWithCoffeeButton => 'Apoiar com um Café';

  @override
  String get underweightBmiExplanation =>
      'Um IMC abaixo de 18,5 indica que você está abaixo do peso. Possíveis causas incluem:\n- Ingestão calórica insuficiente\n- Metabolismo alto\n- Certas condições médicas\n\nRecomendações:\n• Aumente a ingestão de calorias com alimentos ricos em nutrientes\n• Adicione gorduras saudáveis à sua dieta (nozes, abacate, azeite)\n• Considere treinamento de força para desenvolver massa muscular\n• Consulte um profissional de saúde para descartar condições subjacentes\n\nAviso:\nEstas informações são apenas para conhecimento geral e não substituem o aconselhamento médico profissional.\nConsulte um profissional de saúde para obter um diagnóstico e tratamento precisos.';

  @override
  String get normalBmiExplanation =>
      'Um IMC entre 18,5 e 24,9 indica um peso saudável, o que geralmente significa:\n- Seu peso está proporcional à sua altura\n- Menor risco de problemas de saúde relacionados ao peso\n- Faixa ideal para a maioria dos adultos\n\nRecomendações:\n• Mantenha uma dieta equilibrada\n• Pratique exercícios regularmente (pelo menos 150 minutos por semana)\n• Faça check-ups de saúde regulares\n• Continue com hábitos saudáveis de estilo de vida\n\nAviso:\nEstas informações são apenas para conhecimento geral e não substituem o aconselhamento médico profissional.\nConsulte um profissional de saúde para obter um diagnóstico e tratamento precisos.';

  @override
  String get overweightBmiExplanation =>
      'Um IMC entre 25 e 29,9 indica sobrepeso, o que pode levar a:\n- Maior risco de doenças cardíacas\n- Pressão arterial mais alta\n- Aumento do risco de diabetes tipo 2\n\nRecomendações:\n• Reduza moderadamente a ingestão de calorias\n• Aumente a atividade física\n• Fique atento ao controle de porções\n• Considere consultar um nutricionista ou dietista\n\nAviso:\nEstas informações são apenas para conhecimento geral e não substituem o aconselhamento médico profissional.\nConsulte um profissional de saúde para obter um diagnóstico e tratamento precisos.';

  @override
  String get obesityBmiExplanation =>
      'Um IMC de 30 ou mais indica obesidade, aumentando significativamente o risco de:\n- Doenças cardíacas\n- Diabetes tipo 2\n- Pressão arterial alta\n- Certos tipos de câncer\n\nRecomendações:\n• Consulte um profissional de saúde para um plano estruturado de perda de peso\n• Participe de um programa regular de exercícios\n• Considere suporte profissional (nutricionista, terapeuta)\n• Monitore o progresso com check-ups regulares\n\nAviso:\nEstas informações são apenas para conhecimento geral e não substituem o aconselhamento médico profissional.\nConsulte um profissional de saúde para obter um diagnóstico e tratamento precisos.';

  @override
  String get inchesLessThanTwelveError =>
      'As polegadas devem ser menores que 12';

  @override
  String get thankyouTitle => 'Obrigado!';

  @override
  String get thankyouMessage =>
      'Seu apoio significa muito e ajuda a manter este aplicativo gratuito para todos. Obrigado por ser incrível!';

  @override
  String get canceledTitle => 'Sem Problema!';

  @override
  String get canceledMessage =>
      'Obrigado por considerar. Sinta-se à vontade para apoiar o desenvolvimento no futuro, se desejar!';

  @override
  String get errorMessage => 'Ocorreu um erro. Por favor, tente novamente.';
}
