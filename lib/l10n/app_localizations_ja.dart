// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get underweightLabel => '低体重';

  @override
  String get normalLabel => '標準';

  @override
  String get overweightLabel => '過体重';

  @override
  String get obeseLabel => '肥満';

  @override
  String get heightLabel => '身長:';

  @override
  String get bmiLabel => 'BMI:';

  @override
  String get feetAbbreviation => 'ft';

  @override
  String get inchesAbbreviation => 'in';

  @override
  String get centimetresAbbreviation => 'cm';

  @override
  String get weightLabel => '体重:';

  @override
  String get poundsAbbreviation => 'ポンド';

  @override
  String get kilogramsAbbreviation => 'kg';

  @override
  String get byText => '作成者';

  @override
  String get closeText => '閉じる';

  @override
  String get usUnitsLabel => '米国式';

  @override
  String get metricUnitsLabel => 'メートル法';

  @override
  String get bmiCalculationExplanationTitle => 'BMI 計算の説明';

  @override
  String get bmiCalculationExplanationDialogTitle => 'BMI 計算について';

  @override
  String get bodyMassIndexExplanation =>
      'ボディマス指数（BMI）は、個人の体重状況を評価するための標準的な指標です。このアプリは、国際的に認められた以下の式を使用しています:';

  @override
  String get metricFormulaHeading => '1. メートル法の式:';

  @override
  String get metricFormulaDetail => 'BMI = 体重 (kg) / 身長² (m)';

  @override
  String get usUnitsFormulaHeading => '2. 米国式の式:';

  @override
  String get usUnitsFormulaDetail => 'BMI = (体重 (ポンド) × 703) / 身長² (インチ)';

  @override
  String get sourcesHeading => '出典:';

  @override
  String get whoSource => '世界保健機関 (WHO)';

  @override
  String get cdcSource => 'アメリカ疾病予防管理センター (CDC)';

  @override
  String get heyThereGreeting => 'こんにちは！👋';

  @override
  String get supportDialogTitle => '開発を支援';

  @override
  String get aboutDevIntro =>
      '私はフリーランスのソフトウェア開発者で、無料でオープンなソリューションを作ることに情熱を注いでいます。ただし、これらのアプリを開発・維持するには時間とリソースが必要です。';

  @override
  String get supportRequest =>
      'もしこのアプリを気に入っていただけたら、さらなる改善や追加ツールの開発を支援するためにコーヒーをおごっていただけると幸いです。ご支援に心から感謝いたします！';

  @override
  String get supportWithCoffeeButton => 'コーヒーで支援';

  @override
  String get underweightBmiExplanation =>
      'BMI が 18.5 未満の場合、低体重を示します。考えられる原因には以下があります:\n- カロリー摂取量の不足\n- 代謝が高い\n- 何らかの疾患\n\n推奨事項:\n• 栄養価の高い食品を取り入れてカロリー摂取量を増やす\n• ナッツ、アボカド、オリーブオイルなど健康的な脂質を食事に加える\n• 筋肉量を増やすため、筋力トレーニングを検討\n• 潜在的な疾患を除外するために医療専門家に相談\n\n免責事項:\n本情報は一般的な参考用であり、専門的な医療アドバイスの代替ではありません。\n正確な診断と治療については医療専門家にご相談ください。';

  @override
  String get normalBmiExplanation =>
      'BMI が 18.5 から 24.9 の場合、標準的な体重を示します。一般的には以下を意味します:\n- 身長に対して体重が適切\n- 体重関連の健康リスクが低い\n- 多くの成人にとって最適な範囲\n\n推奨事項:\n• バランスの取れた食事を続ける\n• 定期的に運動する（週に少なくとも 150 分）\n• 定期検診を受ける\n• 健康的な生活習慣を継続する\n\n免責事項:\n本情報は一般的な参考用であり、専門的な医療アドバイスの代替ではありません。\n正確な診断と治療については医療専門家にご相談ください。';

  @override
  String get overweightBmiExplanation =>
      'BMI が 25 から 29.9 の場合、過体重を示します。以下のリスクが高まる可能性があります:\n- 心臓病のリスク\n- 高血圧\n- 2 型糖尿病のリスク\n\n推奨事項:\n• カロリー摂取量を適度に減らす\n• 運動量を増やす\n• 食事の量を管理する\n• 栄養士または管理栄養士への相談を検討する\n\n免責事項:\n本情報は一般的な参考用であり、専門的な医療アドバイスの代替ではありません。\n正確な診断と治療については医療専門家にご相談ください。';

  @override
  String get obesityBmiExplanation =>
      'BMI が 30 以上の場合、肥満を示します。これにより以下のリスクが大幅に高まります:\n- 心臓病\n- 2 型糖尿病\n- 高血圧\n- 一部のがん\n\n推奨事項:\n• 計画的な減量プランのために医療専門家に相談\n• 定期的な運動プログラムに参加する\n• プロのサポートを検討する（栄養士、セラピストなど）\n• 定期的な検診で進捗を確認する\n\n免責事項:\n本情報は一般的な参考用であり、専門的な医療アドバイスの代替ではありません。\n正確な診断と治療については医療専門家にご相談ください。';

  @override
  String get inchesLessThanTwelveError => 'インチは12未満にしてください';

  @override
  String get thankyouTitle => 'ありがとうございます！';

  @override
  String get thankyouMessage =>
      'ご支援いただき、誠にありがとうございます。このアプリを皆様に無料で提供し続けるための大きな助けとなります。';

  @override
  String get canceledTitle => '問題ありません！';

  @override
  String get canceledMessage => 'ご検討いただきありがとうございます。今後、開発を支援していただけると幸いです。';

  @override
  String get errorMessage => 'エラーが発生しました。もう一度お試しください。';
}
