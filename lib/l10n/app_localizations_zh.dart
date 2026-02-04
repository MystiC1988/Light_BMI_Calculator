// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get underweightLabel => '体重过轻';

  @override
  String get normalLabel => '正常';

  @override
  String get overweightLabel => '超重';

  @override
  String get obeseLabel => '肥胖';

  @override
  String get heightLabel => '身高:';

  @override
  String get bmiLabel => 'BMI:';

  @override
  String get feetAbbreviation => '英尺';

  @override
  String get inchesAbbreviation => '英寸';

  @override
  String get centimetresAbbreviation => '厘米';

  @override
  String get weightLabel => '体重:';

  @override
  String get poundsAbbreviation => '磅';

  @override
  String get kilogramsAbbreviation => '千克';

  @override
  String get byText => '由';

  @override
  String get closeText => '关闭';

  @override
  String get usUnitsLabel => '美国单位';

  @override
  String get metricUnitsLabel => '公制单位';

  @override
  String get bmiCalculationExplanationTitle => 'BMI 计算说明';

  @override
  String get bmiCalculationExplanationDialogTitle => '关于 BMI 计算';

  @override
  String get bodyMassIndexExplanation =>
      '身体质量指数（BMI）是一种用于评估个人体重状况的常用指标。本应用使用以下国际公认的公式：';

  @override
  String get metricFormulaHeading => '1. 公制公式:';

  @override
  String get metricFormulaDetail => 'BMI = 体重 (千克) / 身高² (米)';

  @override
  String get usUnitsFormulaHeading => '2. 美国单位公式:';

  @override
  String get usUnitsFormulaDetail => 'BMI = (体重 (磅) × 703) / 身高² (英寸)';

  @override
  String get sourcesHeading => '来源:';

  @override
  String get whoSource => '世界卫生组织 (WHO)';

  @override
  String get cdcSource => '美国疾控中心 (CDC)';

  @override
  String get heyThereGreeting => '你好！👋';

  @override
  String get supportDialogTitle => '支持开发';

  @override
  String get aboutDevIntro =>
      '我是一名热情的自由软件开发者，喜欢为所有人创建免费且开放的解决方案。然而，开发和维护这些应用需要投入时间和资源。';

  @override
  String get supportRequest =>
      '如果您喜欢这个应用并希望支持它的改进以及更多工具的开发，请考虑为我买杯咖啡。非常感谢您的支持！';

  @override
  String get supportWithCoffeeButton => '支持一杯咖啡';

  @override
  String get underweightBmiExplanation =>
      '当 BMI 低于 18.5 时表示体重过轻。可能的原因包括：\n- 摄入热量不足\n- 新陈代谢过快\n- 某些医疗状况\n\n建议：\n• 增加富含营养的食物摄入\n• 在饮食中添加健康脂肪（坚果、牛油果、橄榄油）\n• 考虑力量训练以增加肌肉质量\n• 咨询医疗专业人员以排除潜在病症\n\n免责声明：\n此信息仅供一般参考，不能替代专业的医疗建议。\n如需准确的诊断与治疗，请咨询医疗专业人士。';

  @override
  String get normalBmiExplanation =>
      '当 BMI 介于 18.5 至 24.9 之间时，表示体重正常。通常意味着：\n- 体重与身高成正比\n- 与体重相关的健康风险较低\n- 对大多数成年人而言是理想范围\n\n建议：\n• 维持均衡饮食\n• 定期进行运动（每周至少 150 分钟）\n• 定期进行健康检查\n• 继续保持健康的生活方式\n\n免责声明：\n此信息仅供一般参考，不能替代专业的医疗建议。\n如需准确的诊断与治疗，请咨询医疗专业人士。';

  @override
  String get overweightBmiExplanation =>
      '当 BMI 介于 25 至 29.9 之间时，表示超重，可能导致：\n- 心脏病风险增加\n- 血压升高\n- 2 型糖尿病风险增加\n\n建议：\n• 适度减少热量摄入\n• 增加身体活动\n• 注意控制食物份量\n• 考虑咨询营养师或营养顾问\n\n免责声明：\n此信息仅供一般参考，不能替代专业的医疗建议。\n如需准确的诊断与治疗，请咨询医疗专业人士。';

  @override
  String get obesityBmiExplanation =>
      '当 BMI ≥ 30 时，表示肥胖，显著增加以下风险：\n- 心脏病\n- 2 型糖尿病\n- 高血压\n- 某些类型的癌症\n\n建议：\n• 咨询医疗专业人员，制定系统的减重计划\n• 定期进行锻炼\n• 考虑专业支持（营养师、治疗师）\n• 通过定期检查来监测进展\n\n免责声明：\n此信息仅供一般参考，不能替代专业的医疗建议。\n如需准确的诊断与治疗，请咨询医疗专业人士。';

  @override
  String get inchesLessThanTwelveError => '英寸必须小于12';

  @override
  String get thankyouTitle => '谢谢！';

  @override
  String get thankyouMessage => '您的支持意义重大，帮助保持此应用对所有人免费。感谢您的支持！';

  @override
  String get canceledTitle => '没问题！';

  @override
  String get canceledMessage => '感谢您的考虑。如果您愿意，请随时支持未来的开发！';

  @override
  String get errorMessage => '发生错误。请再试一次。';
}
